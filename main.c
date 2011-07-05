/*******************************************************************************
* File Name          : main.c
* Author             : POWER AVR
* Date First Issued  : 08/08/2008
* Description        : Main program body
********************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x_lib.h"
#include <stdio.h>
#include <rtl.h>



/************************************************************************

   Copyright 2008 Mark Pictor

This file is part of RS274NGC.

RS274NGC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

RS274NGC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with RS274NGC.  If not, see <http://www.gnu.org/licenses/>.

This software is based on software that was produced by the National
Institute of Standards and Technology (NIST).

************************************************************************/

#include "rs274ngc.h"
#include "rs274ngc_return.h"
#include <stdio.h>                                /* gets, etc. */
#include <stdlib.h>                               /* exit       */
#include <string.h>                               /* strcpy     */

extern CANON_TOOL_TABLE _tools[];                 /* in canon.cc */
extern int _tool_max;                             /* in canon.cc */
extern char _parameter_file_name[];               /* in canon.cc */

FILE * _outfile;                                  /* where to print, set in main */

#define Line_Length 256

/*

This file contains the source code for an emulation of using the six-axis
rs274 interpreter from the EMC system.

*/

/*********************************************************************/

/* report_error

Returned Value: none

Side effects: an error message is printed on stderr

Called by:
interpret_from_file
interpret_from_keyboard
main

This

1. calls rs274ngc_error_text to get the text of the error message whose
code is error_code and prints the message,

2. calls rs274ngc_line_text to get the text of the line on which the
error occurred and prints the text, and

3. if print_stack is on, repeatedly calls rs274ngc_stack_name to get
the names of the functions on the function call stack and prints the
names. The first function named is the one that sent the error
message.

*/

void report_error(                                /* ARGUMENTS                            */
int error_code,                                   /* the code number of the error message */
int print_stack)                                  /* print stack if ON, otherwise not     */
{
    char buffer[RS274NGC_TEXT_SIZE];
    int k;

    rs274ngc_error_text(error_code, buffer, 5);   /* for coverage of code */
    rs274ngc_error_text(error_code, buffer, RS274NGC_TEXT_SIZE);
    fprintf(stderr, "%s\r\n",
        ((buffer[0] IS 0) ? "Unknown error, bad error code" : buffer));
    rs274ngc_line_text(buffer, RS274NGC_TEXT_SIZE);
    fprintf(stderr, "%s\r\n", buffer);
    if (print_stack IS ON)
    {
        for (k SET_TO 0; ; k++)
        {
            rs274ngc_stack_name(k, buffer, RS274NGC_TEXT_SIZE);
            if (buffer[0] ISNT 0)
                fprintf(stderr, "%s\r\n", buffer);
            else
                break;
        }
    }
}


/***********************************************************************/

/* interpret_from_keyboard

Returned Value: int (0)

Side effects:
Lines of NC code entered by the user are interpreted.

Called by:
interpret_from_file
main

This prompts the user to enter a line of rs274 code. When the user
hits <enter> at the end of the line, the line is executed.
Then the user is prompted to enter another line.

Any canonical commands resulting from executing the line are printed
on the monitor (stdout).  If there is an error in reading or executing
the line, an error message is printed on the monitor (stderr).

To exit, the user must enter "quit" (followed by a carriage return).

*/

int interpret_from_keyboard(                      /* ARGUMENTS                 */
int block_delete,                                 /* switch which is ON or OFF */
int print_stack)                                  /* option which is ON or OFF */
{
    char line[RS274NGC_TEXT_SIZE];
    int status;
	u16 i=0;
	char Buffer[Line_Length];
	u16 count=0;

    for(; ;)
    {
        printf("READ => ");
		//这部分处理串口数据据的接收,以%号做为接收数据终止字符
		while(1)
		{	
			if(USART_GetFlagStatus(USART1,USART_IT_RXNE)==SET)
			{	      
				i = USART_ReceiveData(USART1);
				if(count<Line_Length)
				{
					if(i=='%')
					{
						printf("%s\r\n",Buffer);	
						strcpy(line,Buffer);
						for(count=0;count<Line_Length;count++)			
						{
							Buffer[count]='\0';
						}
						count=0;
						break;
					}
					else
					{
						Buffer[count++]=i;
					}
				}
			}
		}
        if (strcmp (line, "quit") IS 0)
            return 0;
        status SET_TO rs274ngc_read(line);
        if ((status IS RS274NGC_EXECUTE_FINISH) AND (block_delete IS ON));
        else if (status IS RS274NGC_ENDFILE);
        else if ((status ISNT RS274NGC_EXECUTE_FINISH) AND
            (status ISNT RS274NGC_OK))
            report_error(status, print_stack);
        else
        {
            status SET_TO rs274ngc_execute();    
            if ((status IS RS274NGC_EXIT) OR
                (status IS RS274NGC_EXECUTE_FINISH));
            else if (status ISNT RS274NGC_OK)
                report_error(status, print_stack);
        }
    }
}


/*********************************************************************/

/* interpret_from_file

Returned Value: int (0 or 1)
If any of the following errors occur, this returns 1.
Otherwise, it returns 0.
1. rs274ngc_read returns something other than RS274NGC_OK or
RS274NGC_EXECUTE_FINISH, no_stop is off, and the user elects
not to continue.
2. rs274ngc_execute returns something other than RS274NGC_OK,
EXIT, or RS274NGC_EXECUTE_FINISH, no_stop is off, and the user
elects not to continue.

Side Effects:
An open NC-program file is interpreted.

Called By:
main

This emulates the way the EMC system uses the interpreter.

If the do_next argument is 1, this goes into MDI mode if an error is
found. In that mode, the user may (1) enter code or (2) enter "quit" to
get out of MDI. Once out of MDI, this asks the user whether to continue
interpreting the file.

If the do_next argument is 0, an error does not stop interpretation.

If the do_next argument is 2, an error stops interpretation.

*/

int interpret_from_file(                          /* ARGUMENTS                  */
int do_next,                                      /* what to do if error        */
int block_delete,                                 /* switch which is ON or OFF  */
int print_stack)                                  /* option which is ON or OFF  */
{
    int status;
    char line[RS274NGC_TEXT_SIZE];

    for(; ;)
    {
        status SET_TO rs274ngc_read(NULL);
        if ((status IS RS274NGC_EXECUTE_FINISH) AND (block_delete IS ON))
            continue;
        else if (status IS RS274NGC_ENDFILE)
            break;
        if ((status ISNT RS274NGC_OK) AND         // should not be EXIT
            (status ISNT RS274NGC_EXECUTE_FINISH))
        {
            report_error(status, print_stack);
            if ((status IS NCE_FILE_ENDED_WITH_NO_PERCENT_SIGN) OR
                (do_next IS 2))                   /* 2 means stop */
            {
                status SET_TO 1;
                break;
            }
            else if (do_next IS 1)                /* 1 means MDI */
            {
                fprintf(stderr, "starting MDI\r\n");
                interpret_from_keyboard(block_delete, print_stack);
                fprintf(stderr, "continue program? y/n =>");
                gets(line);
                if (line[0] ISNT 'y')
                {
                    status SET_TO 1;
                    break;
                }
                else
                    continue;
            }
            else                                  /* if do_next IS 0 -- 0 means continue */
                continue;
        }
        status SET_TO rs274ngc_execute();
        if ((status ISNT RS274NGC_OK) AND
            (status ISNT RS274NGC_EXIT) AND
            (status ISNT RS274NGC_EXECUTE_FINISH))
        {
            report_error(status, print_stack);
            status SET_TO 1;
            if (do_next IS 1)                     /* 1 means MDI */
            {
                fprintf(stderr, "starting MDI\r\n");
                interpret_from_keyboard(block_delete, print_stack);
                fprintf(stderr, "continue program? y/n =>");
                gets(line);
                if (line[0] ISNT 'y')
                    break;
            }
            else if (do_next IS 2)                /* 2 means stop */
                break;
        }
        else if (status IS RS274NGC_EXIT)
            break;
    }
    return ((status IS 1) ? 1 : 0);
}


/************************************************************************/

/* read_tool_file

Returned Value: int
If any of the following errors occur, this returns 1.
Otherwise, it returns 0.
1. The file named by the user cannot be opened.
2. No blank line is found.
3. A line of data cannot be read.
4. A tool slot number is less than 1 or >= _tool_max

Side Effects:
Values in the tool table of the machine setup are changed,
as specified in the file.

Called By: main

Tool File Format
-----------------
Everything above the first blank line is read and ignored, so any sort
of header material may be used.

Everything after the first blank line should be data. Each line of
data should have four or more items separated by white space. The four
required items are slot, tool id, tool length offset, and tool diameter.
Other items might be the holder id and tool description, but these are
optional and will not be read. Here is a sample line:

20  1419  4.299  1.0   1 inch carbide end mill

The tool_table is indexed by slot number.

*/

int read_tool_file(                               /* ARGUMENTS         */
char * file_name)                                 /* name of tool file */
{
//    FILE * tool_file_port;
//    char buffer[1000];
//    int slot;
//    int tool_id;
//    double offset;
//    double diameter;
//
//    if (file_name[0] IS 0)                        /* ask for name if given name is empty string */
//    {
//        fprintf(stderr, "name of tool file => ");
//        gets(buffer);
//        tool_file_port SET_TO fopen(buffer, "r");
//    }
//    else
//        tool_file_port SET_TO fopen(file_name, "r");
//    if (tool_file_port IS NULL)
//    {
//        fprintf(stderr, "Cannot open %s\r\n",
//            ((file_name[0] IS 0) ? buffer : file_name));
//        return 1;
//    }
//    for(;;)                                       /* read and discard header, checking for blank line */
//    {
//        if (fgets(buffer, 1000, tool_file_port) IS NULL)
//        {
//            fprintf(stderr, "Bad tool file format\r\n");
//            return 1;
//        }
//        else if (buffer[0] IS '\n')
//            break;
//    }
//
//    for (slot SET_TO 0; slot <= _tool_max; slot++)/* initialize */
//    {
//        _tools[slot].id SET_TO -1;
//        _tools[slot].length SET_TO 0;
//        _tools[slot].diameter SET_TO 0;
//    }
//    for (; (fgets(buffer, 1000, tool_file_port) ISNT NULL); )
//    {
//        if (sscanf(buffer, "%d %d %lf %lf", &slot,
//            &tool_id, &offset, &diameter) < 4)
//        {
//            fprintf(stderr, "Bad input line \"%s\" in tool file\r\n", buffer);
//            return 1;
//        }
//        if ((slot < 0) OR (slot > _tool_max))     /* zero and max both OK */
//        {
//            fprintf(stderr, "Out of range tool slot number %d\r\n", slot);
//            return 1;
//        }
//        _tools[slot].id SET_TO tool_id;
//        _tools[slot].length SET_TO offset;
//        _tools[slot].diameter SET_TO diameter;
        _tools[5].id SET_TO 5;
        _tools[5].length SET_TO 1.5;
        _tools[5].diameter SET_TO 0.25;

//    }
//    fclose(tool_file_port);
    return 0;
}


/************************************************************************/

/* designate_parameter_file

Returned Value: int
If any of the following errors occur, this returns 1.
Otherwise, it returns 0.
1. The file named by the user cannot be opened.

Side Effects:
The name of a parameter file given by the user is put in the
file_name string.

Called By: main

*/

int designate_parameter_file(char * file_name)
{
    FILE * test_port;

    fprintf(stderr, "name of parameter file => ");
    gets(file_name);
    test_port SET_TO fopen(file_name, "r");
    if (test_port IS NULL)
    {
        fprintf(stderr, "Cannot open %s\r\n", file_name);
        return 1;
    }
    fclose(test_port);
    return 0;
}


/************************************************************************/

/* adjust_error_handling

Returned Value: int (0)

Side Effects:
The values of print_stack and do_next are set.

Called By: main

This function allows the user to set one or two aspects of error handling.

By default the driver does not print the function stack in case of error.
This function always allows the user to turn stack printing on if it is off
or to turn stack printing off if it is on.

When interpreting from the keyboard, the driver always goes ahead if there
is an error.

When interpreting from a file, the default behavior is to stop in case of
an error. If the user is interpreting from a file (indicated by args being
2 or 3), this lets the user change what it does on an error.

If the user has not asked for output to a file (indicated by args being 2),
the user can choose any of three behaviors in case of an error (1) continue,
(2) stop, (3) go into MDI mode. This function allows the user to cycle among
the three.

If the user has asked for output to a file (indicated by args being 3),
the user can choose any of two behaviors in case of an error (1) continue,
(2) stop. This function allows the user to toggle between the two.

*/

int adjust_error_handling(
int args,
int * print_stack,
int * do_next)
{
    char buffer[80];
    int choice;

    for(;;)
    {
        fprintf(stderr, "enter a number:\r\n");
        fprintf(stderr, "1 = done with error handling\r\n");
        fprintf(stderr, "2 = %sprint stack on error\r\n",
            ((*print_stack IS ON) ? "do not " : ""));
        if (args IS 3)
        {
            if (*do_next IS 0)                    /* 0 means continue */
                fprintf(stderr,
                    "3 = stop on error (do not continue)\r\n");
            else                                  /* if do_next IS 2 -- 2 means stopping on error */
                fprintf(stderr,
                    "3 = continue on error (do not stop)\r\n");
        }
        else if (args IS 2)
        {
            if (*do_next IS 0)                    /* 0 means continue */
                fprintf(stderr,
                    "3 = mdi on error (do not continue or stop)\r\n");
            else if (*do_next IS 1)               /* 1 means MDI */
                fprintf(stderr,
                        "3 = stop on error (do not mdi or continue)\r\n");
            else                                  /* if do_next IS 2 -- 2 means stopping on error */
                fprintf(stderr,
                    "3 = continue on error (do not stop or mdi)\r\n");
        }
        fprintf(stderr, "enter choice => ");
        gets(buffer);
        if (sscanf(buffer, "%d", &choice) ISNT 1)
            continue;
        if (choice IS 1)
            break;
        else if (choice IS 2)
            *print_stack SET_TO ((*print_stack IS OFF) ? ON : OFF);
        else if ((choice IS 3) AND (args IS 3))
            *do_next SET_TO ((*do_next IS 0) ? 2 : 0);
        else if ((choice IS 3) AND (args IS 2))
            *do_next SET_TO ((*do_next IS 2) ? 0 : (*do_next + 1));
    }
    return 0;
}


   /***********************************************************************/


/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
ErrorStatus HSEStartUpStatus;

/* Private function prototypes -----------------------------------------------*/
void RCC_Configuration(void);
void NVIC_Configuration(void);
void GPIO_Configuration(void);
void USART_Configuration(void);

/* Private functions ---------------------------------------------------------*/





/************************************************************************/

/* main

The executable exits with either 0 (under all conditions not listed
below) or 1 (under the following conditions):
1. A fatal error occurs while interpreting from a file.
2. Read_tool_file fails.
3. An error occurs in rs274ngc_init.

***********************************************************************

Here are three ways in which the rs274abc executable may be called.
Any other sort of call to the executable will cause an error message
to be printed and the interpreter will not run. Other executables
may be called similarly.

1. If the rs274abc stand-alone executable is called with no arguments,
input is taken from the keyboard, and an error in the input does not
cause the rs274abc executable to exit.

EXAMPLE:

1A. To interpret from the keyboard, enter:

rs274abc

***********************************************************************

2. If the executable is called with one argument, the argument is
taken to be the name of an NC file and the file is interpreted as
described in the documentation of interpret_from_file.

EXAMPLES:

2A. To interpret the file "cds.abc" and read the results on the
screen, enter:

rs274abc cds.abc

2B. To interpret the file "cds.abc" and print the results in the file
"cds.prim", enter:

rs274abc cds.abc > cds.prim

***********************************************************************

Whichever way the executable is called, this gives the user several
choices before interpretation starts

1 = start interpreting
2 = choose parameter file
3 = read tool file ...
4 = turn block delete switch ON
5 = adjust error handling...

Interpretation starts when option 1 is chosen. Until that happens, the
user is repeatedly given the five choices listed above.  Item 4
toggles between "turn block delete switch ON" and "turn block delete
switch OFF".  See documentation of adjust_error_handling regarding
what option 5 does.

User instructions are printed to stderr (with fprintf) so that output
can be redirected to a file. When output is redirected and user
instructions are printed to stdout (with printf), the instructions get
redirected and the user does not see them.

*/

/*******************************************************************************
* Function Name  : main
* Description    : Main program.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/

int main(int argc, char ** argv)
{  
/******************************RS274NGC之变量声明部分开始******************************/
	int status;
	int choice;
	int do_next;                                  /* 0=continue, 1=mdi, 2=stop */
	int block_delete;
	char buffer[80];
	int tool_flag;
	int gees[RS274NGC_ACTIVE_G_CODES];
	int ems[RS274NGC_ACTIVE_M_CODES];
	double sets[RS274NGC_ACTIVE_SETTINGS];
	char default_name[] SET_TO "rs274ngc.var";
	int print_stack;
	u16 i;
/******************************RS274NGC之变量声明部分结束******************************/	
	
	
   
   
#ifdef DEBUG
  debug();
#endif

	/* Configure the system clocks */
	RCC_Configuration();
	
	/* NVIC Configuration */
	NVIC_Configuration();
	
	/* Configure the GPIOs */
	GPIO_Configuration();
	
	/* Configure the USART1 */
	USART_Configuration();
	
	
	//printf("\r\n Welcome to www.PowerAVR.com \r\n");
	//printf("\r\n Please Input Character From Keyboard \r\n");

    
/******************************RS274/NGC源码的main函数开始******************************/
  	/*
	if (argc > 3)
	{
	    fprintf(stderr, "Usage \"%s\"\r\n", argv[0]);
	    fprintf(stderr, "   or \"%s <input file>\"\r\n", argv[0]);
	    fprintf(stderr, "   or \"%s <input file> <output file>\"\r\n", argv[0])
	    //exit(1);
		return 1;
	}
	*/
	buffer[0]='1';
	i=0;
	choice=1;

	do_next SET_TO 2;                             /* 2=stop */
	block_delete SET_TO OFF;
	print_stack SET_TO OFF;
	tool_flag SET_TO 0;
	strcpy(_parameter_file_name, default_name);
	_outfile SET_TO stdout;                       /* may be reset below */
	
	for(; ;)
	{
	    fprintf(stderr, "\r\nenter a number:\r\n");
	    fprintf(stderr, "1 = start interpreting\r\n");
	    fprintf(stderr, "2 = choose parameter file ...\r\n");
	    fprintf(stderr, "3 = read tool file ...\r\n");
	    fprintf(stderr, "4 = turn block delete switch %s\r\n",
	        ((block_delete IS OFF) ? "ON" : "OFF"));
	    fprintf(stderr, "5 = adjust error handling...\r\n");
	    fprintf(stderr, "enter choice => 1\r\n");
	    //gets(buffer);
	    //if (sscanf(buffer, "%d", &choice) ISNT 1)
	    //    continue;
	    if (choice IS 1)
	        break;
	    else if (choice IS 2)
	    {
	        if (designate_parameter_file(_parameter_file_name) ISNT 0)
				return 1;
/*	            exit(1);*/
	    }
	    else if (choice IS 3)
	    {
	        if (read_tool_file("") ISNT 0)
				return 1;
/*	            exit(1);*/
	        tool_flag SET_TO 1;
	    }
	    else if (choice IS 4)
	        block_delete SET_TO ((block_delete IS OFF) ? ON : OFF);
	    else if (choice IS 5)
	        adjust_error_handling(argc, &print_stack, &do_next);
	}
	fprintf(stderr, "executing\r\n");
	if (tool_flag IS 0)
	{
	    if (read_tool_file("rs274ngc.tool_default") ISNT 0)
			return 1;
/*	        exit(1);*/
	}
	
	if (argc IS 3)
	{
	    _outfile SET_TO fopen(argv[2], "w");
	    if (_outfile IS NULL)
	    {
	        fprintf(stderr, "could not open output file %s\r\n", argv[2]);
			return 1;
/*	        exit(1);*/
	    }
	}
	
	if ((status SET_TO rs274ngc_init()) ISNT RS274NGC_OK)
	{
	    report_error(status, print_stack);
		return 1;
/*	    exit(1);*/
	}
	
//	if (argc IS 1)
//	    status SET_TO interpret_from_keyboard(block_delete, print_stack);
//	else                                          /* if (argc IS 2 or argc IS 3) */
//	{
	    status SET_TO rs274ngc_open(argv[1]);
	    if (status ISNT RS274NGC_OK)              /* do not need to close since not open */
	    {
	        report_error(status, print_stack);
			return 1;
/*	        exit(1);*/
	    }
	    status SET_TO interpret_from_file(do_next, block_delete, print_stack);
	    rs274ngc_file_name(buffer, 5);            /* called to exercise the function */
	    rs274ngc_file_name(buffer, 79);           /* called to exercise the function */
	    rs274ngc_close();
//	}
	rs274ngc_line_length();                       /* called to exercise the function */
	rs274ngc_sequence_number();                   /* called to exercise the function */
	rs274ngc_active_g_codes(gees);                /* called to exercise the function */
	rs274ngc_active_m_codes(ems);                 /* called to exercise the function */
	rs274ngc_active_settings(sets);               /* called to exercise the function */
	rs274ngc_exit();                              /* saves parameters */
	return(status);
/*	exit(status);*/
/******************************RS274/NGC源码的main函数结束******************************/
/*	while(1)
	{	
		if(USART_GetFlagStatus(USART1,USART_IT_RXNE)==SET)
		{	           
			i = USART_ReceiveData(USART1);
			printf("  %c",i&0xFF);
					
		}
	}*/
}

#ifdef  DEBUG
/*******************************************************************************
* Function Name  : assert_failed
* Description    : Reports the name of the source file and the source line number
*                  where the assert error has occurred.
* Input          : - file: pointer to the source file name
*                  - line: assert error line source number
* Output         : None
* Return         : None
*******************************************************************************/
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number */

  printf("\n\r Wrong parameter value detected on\r\n");
  printf("       file  %s\r\n", file);
  printf("       line  %d\r\n", line);
    
  /* Infinite loop */
  /* while (1)
  {
  } */
}
#endif

/*******************************************************************************
* Function Name  : RCC_Configuration
* Description    : Configures the different system clocks.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RCC_Configuration(void)
{
  /* RCC system reset(for debug purpose) */
  RCC_DeInit();

  /* Enable HSE */
  RCC_HSEConfig(RCC_HSE_ON);

  /* Wait till HSE is ready */
  HSEStartUpStatus = RCC_WaitForHSEStartUp();

  if(HSEStartUpStatus == SUCCESS)
  {
    /* HCLK = SYSCLK */
    RCC_HCLKConfig(RCC_SYSCLK_Div1); 
  
    /* PCLK2 = HCLK */
    RCC_PCLK2Config(RCC_HCLK_Div1); 

    /* PCLK1 = HCLK/2 */
    RCC_PCLK1Config(RCC_HCLK_Div2);

    /* Flash 2 wait state */
    FLASH_SetLatency(FLASH_Latency_2);
    /* Enable Prefetch Buffer */
    FLASH_PrefetchBufferCmd(FLASH_PrefetchBuffer_Enable);

    /* PLLCLK = 8MHz * 9 = 72 MHz */
    RCC_PLLConfig(RCC_PLLSource_HSE_Div1, RCC_PLLMul_9);

    /* Enable PLL */ 
    RCC_PLLCmd(ENABLE);

    /* Wait till PLL is ready */
    while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET)
    {
    }

    /* Select PLL as system clock source */
    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);

    /* Wait till PLL is used as system clock source */
    while(RCC_GetSYSCLKSource() != 0x08)
    {
    }
  }
   
  /* Enable USART1 and GPIOA clock */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1 | RCC_APB2Periph_GPIOA, ENABLE);
}

/*******************************************************************************
* Function Name  : NVIC_Configuration
* Description    : Configures Vector Table base location.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void NVIC_Configuration(void)
{
#ifdef  VECT_TAB_RAM  
  /* Set the Vector Table base location at 0x20000000 */ 
  NVIC_SetVectorTable(NVIC_VectTab_RAM, 0x0); 
#else  /* VECT_TAB_FLASH  */
  /* Set the Vector Table base location at 0x08000000 */ 
  NVIC_SetVectorTable(NVIC_VectTab_FLASH, 0x0);   
#endif
}

/*******************************************************************************
* Function Name  : GPIO_Configuration
* Description    : Configures the different GPIO ports.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void GPIO_Configuration(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;

  /* Configure USART1 Tx (PA.09) as alternate function push-pull */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
    
  /* Configure USART1 Rx (PA.10) as input floating */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
}

/*******************************************************************************
* Function Name  : USART_Configuration
* Description    : Configures the USART1.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USART_Configuration(void)
{
  USART_InitTypeDef USART_InitStructure;
  USART_ClockInitTypeDef  USART_ClockInitStructure;
/* USART1 configuration -----------------------------------------------

-------*/
  /* USART1 configured as follow:
        - BaudRate = 115200 baud  
        - Word Length = 8 Bits
        - One Stop Bit
        - No parity
        - Hardware flow control disabled (RTS and CTS signals)
        - Receive and transmit enabled
        - USART Clock disabled
        - USART CPOL: Clock is active low
        - USART CPHA: Data is captured on the middle 
        - USART LastBit: The clock pulse of the last data bit is not 

output to 
                         the SCLK pin
  */
USART_ClockInitStructure.USART_Clock = USART_Clock_Disable;
USART_ClockInitStructure.USART_CPOL = USART_CPOL_Low;
USART_ClockInitStructure.USART_CPHA = USART_CPHA_2Edge;
USART_ClockInitStructure.USART_LastBit = USART_LastBit_Disable;
/* Configure the USART1 synchronous paramters */
USART_ClockInit(USART1, &USART_ClockInitStructure);

USART_InitStructure.USART_BaudRate = 115200;
USART_InitStructure.USART_WordLength = USART_WordLength_8b;
USART_InitStructure.USART_StopBits = USART_StopBits_1;
USART_InitStructure.USART_Parity = USART_Parity_No ;
USART_InitStructure.USART_HardwareFlowControl = 

USART_HardwareFlowControl_None;


USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
/* Configure USART1 basic and asynchronous paramters */
USART_Init(USART1, &USART_InitStructure);
    
  /* Enable USART1 */
  USART_Cmd(USART1, ENABLE);
}

/*******************************************************************************
* Function Name  : fputc
* Description    : Retargets the C library printf function to the USART.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
int fputc(int ch, FILE *f)
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART */
  USART_SendData(USART1, (u8) ch);

  /* Loop until the end of transmission */
  while(USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET)
  {
  }

  return ch;
}

/******************* (C) COPYRIGHT 2007 STMicroelectronics *****END OF FILE****/

