#line 1 "main.c"





 

 
#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"














 

 



 
#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"














 

 







 
#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_conf.h"













 

 



 
#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_type.h"














 

 



 
 
typedef signed long  s32;
typedef signed short s16;
typedef signed char  s8;

typedef signed long  const sc32;   
typedef signed short const sc16;   
typedef signed char  const sc8;    

typedef volatile signed long  vs32;
typedef volatile signed short vs16;
typedef volatile signed char  vs8;

typedef volatile signed long  const vsc32;   
typedef volatile signed short const vsc16;   
typedef volatile signed char  const vsc8;    

typedef unsigned long  u32;
typedef unsigned short u16;
typedef unsigned char  u8;

typedef unsigned long  const uc32;   
typedef unsigned short const uc16;   
typedef unsigned char  const uc8;    

typedef volatile unsigned long  vu32;
typedef volatile unsigned short vu16;
typedef volatile unsigned char  vu8;

typedef volatile unsigned long  const vuc32;   
typedef volatile unsigned short const vuc16;   
typedef volatile unsigned char  const vuc8;    

typedef enum {FALSE = 0, TRUE = !FALSE} bool;

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

#line 73 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_type.h"

 
 
 



 
#line 22 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_conf.h"

 
 


 
 

 
 





 


 


 


 


 


 
#line 66 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_conf.h"

 


 



 


 


 
#line 90 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_conf.h"

 




 


 


 


 


 


 


 





 


 
#line 133 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_conf.h"

 
#line 141 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_conf.h"

 



 


 
#line 167 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_conf.h"



 
#line 27 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"
#line 28 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"
#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\cortexm3_macro.h"













 

 



 
#line 22 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\cortexm3_macro.h"

 
 
 
 
void __WFI(void);
void __WFE(void);
void __SEV(void);
void __ISB(void);
void __DSB(void);
void __DMB(void);
void __SVC(void);
u32 __MRS_CONTROL(void);
void __MSR_CONTROL(u32 Control);
u32 __MRS_PSP(void);
void __MSR_PSP(u32 TopOfProcessStack);
u32 __MRS_MSP(void);
void __MSR_MSP(u32 TopOfMainStack);
void __RESETPRIMASK(void);
void __SETPRIMASK(void);
u32 __READ_PRIMASK(void);
void __RESETFAULTMASK(void);
void __SETFAULTMASK(void);
u32 __READ_FAULTMASK(void);
void __BASEPRICONFIG(u32 NewPriority);
u32 __GetBASEPRI(void);
u16 __REV_HalfWord(u16 Data);
u32 __REV_Word(u32 Data);



 
#line 29 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"

 
 
 
 

 
typedef struct
{
  vu32 SR;
  vu32 CR1;
  vu32 CR2;
  vu32 SMPR1;
  vu32 SMPR2;
  vu32 JOFR1;
  vu32 JOFR2;
  vu32 JOFR3;
  vu32 JOFR4;
  vu32 HTR;
  vu32 LTR;
  vu32 SQR1;
  vu32 SQR2;
  vu32 SQR3;
  vu32 JSQR;
  vu32 JDR1;
  vu32 JDR2;
  vu32 JDR3;
  vu32 JDR4;
  vu32 DR;
} ADC_TypeDef;

 
typedef struct
{
  u32  RESERVED0;
  vu16 DR1;
  u16  RESERVED1;
  vu16 DR2;
  u16  RESERVED2;
  vu16 DR3;
  u16  RESERVED3;
  vu16 DR4;
  u16  RESERVED4;
  vu16 DR5;
  u16  RESERVED5;
  vu16 DR6;
  u16  RESERVED6;
  vu16 DR7;
  u16  RESERVED7;
  vu16 DR8;
  u16  RESERVED8;
  vu16 DR9;
  u16  RESERVED9;
  vu16 DR10;
  u16  RESERVED10; 
  vu16 RTCCR;
  u16  RESERVED11;
  vu16 CR;
  u16  RESERVED12;
  vu16 CSR;
  u16  RESERVED13[5];
  vu16 DR11;
  u16  RESERVED14;
  vu16 DR12;
  u16  RESERVED15;
  vu16 DR13;
  u16  RESERVED16;
  vu16 DR14;
  u16  RESERVED17;
  vu16 DR15;
  u16  RESERVED18;
  vu16 DR16;
  u16  RESERVED19;
  vu16 DR17;
  u16  RESERVED20;
  vu16 DR18;
  u16  RESERVED21;
  vu16 DR19;
  u16  RESERVED22;
  vu16 DR20;
  u16  RESERVED23;
  vu16 DR21;
  u16  RESERVED24;
  vu16 DR22;
  u16  RESERVED25;
  vu16 DR23;
  u16  RESERVED26;
  vu16 DR24;
  u16  RESERVED27;
  vu16 DR25;
  u16  RESERVED28;
  vu16 DR26;
  u16  RESERVED29;
  vu16 DR27;
  u16  RESERVED30;
  vu16 DR28;
  u16  RESERVED31;
  vu16 DR29;
  u16  RESERVED32;
  vu16 DR30;
  u16  RESERVED33; 
  vu16 DR31;
  u16  RESERVED34;
  vu16 DR32;
  u16  RESERVED35;
  vu16 DR33;
  u16  RESERVED36;
  vu16 DR34;
  u16  RESERVED37;
  vu16 DR35;
  u16  RESERVED38;
  vu16 DR36;
  u16  RESERVED39;
  vu16 DR37;
  u16  RESERVED40;
  vu16 DR38;
  u16  RESERVED41;
  vu16 DR39;
  u16  RESERVED42;
  vu16 DR40;
  u16  RESERVED43;
  vu16 DR41;
  u16  RESERVED44;
  vu16 DR42;
  u16  RESERVED45;    
} BKP_TypeDef;

 
typedef struct
{
  vu32 TIR;
  vu32 TDTR;
  vu32 TDLR;
  vu32 TDHR;
} CAN_TxMailBox_TypeDef;

typedef struct
{
  vu32 RIR;
  vu32 RDTR;
  vu32 RDLR;
  vu32 RDHR;
} CAN_FIFOMailBox_TypeDef;

typedef struct
{
  vu32 FR1;
  vu32 FR2;
} CAN_FilterRegister_TypeDef;

typedef struct
{
  vu32 MCR;
  vu32 MSR;
  vu32 TSR;
  vu32 RF0R;
  vu32 RF1R;
  vu32 IER;
  vu32 ESR;
  vu32 BTR;
  u32  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  u32  RESERVED1[12];
  vu32 FMR;
  vu32 FM1R;
  u32  RESERVED2;
  vu32 FS1R;
  u32  RESERVED3;
  vu32 FFA1R;
  u32  RESERVED4;
  vu32 FA1R;
  u32  RESERVED5[8];
  CAN_FilterRegister_TypeDef sFilterRegister[14];
} CAN_TypeDef;

 
typedef struct
{
  vu32 DR;
  vu8  IDR;
  u8   RESERVED0;
  u16  RESERVED1;
  vu32 CR;
} CRC_TypeDef;


 
typedef struct
{
  vu32 CR;
  vu32 SWTRIGR;
  vu32 DHR12R1;
  vu32 DHR12L1;
  vu32 DHR8R1;
  vu32 DHR12R2;
  vu32 DHR12L2;
  vu32 DHR8R2;
  vu32 DHR12RD;
  vu32 DHR12LD;
  vu32 DHR8RD;
  vu32 DOR1;
  vu32 DOR2;
} DAC_TypeDef;

 
typedef struct
{
  vu32 IDCODE;
  vu32 CR;	
}DBGMCU_TypeDef;

 
typedef struct
{
  vu32 CCR;
  vu32 CNDTR;
  vu32 CPAR;
  vu32 CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  vu32 ISR;
  vu32 IFCR;
} DMA_TypeDef;

 
typedef struct
{
  vu32 IMR;
  vu32 EMR;
  vu32 RTSR;
  vu32 FTSR;
  vu32 SWIER;
  vu32 PR;
} EXTI_TypeDef;

 
typedef struct
{
  vu32 ACR;
  vu32 KEYR;
  vu32 OPTKEYR;
  vu32 SR;
  vu32 CR;
  vu32 AR;
  vu32 RESERVED;
  vu32 OBR;
  vu32 WRPR;
} FLASH_TypeDef;

typedef struct
{
  vu16 RDP;
  vu16 USER;
  vu16 Data0;
  vu16 Data1;
  vu16 WRP0;
  vu16 WRP1;
  vu16 WRP2;
  vu16 WRP3;
} OB_TypeDef;

 
typedef struct
{
  vu32 BTCR[8];   
} FSMC_Bank1_TypeDef; 

typedef struct
{
  vu32 BWTR[7];
} FSMC_Bank1E_TypeDef;

typedef struct
{
  vu32 PCR2;
  vu32 SR2;
  vu32 PMEM2;
  vu32 PATT2;
  u32  RESERVED0;   
  vu32 ECCR2; 
} FSMC_Bank2_TypeDef;  

typedef struct
{
  vu32 PCR3;
  vu32 SR3;
  vu32 PMEM3;
  vu32 PATT3;
  u32  RESERVED0;   
  vu32 ECCR3; 
} FSMC_Bank3_TypeDef; 

typedef struct
{
  vu32 PCR4;
  vu32 SR4;
  vu32 PMEM4;
  vu32 PATT4;
  vu32 PIO4; 
} FSMC_Bank4_TypeDef; 

 
typedef struct
{
  vu32 CRL;
  vu32 CRH;
  vu32 IDR;
  vu32 ODR;
  vu32 BSRR;
  vu32 BRR;
  vu32 LCKR;
} GPIO_TypeDef;

typedef struct
{
  vu32 EVCR;
  vu32 MAPR;
  vu32 EXTICR[4];
} AFIO_TypeDef;

 
typedef struct
{
  vu16 CR1;
  u16  RESERVED0;
  vu16 CR2;
  u16  RESERVED1;
  vu16 OAR1;
  u16  RESERVED2;
  vu16 OAR2;
  u16  RESERVED3;
  vu16 DR;
  u16  RESERVED4;
  vu16 SR1;
  u16  RESERVED5;
  vu16 SR2;
  u16  RESERVED6;
  vu16 CCR;
  u16  RESERVED7;
  vu16 TRISE;
  u16  RESERVED8;
} I2C_TypeDef;

 
typedef struct
{
  vu32 KR;
  vu32 PR;
  vu32 RLR;
  vu32 SR;
} IWDG_TypeDef;

 
typedef struct
{
  vu32 ISER[2];
  u32  RESERVED0[30];
  vu32 ICER[2];
  u32  RSERVED1[30];
  vu32 ISPR[2];
  u32  RESERVED2[30];
  vu32 ICPR[2];
  u32  RESERVED3[30];
  vu32 IABR[2];
  u32  RESERVED4[62];
  vu32 IPR[15];
} NVIC_TypeDef;

typedef struct
{
  vuc32 CPUID;
  vu32 ICSR;
  vu32 VTOR;
  vu32 AIRCR;
  vu32 SCR;
  vu32 CCR;
  vu32 SHPR[3];
  vu32 SHCSR;
  vu32 CFSR;
  vu32 HFSR;
  vu32 DFSR;
  vu32 MMFAR;
  vu32 BFAR;
  vu32 AFSR;
} SCB_TypeDef;

 
typedef struct
{
  vu32 CR;
  vu32 CSR;
} PWR_TypeDef;

 
typedef struct
{
  vu32 CR;
  vu32 CFGR;
  vu32 CIR;
  vu32 APB2RSTR;
  vu32 APB1RSTR;
  vu32 AHBENR;
  vu32 APB2ENR;
  vu32 APB1ENR;
  vu32 BDCR;
  vu32 CSR;
} RCC_TypeDef;

 
typedef struct
{
  vu16 CRH;
  u16  RESERVED0;
  vu16 CRL;
  u16  RESERVED1;
  vu16 PRLH;
  u16  RESERVED2;
  vu16 PRLL;
  u16  RESERVED3;
  vu16 DIVH;
  u16  RESERVED4;
  vu16 DIVL;
  u16  RESERVED5;
  vu16 CNTH;
  u16  RESERVED6;
  vu16 CNTL;
  u16  RESERVED7;
  vu16 ALRH;
  u16  RESERVED8;
  vu16 ALRL;
  u16  RESERVED9;
} RTC_TypeDef;

 
typedef struct
{
  vu32 POWER;
  vu32 CLKCR;
  vu32 ARG;
  vu32 CMD;
  vuc32 RESPCMD;
  vuc32 RESP1;
  vuc32 RESP2;
  vuc32 RESP3;
  vuc32 RESP4;
  vu32 DTIMER;
  vu32 DLEN;
  vu32 DCTRL;
  vuc32 DCOUNT;
  vuc32 STA;
  vu32 ICR;
  vu32 MASK;
  u32  RESERVED0[2];
  vuc32 FIFOCNT;
  u32  RESERVED1[13];
  vu32 FIFO;
} SDIO_TypeDef;

 
typedef struct
{
  vu16 CR1;
  u16  RESERVED0;
  vu16 CR2;
  u16  RESERVED1;
  vu16 SR;
  u16  RESERVED2;
  vu16 DR;
  u16  RESERVED3;
  vu16 CRCPR;
  u16  RESERVED4;
  vu16 RXCRCR;
  u16  RESERVED5;
  vu16 TXCRCR;
  u16  RESERVED6;
  vu16 I2SCFGR;
  u16  RESERVED7;
  vu16 I2SPR;
  u16  RESERVED8;  
} SPI_TypeDef;

 
typedef struct
{
  vu32 CTRL;
  vu32 LOAD;
  vu32 VAL;
  vuc32 CALIB;
} SysTick_TypeDef;

 
typedef struct
{
  vu16 CR1;
  u16  RESERVED0;
  vu16 CR2;
  u16  RESERVED1;
  vu16 SMCR;
  u16  RESERVED2;
  vu16 DIER;
  u16  RESERVED3;
  vu16 SR;
  u16  RESERVED4;
  vu16 EGR;
  u16  RESERVED5;
  vu16 CCMR1;
  u16  RESERVED6;
  vu16 CCMR2;
  u16  RESERVED7;
  vu16 CCER;
  u16  RESERVED8;
  vu16 CNT;
  u16  RESERVED9;
  vu16 PSC;
  u16  RESERVED10;
  vu16 ARR;
  u16  RESERVED11;
  vu16 RCR;
  u16  RESERVED12;
  vu16 CCR1;
  u16  RESERVED13;
  vu16 CCR2;
  u16  RESERVED14;
  vu16 CCR3;
  u16  RESERVED15;
  vu16 CCR4;
  u16  RESERVED16;
  vu16 BDTR;
  u16  RESERVED17;
  vu16 DCR;
  u16  RESERVED18;
  vu16 DMAR;
  u16  RESERVED19;
} TIM_TypeDef;

 
typedef struct
{
  vu16 SR;
  u16  RESERVED0;
  vu16 DR;
  u16  RESERVED1;
  vu16 BRR;
  u16  RESERVED2;
  vu16 CR1;
  u16  RESERVED3;
  vu16 CR2;
  u16  RESERVED4;
  vu16 CR3;
  u16  RESERVED5;
  vu16 GTPR;
  u16  RESERVED6;
} USART_TypeDef;

 
typedef struct
{
  vu32 CR;
  vu32 CFR;
  vu32 SR;
} WWDG_TypeDef;

 
 
 
 



 



 


 




#line 634 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"

#line 651 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"



#line 670 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"

 

 


 






 


 






 
 
 

 



























































































































































































































#line 924 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"














 
#line 1180 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_map.h"

 
 
 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"

#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

 
 
typedef struct
{
  u32 ADC_Mode;
  FunctionalState ADC_ScanConvMode; 
  FunctionalState ADC_ContinuousConvMode;
  u32 ADC_ExternalTrigConv;
  u32 ADC_DataAlign;
  u8 ADC_NbrOfChannel;
}ADC_InitTypeDef;

 



                                 



 
#line 55 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

#line 66 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

 
 
#line 75 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"
 


 
#line 85 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

#line 100 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

 






 
#line 127 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

#line 137 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

 
#line 147 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

#line 156 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

 
 





 



 






#line 188 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

 










 
#line 208 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

#line 216 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_adc.h"

 








 











 


 


 


 


 


 


 


 
 
void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, u16 ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, u8 Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel, u8 Rank, u8 ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
u16 ADC_GetConversionValue(ADC_TypeDef* ADCx);
u32 ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, u32 ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel, u8 Rank, u8 ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, u8 Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, u8 ADC_InjectedChannel, u16 Offset);
u16 ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, u8 ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, u32 ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, u16 HighThreshold, u16 LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, u8 ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, u8 ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, u8 ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, u16 ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, u16 ADC_IT);



 
#line 26 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_bkp.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_bkp.h"

 
 
 






 










 
#line 87 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_bkp.h"

#line 102 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_bkp.h"



 
 
void BKP_DeInit(void);
void BKP_TamperPinLevelConfig(u16 BKP_TamperPinLevel);
void BKP_TamperPinCmd(FunctionalState NewState);
void BKP_ITConfig(FunctionalState NewState);
void BKP_RTCOutputConfig(u16 BKP_RTCOutputSource);
void BKP_SetRTCCalibrationValue(u8 CalibrationValue);
void BKP_WriteBackupRegister(u16 BKP_DR, u16 Data);
u16 BKP_ReadBackupRegister(u16 BKP_DR);
FlagStatus BKP_GetFlagStatus(void);
void BKP_ClearFlag(void);
ITStatus BKP_GetITStatus(void);
void BKP_ClearITPendingBit(void);



 
#line 30 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_can.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_can.h"

 
 
typedef struct
{
  FunctionalState CAN_TTCM;
  FunctionalState CAN_ABOM;
  FunctionalState CAN_AWUM;
  FunctionalState CAN_NART;
  FunctionalState CAN_RFLM;
  FunctionalState CAN_TXFP;
  u8 CAN_Mode;
  u8 CAN_SJW;
  u8 CAN_BS1;
  u8 CAN_BS2;
  u16 CAN_Prescaler;
} CAN_InitTypeDef;

 
typedef struct
{
  u8 CAN_FilterNumber;
  u8 CAN_FilterMode;
  u8 CAN_FilterScale;
  u16 CAN_FilterIdHigh;
  u16 CAN_FilterIdLow;
  u16 CAN_FilterMaskIdHigh;
  u16 CAN_FilterMaskIdLow;
  u16 CAN_FilterFIFOAssignment;
  FunctionalState CAN_FilterActivation;
} CAN_FilterInitTypeDef;

 
typedef struct
{
  u32 StdId;
  u32 ExtId;
  u8 IDE;
  u8 RTR;
  u8 DLC;
  u8 Data[8];
} CanTxMsg;

 
typedef struct
{
  u32 StdId;
  u32 ExtId;
  u8 IDE;
  u8 RTR;
  u8 DLC;
  u8 Data[8];
  u8 FMI;
} CanRxMsg;

 

 



 








 








 
#line 119 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_can.h"



 
#line 131 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_can.h"



 


 


 






 






 






 





 





 





 





 





 



 



 







 
#line 225 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_can.h"

#line 233 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_can.h"

#line 240 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_can.h"

 
 
void CAN_DeInit(void);
u8 CAN_Init(CAN_InitTypeDef* CAN_InitStruct);
void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct);
void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct);
void CAN_ITConfig(u32 CAN_IT, FunctionalState NewState);
u8 CAN_Transmit(CanTxMsg* TxMessage);
u8 CAN_TransmitStatus(u8 TransmitMailbox);
void CAN_CancelTransmit(u8 Mailbox);
void CAN_FIFORelease(u8 FIFONumber);
u8 CAN_MessagePending(u8 FIFONumber);
void CAN_Receive(u8 FIFONumber, CanRxMsg* RxMessage);
u8 CAN_Sleep(void);
u8 CAN_WakeUp(void);
FlagStatus CAN_GetFlagStatus(u32 CAN_FLAG);
void CAN_ClearFlag(u32 CAN_FLAG);
ITStatus CAN_GetITStatus(u32 CAN_IT);
void CAN_ClearITPendingBit(u32 CAN_IT);



 
#line 34 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_crc.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_crc.h"

 
 
 
 
void CRC_ResetDR(void);
u32 CRC_CalcCRC(u32 Data);
u32 CRC_CalcBlockCRC(u32 pBuffer[], u32 BufferLength);
u32 CRC_GetCRC(void);
void CRC_SetIDRegister(u8 IDValue);
u8 CRC_GetIDRegister(void);



 
#line 38 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dac.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dac.h"

 
 
typedef struct
{
  u32 DAC_Trigger;
  u32 DAC_WaveGeneration;
  u32 DAC_LFSRUnmask_TriangleAmplitude;
  u32 DAC_OutputBuffer; 
}DAC_InitTypeDef;

 
 
#line 45 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dac.h"

#line 55 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dac.h"

 








 
#line 78 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dac.h"

#line 91 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dac.h"

#line 116 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dac.h"

 






 






 








 






 


 
 
void DAC_DeInit(void);
void DAC_Init(u32 DAC_Channel, DAC_InitTypeDef* DAC_InitStruct);
void DAC_StructInit(DAC_InitTypeDef* DAC_InitStruct);
void DAC_Cmd(u32 DAC_Channel, FunctionalState NewState);
void DAC_DMACmd(u32 DAC_Channel, FunctionalState NewState);
void DAC_SoftwareTriggerCmd(u32 DAC_Channel, FunctionalState NewState);
void DAC_DualSoftwareTriggerCmd(FunctionalState NewState);
void DAC_WaveGenerationCmd(u32 DAC_Channel, u32 DAC_Wave, FunctionalState NewState);
void DAC_SetChannel1Data(u32 DAC_Align, u16 Data);
void DAC_SetChannel2Data(u32 DAC_Align, u16 Data);
void DAC_SetDualChannelData(u32 DAC_Align, u16 Data2, u16 Data1);
u16 DAC_GetDataOutputValue(u32 DAC_Channel);



 
#line 42 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dbgmcu.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dbgmcu.h"

 
 
#line 42 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dbgmcu.h"
                                           


 
 
u32 DBGMCU_GetREVID(void);
u32 DBGMCU_GetDEVID(void);
void DBGMCU_Config(u32 DBGMCU_Periph, FunctionalState NewState);



 


#line 46 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"

 
 
typedef struct
{
  u32 DMA_PeripheralBaseAddr;
  u32 DMA_MemoryBaseAddr;
  u32 DMA_DIR;
  u32 DMA_BufferSize;
  u32 DMA_PeripheralInc;
  u32 DMA_MemoryInc;
  u32 DMA_PeripheralDataSize;
  u32 DMA_MemoryDataSize;
  u32 DMA_Mode;
  u32 DMA_Priority;
  u32 DMA_M2M;
}DMA_InitTypeDef;

 
#line 54 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"

 






 






 






 








 








 





 










 





 






 
#line 153 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"
 
#line 174 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"

#line 200 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"

 
 
#line 231 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"
 
#line 252 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"

#line 278 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_dma.h"

 


 
 
void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, u32 DMA_IT, FunctionalState NewState);
u16 DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);
FlagStatus DMA_GetFlagStatus(u32 DMA_FLAG);
void DMA_ClearFlag(u32 DMA_FLAG);
ITStatus DMA_GetITStatus(u32 DMA_IT);
void DMA_ClearITPendingBit(u32 DMA_IT);



 
#line 50 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_exti.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_exti.h"

 
 
typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;


                            
 
typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;





 
typedef struct
{
  u32 EXTI_Line;
  EXTIMode_TypeDef EXTI_Mode;
  EXTITrigger_TypeDef EXTI_Trigger;
  FunctionalState EXTI_LineCmd;
}EXTI_InitTypeDef;

 
 
#line 80 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_exti.h"



#line 93 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_exti.h"
                                 
 
 
void EXTI_DeInit(void);
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(u32 EXTI_Line);
FlagStatus EXTI_GetFlagStatus(u32 EXTI_Line);
void EXTI_ClearFlag(u32 EXTI_Line);
ITStatus EXTI_GetITStatus(u32 EXTI_Line);
void EXTI_ClearITPendingBit(u32 EXTI_Line);



 
#line 54 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_flash.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_flash.h"

 

 
typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PG,
  FLASH_ERROR_WRP,
  FLASH_COMPLETE,
  FLASH_TIMEOUT
}FLASH_Status;


 








 







 







 

 
#line 97 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_flash.h"

 
#line 132 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_flash.h"






 





 





 





 





 





 






								 
 
 
 
void FLASH_SetLatency(u32 FLASH_Latency);
void FLASH_HalfCycleAccessCmd(u32 FLASH_HalfCycleAccess);
void FLASH_PrefetchBufferCmd(u32 FLASH_PrefetchBuffer);


void FLASH_Unlock(void);
void FLASH_Lock(void);
FLASH_Status FLASH_ErasePage(u32 Page_Address);
FLASH_Status FLASH_EraseAllPages(void);
FLASH_Status FLASH_EraseOptionBytes(void);
FLASH_Status FLASH_ProgramWord(u32 Address, u32 Data);
FLASH_Status FLASH_ProgramHalfWord(u32 Address, u16 Data);
FLASH_Status FLASH_ProgramOptionByteData(u32 Address, u8 Data);
FLASH_Status FLASH_EnableWriteProtection(u32 FLASH_Pages);
FLASH_Status FLASH_ReadOutProtection(FunctionalState NewState);
FLASH_Status FLASH_UserOptionByteConfig(u16 OB_IWDG, u16 OB_STOP, u16 OB_STDBY);
u32 FLASH_GetUserOptionByte(void);
u32 FLASH_GetWriteProtectionOptionByte(void);
FlagStatus FLASH_GetReadOutProtectionStatus(void);
FlagStatus FLASH_GetPrefetchBufferStatus(void);
void FLASH_ITConfig(u16 FLASH_IT, FunctionalState NewState);
FlagStatus FLASH_GetFlagStatus(u16 FLASH_FLAG);
void FLASH_ClearFlag(u16 FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(u32 Timeout);




 
#line 58 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_fsmc.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_fsmc.h"

 
 
typedef struct
{
  u32 FSMC_AddressSetupTime;
  u32 FSMC_AddressHoldTime;
  u32 FSMC_DataSetupTime;
  u32 FSMC_BusTurnAroundDuration;
  u32 FSMC_CLKDivision;
  u32 FSMC_DataLatency;
  u32 FSMC_AccessMode;
}FSMC_NORSRAMTimingInitTypeDef;

 
typedef struct
{
  u32 FSMC_Bank;
  u32 FSMC_DataAddressMux;
  u32 FSMC_MemoryType;
  u32 FSMC_MemoryDataWidth;
  u32 FSMC_BurstAccessMode;
  u32 FSMC_WaitSignalPolarity;
  u32 FSMC_WrapMode;
  u32 FSMC_WaitSignalActive;
  u32 FSMC_WriteOperation;
  u32 FSMC_WaitSignal;
  u32 FSMC_ExtendedMode;
  u32 FSMC_AsyncWait;
  u32 FSMC_WriteBurst;
   
  FSMC_NORSRAMTimingInitTypeDef* FSMC_ReadWriteTimingStruct;
   
  FSMC_NORSRAMTimingInitTypeDef* FSMC_WriteTimingStruct;
}FSMC_NORSRAMInitTypeDef;

 
typedef struct
{
  u32 FSMC_SetupTime;
  u32 FSMC_WaitSetupTime;
  u32 FSMC_HoldSetupTime;
  u32 FSMC_HiZSetupTime;
}FSMC_NAND_PCCARDTimingInitTypeDef;

 
typedef struct
{
  u32 FSMC_Bank;
  u32 FSMC_Waitfeature;
  u32 FSMC_MemoryDataWidth;
  u32 FSMC_ECC;
  u32 FSMC_ECCPageSize;
  u32 FSMC_AddressLowMapping;
  u32 FSMC_TCLRSetupTime;
  u32 FSMC_TARSetupTime;
   
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;
   
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;
}FSMC_NANDInitTypeDef;

 
typedef struct
{
  u32 FSMC_Waitfeature;
  u32 FSMC_AddressLowMapping;
  u32 FSMC_TCLRSetupTime;
  u32 FSMC_TARSetupTime;
   
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;
   
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;
   
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_IOSpaceTimingStruct;
}FSMC_PCCARDInitTypeDef;

 
 
#line 109 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_fsmc.h"













                                    





 
 






 









                                     
 





                                      
                               
 






                                   





                                        
  





                                 
                                  





                                    
 





                              
 






 





                               
 





                                  
                                   






 


 


 


 


 


 


 









                                  
 
 





                                    
 





                                    
 





                                            
 
#line 276 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_fsmc.h"

#line 283 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_fsmc.h"
                                                              
 





 


 


 


 


 


 


 










 











 
 
void FSMC_NORSRAMDeInit(u32 FSMC_Bank);
void FSMC_NANDDeInit(u32 FSMC_Bank);
void FSMC_PCCARDDeInit(void);
void FSMC_NORSRAMInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NANDInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_PCCARDInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_NORSRAMStructInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NANDStructInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_PCCARDStructInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_NORSRAMCmd(u32 FSMC_Bank, FunctionalState NewState);
void FSMC_NANDCmd(u32 FSMC_Bank, FunctionalState NewState);
void FSMC_PCCARDCmd(FunctionalState NewState);
void FSMC_NANDECCCmd(u32 FSMC_Bank, FunctionalState NewState);
u32 FSMC_GetECC(u32 FSMC_Bank);
void FSMC_ITConfig(u32 FSMC_Bank, u32 FSMC_IT, FunctionalState NewState);
FlagStatus FSMC_GetFlagStatus(u32 FSMC_Bank, u32 FSMC_FLAG);
void FSMC_ClearFlag(u32 FSMC_Bank, u32 FSMC_FLAG);
ITStatus FSMC_GetITStatus(u32 FSMC_Bank, u32 FSMC_IT);
void FSMC_ClearITPendingBit(u32 FSMC_Bank, u32 FSMC_IT);



 
#line 62 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"

 
#line 32 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"
                                     
 
typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;



                                         
 
typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;





                              
 
typedef struct
{
  u16 GPIO_Pin;
  GPIOSpeed_TypeDef GPIO_Speed;
  GPIOMode_TypeDef GPIO_Mode;
}GPIO_InitTypeDef;

 
typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;


 
 
#line 95 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"



#line 114 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"
                            
 
#line 141 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"


#line 156 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"
                              
 
#line 165 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"






                                         
#line 179 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"
                                       
 
#line 197 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"

#line 214 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_gpio.h"
                          
 
 
void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
u8 GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, u16 GPIO_Pin);
u16 GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
u8 GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, u16 GPIO_Pin);
u16 GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, u16 GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, u16 GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, u16 GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, u16 PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, u16 GPIO_Pin);
void GPIO_EventOutputConfig(u8 GPIO_PortSource, u8 GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(u32 GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(u8 GPIO_PortSource, u8 GPIO_PinSource);



 
#line 66 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

 
 
typedef struct
{
  u16 I2C_Mode;
  u16 I2C_DutyCycle;
  u16 I2C_OwnAddress1;
  u16 I2C_Ack;
  u16 I2C_AcknowledgedAddress;
  u32 I2C_ClockSpeed;
}I2C_InitTypeDef;

 



 







 






 






 






 






 
#line 86 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

#line 96 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

 






 






 






 
#line 133 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

#line 140 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

#line 148 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

 
#line 171 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

#line 178 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

#line 190 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

 
 






 

     
 


 


 


 



 


 

      
 

                                          
 


#line 246 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_i2c.h"

 

 


 
 
void I2C_DeInit(I2C_TypeDef* I2Cx);
void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, u8 Address);
void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_ITConfig(I2C_TypeDef* I2Cx, u16 I2C_IT, FunctionalState NewState);
void I2C_SendData(I2C_TypeDef* I2Cx, u8 Data);
u8 I2C_ReceiveData(I2C_TypeDef* I2Cx);
void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, u8 Address, u8 I2C_Direction);
u16 I2C_ReadRegister(I2C_TypeDef* I2Cx, u8 I2C_Register);
void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, u16 I2C_SMBusAlert);
void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, u16 I2C_PECPosition);
void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
u8 I2C_GetPEC(I2C_TypeDef* I2Cx);
void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, u16 I2C_DutyCycle);
u32 I2C_GetLastEvent(I2C_TypeDef* I2Cx);
ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, u32 I2C_EVENT);
FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, u32 I2C_FLAG);
void I2C_ClearFlag(I2C_TypeDef* I2Cx, u32 I2C_FLAG);
ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, u32 I2C_IT);
void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, u32 I2C_IT);



 
#line 70 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_iwdg.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_iwdg.h"

 
 
 






 
#line 41 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_iwdg.h"

#line 49 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_iwdg.h"

 







 
 
void IWDG_WriteAccessCmd(u16 IWDG_WriteAccess);
void IWDG_SetPrescaler(u8 IWDG_Prescaler);
void IWDG_SetReload(u16 Reload);
void IWDG_ReloadCounter(void);
void IWDG_Enable(void);
FlagStatus IWDG_GetFlagStatus(u16 IWDG_FLAG);



 
#line 74 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"

 
 
typedef struct
{
  u8 NVIC_IRQChannel;
  u8 NVIC_IRQChannelPreemptionPriority;
  u8 NVIC_IRQChannelSubPriority;
  FunctionalState NVIC_IRQChannelCmd;
} NVIC_InitTypeDef;

 
 
#line 96 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"


#line 158 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"


 
#line 170 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"





#line 182 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"












#line 201 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"











 






 








 
#line 239 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_nvic.h"












 
 
void NVIC_DeInit(void);
void NVIC_SCBDeInit(void);
void NVIC_PriorityGroupConfig(u32 NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_StructInit(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SETPRIMASK(void);
void NVIC_RESETPRIMASK(void);
void NVIC_SETFAULTMASK(void);
void NVIC_RESETFAULTMASK(void);
void NVIC_BASEPRICONFIG(u32 NewPriority);
u32 NVIC_GetBASEPRI(void);
u16 NVIC_GetCurrentPendingIRQChannel(void);
ITStatus NVIC_GetIRQChannelPendingBitStatus(u8 NVIC_IRQChannel);
void NVIC_SetIRQChannelPendingBit(u8 NVIC_IRQChannel);
void NVIC_ClearIRQChannelPendingBit(u8 NVIC_IRQChannel);
u16 NVIC_GetCurrentActiveHandler(void);
ITStatus NVIC_GetIRQChannelActiveBitStatus(u8 NVIC_IRQChannel);
u32 NVIC_GetCPUID(void);
void NVIC_SetVectorTable(u32 NVIC_VectTab, u32 Offset);
void NVIC_GenerateSystemReset(void);
void NVIC_GenerateCoreReset(void);
void NVIC_SystemLPConfig(u8 LowPowerMode, FunctionalState NewState);
void NVIC_SystemHandlerConfig(u32 SystemHandler, FunctionalState NewState);
void NVIC_SystemHandlerPriorityConfig(u32 SystemHandler, u8 SystemHandlerPreemptionPriority,
                                      u8 SystemHandlerSubPriority);
ITStatus NVIC_GetSystemHandlerPendingBitStatus(u32 SystemHandler);
void NVIC_SetSystemHandlerPendingBit(u32 SystemHandler);
void NVIC_ClearSystemHandlerPendingBit(u32 SystemHandler);
ITStatus NVIC_GetSystemHandlerActiveBitStatus(u32 SystemHandler);
u32 NVIC_GetFaultHandlerSources(u32 SystemHandler);
u32 NVIC_GetFaultAddress(u32 SystemHandler);



 
#line 78 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_pwr.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_pwr.h"

 
 
 
#line 35 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_pwr.h"






 






 




 
 








 
 
void PWR_DeInit(void);
void PWR_BackupAccessCmd(FunctionalState NewState);
void PWR_PVDCmd(FunctionalState NewState);
void PWR_PVDLevelConfig(u32 PWR_PVDLevel);
void PWR_WakeUpPinCmd(FunctionalState NewState);
void PWR_EnterSTOPMode(u32 PWR_Regulator, u8 PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);
FlagStatus PWR_GetFlagStatus(u32 PWR_FLAG);
void PWR_ClearFlag(u32 PWR_FLAG);



 
#line 82 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"

 
typedef struct
{
  u32 SYSCLK_Frequency;
  u32 HCLK_Frequency;
  u32 PCLK1_Frequency;
  u32 PCLK2_Frequency;
  u32 ADCCLK_Frequency;
}RCC_ClocksTypeDef;

 
 







 








 
#line 68 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"

#line 77 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"

 








 
#line 97 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"







 










 
#line 122 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"







 






 








 







 








 
#line 170 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"



 
#line 190 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"



 
#line 215 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"



 










 
#line 241 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"

#line 248 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rcc.h"



 
 
void RCC_DeInit(void);
void RCC_HSEConfig(u32 RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(u8 HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(u32 RCC_PLLSource, u32 RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);
void RCC_SYSCLKConfig(u32 RCC_SYSCLKSource);
u8 RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(u32 RCC_SYSCLK);
void RCC_PCLK1Config(u32 RCC_HCLK);
void RCC_PCLK2Config(u32 RCC_HCLK);
void RCC_ITConfig(u8 RCC_IT, FunctionalState NewState);
void RCC_USBCLKConfig(u32 RCC_USBCLKSource);
void RCC_ADCCLKConfig(u32 RCC_PCLK2);
void RCC_LSEConfig(u8 RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(u32 RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(u32 RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(u32 RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(u32 RCC_APB1Periph, FunctionalState NewState);
void RCC_APB2PeriphResetCmd(u32 RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(u32 RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(u8 RCC_MCO);
FlagStatus RCC_GetFlagStatus(u8 RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(u8 RCC_IT);
void RCC_ClearITPendingBit(u8 RCC_IT);



 
#line 86 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rtc.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_rtc.h"

 
 
 








                                                                     
 













                           
 
 
void RTC_ITConfig(u16 RTC_IT, FunctionalState NewState);
void RTC_EnterConfigMode(void);
void RTC_ExitConfigMode(void);
u32  RTC_GetCounter(void);
void RTC_SetCounter(u32 CounterValue);
void RTC_SetPrescaler(u32 PrescalerValue);
void RTC_SetAlarm(u32 AlarmValue);
u32  RTC_GetDivider(void);
void RTC_WaitForLastTask(void);
void RTC_WaitForSynchro(void);
FlagStatus RTC_GetFlagStatus(u16 RTC_FLAG);
void RTC_ClearFlag(u16 RTC_FLAG);
ITStatus RTC_GetITStatus(u16 RTC_IT);
void RTC_ClearITPendingBit(u16 RTC_IT);



 
#line 90 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"

 
typedef struct
{
  u8 SDIO_ClockDiv;
  u32 SDIO_ClockEdge;
  u32 SDIO_ClockBypass;
  u32 SDIO_ClockPowerSave;
  u32 SDIO_BusWide;
  u32 SDIO_HardwareFlowControl;
} SDIO_InitTypeDef;

typedef struct
{
  u32 SDIO_Argument;
  u32 SDIO_CmdIndex;
  u32 SDIO_Response;
  u32 SDIO_Wait;
  u32 SDIO_CPSM;
} SDIO_CmdInitTypeDef;

typedef struct
{
  u32 SDIO_DataTimeOut;
  u32 SDIO_DataLength;
  u32 SDIO_DataBlockSize;
  u32 SDIO_TransferDir;
  u32 SDIO_TransferMode;
  u32 SDIO_DPSM;
} SDIO_DataInitTypeDef;

 
 





                                   






  






 






                                
  





                                  
 





 
#line 121 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"



 


 








 







 





 








 


 
#line 178 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"

#line 194 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"

 






 






 





 
#line 240 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"

#line 265 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"



#line 292 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_sdio.h"


                                                        
 






 
 
void SDIO_DeInit(void);
void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_ClockCmd(FunctionalState NewState);
void SDIO_SetPowerState(u32 SDIO_PowerState);
u32 SDIO_GetPowerState(void);
void SDIO_ITConfig(u32 SDIO_IT, FunctionalState NewState);
void SDIO_DMACmd(FunctionalState NewState);
void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct);
void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct);
u8 SDIO_GetCommandResponse(void);
u32 SDIO_GetResponse(u32 SDIO_RESP);
void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
u32 SDIO_GetDataCounter(void);
u32 SDIO_ReadData(void);
void SDIO_WriteData(u32 Data);
u32 SDIO_GetFIFOCount(void);
void SDIO_StartSDIOReadWait(FunctionalState NewState);
void SDIO_StopSDIOReadWait(FunctionalState NewState);
void SDIO_SetSDIOReadWaitMode(u32 SDIO_ReadWaitMode);
void SDIO_SetSDIOOperation(FunctionalState NewState);
void SDIO_SendSDIOSuspendCmd(FunctionalState NewState);
void SDIO_CommandCompletionCmd(FunctionalState NewState);
void SDIO_CEATAITCmd(FunctionalState NewState);
void SDIO_SendCEATACmd(FunctionalState NewState);
FlagStatus SDIO_GetFlagStatus(u32 SDIO_FLAG);
void SDIO_ClearFlag(u32 SDIO_FLAG);
ITStatus SDIO_GetITStatus(u32 SDIO_IT);
void SDIO_ClearITPendingBit(u32 SDIO_IT);



 
#line 94 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"

 
 
typedef struct
{
  u16 SPI_Direction;
  u16 SPI_Mode;
  u16 SPI_DataSize;
  u16 SPI_CPOL;
  u16 SPI_CPHA;
  u16 SPI_NSS;
  u16 SPI_BaudRatePrescaler;
  u16 SPI_FirstBit;
  u16 SPI_CRCPolynomial;
}SPI_InitTypeDef;

 
typedef struct
{
  u16 I2S_Mode;
  u16 I2S_Standard;
  u16 I2S_DataFormat;
  u16 I2S_MCLKOutput;
  u16 I2S_AudioFreq;
  u16 I2S_CPOL;
}I2S_InitTypeDef;

 








 










 






 






 






 






 






 
#line 114 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"

#line 123 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"

 






 










 












 










  






 
#line 180 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"

#line 187 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"

 






 





 






 





 






 






















 
#line 253 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"

#line 260 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_spi.h"

 


 
 
void SPI_I2S_DeInit(SPI_TypeDef* SPIx);
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, u8 SPI_I2S_IT, FunctionalState NewState);
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, u16 SPI_I2S_DMAReq, FunctionalState NewState);
void SPI_I2S_SendData(SPI_TypeDef* SPIx, u16 Data);
u16 SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, u16 SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, u16 SPI_DataSize);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
u16 SPI_GetCRC(SPI_TypeDef* SPIx, u8 SPI_CRC);
u16 SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, u16 SPI_Direction);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, u16 SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, u16 SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, u8 SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, u8 SPI_I2S_IT);



 
#line 98 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_systick.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_systick.h"

 
 
 






 








 










 
 
void SysTick_CLKSourceConfig(u32 SysTick_CLKSource);
void SysTick_SetReload(u32 Reload);
void SysTick_CounterCmd(u32 SysTick_Counter);
void SysTick_ITConfig(FunctionalState NewState);
u32 SysTick_GetCounter(void);
FlagStatus SysTick_GetFlagStatus(u8 SysTick_FLAG);



 
#line 102 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 

 
typedef struct
{
  u16 TIM_Prescaler;
  u16 TIM_CounterMode;
  u16 TIM_Period;
  u16 TIM_ClockDivision;
  u8 TIM_RepetitionCounter;
} TIM_TimeBaseInitTypeDef;

 
typedef struct
{
  u16 TIM_OCMode;
  u16 TIM_OutputState;
  u16 TIM_OutputNState;
  u16 TIM_Pulse;
  u16 TIM_OCPolarity;
  u16 TIM_OCNPolarity;
  u16 TIM_OCIdleState;
  u16 TIM_OCNIdleState;
} TIM_OCInitTypeDef;

 
typedef struct
{
  u16 TIM_Channel;
  u16 TIM_ICPolarity;
  u16 TIM_ICSelection;
  u16 TIM_ICPrescaler;
  u16 TIM_ICFilter;
} TIM_ICInitTypeDef;

 
typedef struct
{
  u16 TIM_OSSRState;
  u16 TIM_OSSIState;
  u16 TIM_LOCKLevel; 
  u16 TIM_DeadTime;
  u16 TIM_Break;
  u16 TIM_BreakPolarity;
  u16 TIM_AutomaticOutput;
} TIM_BDTRInitTypeDef;

                              

#line 81 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"




#line 91 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 
#line 99 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 106 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 115 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"
 






 
















 








 












 






 






 






 






 






 






 






 






 





 










 






 






 






 






 






 








 










 
#line 298 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"



#line 308 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 317 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 
#line 338 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 358 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 
#line 378 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 397 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 
#line 406 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"



#line 416 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 










 
#line 437 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 446 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"






 








 






 






 






  








 
#line 500 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"



#line 510 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 






 






 





                                     
 






  
#line 548 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 557 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 593 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

 










 






 
#line 625 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 638 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 646 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"

#line 665 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_tim.h"
                                                                                            
 


 


 
 

void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_ITConfig(TIM_TypeDef* TIMx, u16 TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, u16 TIM_EventSource);
void TIM_DMAConfig(TIM_TypeDef* TIMx, u16 TIM_DMABase, u16 TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, u16 TIM_DMASource, FunctionalState NewState);
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, u16 TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, u16 TIM_TIxExternalCLKSource,
                                u16 TIM_ICPolarity, u16 ICFilter);                                
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, u16 TIM_ExtTRGPrescaler, u16 TIM_ExtTRGPolarity,
                             u16 ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, u16 TIM_ExtTRGPrescaler, 
                             u16 TIM_ExtTRGPolarity, u16 ExtTRGFilter);
void TIM_ETRConfig(TIM_TypeDef* TIMx, u16 TIM_ExtTRGPrescaler, u16 TIM_ExtTRGPolarity,
                   u16 ExtTRGFilter);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, u16 Prescaler, u16 TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, u16 TIM_CounterMode);
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, u16 TIM_InputTriggerSource);
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, u16 TIM_EncoderMode,
                                u16 TIM_IC1Polarity, u16 TIM_IC2Polarity);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, u16 TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, u16 TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, u16 TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, u16 TIM_ForcedAction);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, u16 TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, u16 TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, u16 TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, u16 TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, u16 TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, u16 TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, u16 TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, u16 TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, u16 TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, u16 TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, u16 TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, u16 TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, u16 TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, u16 TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, u16 TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, u16 TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, u16 TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, u16 TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, u16 TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, u16 TIM_Channel, u16 TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, u16 TIM_Channel, u16 TIM_CCxN);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, u16 TIM_Channel, u16 TIM_OCMode);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, u16 TIM_UpdateSource);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, u16 TIM_OPMode);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, u16 TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, u16 TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, u16 TIM_MasterSlaveMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, u16 Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, u16 Autoreload);
void TIM_SetCompare1(TIM_TypeDef* TIMx, u16 Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, u16 Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, u16 Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, u16 Compare4);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, u16 TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, u16 TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, u16 TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, u16 TIM_ICPSC);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, u16 TIM_CKD);
u16 TIM_GetCapture1(TIM_TypeDef* TIMx);
u16 TIM_GetCapture2(TIM_TypeDef* TIMx);
u16 TIM_GetCapture3(TIM_TypeDef* TIMx);
u16 TIM_GetCapture4(TIM_TypeDef* TIMx);
u16 TIM_GetCounter(TIM_TypeDef* TIMx);
u16 TIM_GetPrescaler(TIM_TypeDef* TIMx);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, u16 TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, u16 TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, u16 TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, u16 TIM_IT);
                                                                                                             


 








#line 106 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_usart.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_usart.h"

 
 
typedef struct
{
  u32 USART_BaudRate;
  u16 USART_WordLength;
  u16 USART_StopBits;
  u16 USART_Parity;
  u16 USART_Mode;
  u16 USART_HardwareFlowControl;  
} USART_InitTypeDef;

 
typedef struct
{
  u16 USART_Clock;
  u16 USART_CPOL;
  u16 USART_CPHA;
  u16 USART_LastBit;
} USART_ClockInitTypeDef;

 















 


                                    



 









 








 





 















 






 




                               
 




 






 
#line 146 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_usart.h"






















 





 






 







 






 
#line 207 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_usart.h"






                              










 
 
void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ITConfig(USART_TypeDef* USARTx, u16 USART_IT, FunctionalState NewState);
void USART_DMACmd(USART_TypeDef* USARTx, u16 USART_DMAReq, FunctionalState NewState);
void USART_SetAddress(USART_TypeDef* USARTx, u8 USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, u16 USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, u16 USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendData(USART_TypeDef* USARTx, u16 Data);
u16 USART_ReceiveData(USART_TypeDef* USARTx);
void USART_SendBreak(USART_TypeDef* USARTx);
void USART_SetGuardTime(USART_TypeDef* USARTx, u8 USART_GuardTime);
void USART_SetPrescaler(USART_TypeDef* USARTx, u8 USART_Prescaler);
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_IrDAConfig(USART_TypeDef* USARTx, u16 USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, u16 USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, u16 USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, u16 USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, u16 USART_IT);



 
#line 110 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


#line 1 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_wwdg.h"














 

 



 
#line 23 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_wwdg.h"

 
 
 














 
 
void WWDG_DeInit(void);
void WWDG_SetPrescaler(u32 WWDG_Prescaler);
void WWDG_SetWindowValue(u8 WindowValue);
void WWDG_EnableIT(void);
void WWDG_SetCounter(u8 Counter);
void WWDG_Enable(u8 Counter);
FlagStatus WWDG_GetFlagStatus(void);
void WWDG_ClearFlag(void);



 
#line 114 "C:\\Keil\\ARM\\INC\\ST\\STM32F10x\\stm32f10x_lib.h"


 
 
 
 
void debug(void);



 
#line 10 "main.c"
#line 1 "C:\\Keil\\ARM\\RV31\\INC\\stdio.h"
 
 
 





 






 









#line 34 "C:\\Keil\\ARM\\RV31\\INC\\stdio.h"


  
  typedef unsigned int size_t;    








 
 

 
  typedef struct __va_list __va_list;





   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 125 "C:\\Keil\\ARM\\RV31\\INC\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 
extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 944 "C:\\Keil\\ARM\\RV31\\INC\\stdio.h"



 
#line 11 "main.c"
#line 1 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"









 




 

 


#line 27 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"







 typedef unsigned int   size_t;


typedef signed char     S8;
typedef unsigned char   U8;
typedef short           S16;
typedef unsigned short  U16;
typedef int             S32;
typedef unsigned int    U32;
typedef long long       S64;
typedef unsigned long long U64;
typedef unsigned char   BIT;
typedef unsigned int    BOOL;

#line 54 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"

#line 66 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"



 





 
typedef U32 OS_SEM[2];

 

typedef U32 OS_MBX[];

 
typedef U32 OS_MUT[3];

 
typedef U32 OS_TID;

 
typedef void *OS_ID;

 
typedef U32 OS_RESULT;

 












 




#line 194 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"



 



 
extern void      os_set_env    (void);
extern void      rt_sys_init   (void (*task)(void), U8 priority, void *stk);
extern void      rt_tsk_pass   (void);
extern OS_TID    rt_tsk_self   (void);
extern OS_RESULT rt_tsk_prio   (OS_TID task_id, U8 new_prio);
extern OS_TID    rt_tsk_create (void (*task)(void), U8 priority, void *stk, void *argv);
extern OS_RESULT rt_tsk_delete (OS_TID task_id);

#line 230 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"

extern void      _os_sys_init(U32 p, void (*task)(void), U32 prio_stksz,
                                     void *stk)                        __svc_indirect(0);
extern OS_TID    _os_tsk_create (U32 p, void (*task)(void), U32 prio_stksz,
                                        void *stk, void *argv)         __svc_indirect(0);
extern OS_TID    _os_tsk_create_ex (U32 p, void (*task)(void *), U32 prio_stksz,
                                           void *stk, void *argv)      __svc_indirect(0);
extern OS_TID    _os_tsk_self (U32 p)                                  __svc_indirect(0);
extern void      _os_tsk_pass (U32 p)                                  __svc_indirect(0);
extern OS_RESULT _os_tsk_prio (U32 p, OS_TID task_id, U8 new_prio)     __svc_indirect(0);
extern OS_RESULT _os_tsk_delete (U32 p, OS_TID task_id)                __svc_indirect(0);

 
extern OS_RESULT rt_evt_wait (U16 wait_flags,  U16 timeout, BOOL and_wait);
extern void      rt_evt_set  (U16 event_flags, OS_TID task_id);
extern void      rt_evt_clr  (U16 clear_flags, OS_TID task_id);
extern U16       rt_evt_get  (void);







extern OS_RESULT _os_evt_wait(U32 p, U16 wait_flags, U16 timeout,
                                     BOOL and_wait)                    __svc_indirect(0);
extern void      _os_evt_set (U32 p, U16 event_flags, OS_TID task_id)  __svc_indirect(0);
extern void      _os_evt_clr (U32 p, U16 clear_flags, OS_TID task_id)  __svc_indirect(0);
extern U16       _os_evt_get (U32 p)                                   __svc_indirect(0);
extern void      isr_evt_set (U16 event_flags, OS_TID task_id);

 
extern void      rt_sem_init (OS_ID semaphore, U16 token_count);
extern OS_RESULT rt_sem_send (OS_ID semaphore);
extern OS_RESULT rt_sem_wait (OS_ID semaphore, U16 timeout);





extern void      _os_sem_init (U32 p, OS_ID semaphore, 
                                      U16 token_count)                 __svc_indirect(0);
extern OS_RESULT _os_sem_send (U32 p, OS_ID semaphore)                 __svc_indirect(0);
extern OS_RESULT _os_sem_wait (U32 p, OS_ID semaphore, U16 timeout)    __svc_indirect(0);
extern void      isr_sem_send (OS_ID semaphore);

 
extern void      rt_mbx_init  (OS_ID mailbox, U16 mbx_size);
extern OS_RESULT rt_mbx_send  (OS_ID mailbox, void *p_msg,    U16 timeout);
extern OS_RESULT rt_mbx_wait  (OS_ID mailbox, void **message, U16 timeout);
extern OS_RESULT rt_mbx_check (OS_ID mailbox);







extern void      _os_mbx_init (U32 p, OS_ID mailbox, U16 mbx_size)     __svc_indirect(0);
extern OS_RESULT _os_mbx_send (U32 p, OS_ID mailbox, void *message_ptr,
                                      U16 timeout)                     __svc_indirect(0);
extern OS_RESULT _os_mbx_wait (U32 p, OS_ID mailbox, void  **message,
                                      U16 timeout)                     __svc_indirect(0);
extern OS_RESULT _os_mbx_check (U32 p, OS_ID mailbox)                  __svc_indirect(0);
extern void      isr_mbx_send (OS_ID mailbox, void *message_ptr);
extern OS_RESULT isr_mbx_receive (OS_ID mailbox, void **message);

 
extern void      rt_mut_init    (OS_ID mutex);
extern OS_RESULT rt_mut_release (OS_ID mutex);
extern OS_RESULT rt_mut_wait    (OS_ID mutex, U16 timeout);





extern void      _os_mut_init (U32 p, OS_ID mutex)                     __svc_indirect(0);
extern OS_RESULT _os_mut_release (U32 p, OS_ID mutex)                  __svc_indirect(0);
extern OS_RESULT _os_mut_wait (U32 p, OS_ID mutex, U16 timeout)        __svc_indirect(0);

 
extern void      rt_dly_wait (U16 delay_time);
extern void      rt_itv_set  (U16 interval_time);
extern void      rt_itv_wait (void);





extern void      _os_dly_wait (U32 p, U16 delay_time)                  __svc_indirect(0);
extern void      _os_itv_set (U32 p, U16 interval_time)                __svc_indirect(0);
extern void      _os_itv_wait (U32 p)                                  __svc_indirect(0);

 
extern OS_ID     rt_tmr_create (U16 tcnt, U16 info);
extern OS_ID     rt_tmr_kill   (OS_ID timer);




extern OS_ID     _os_tmr_create (U32 p, U16 tcnt, U16 info)            __svc_indirect(0);
extern OS_ID     _os_tmr_kill (U32 p, OS_ID timer)                     __svc_indirect(0);

 
extern void      rt_tsk_lock   (void);
extern void      rt_tsk_unlock (void);




extern void      _os_tsk_lock (U32 p)                                  __svc_indirect(0);
extern void      _os_tsk_unlock (U32 p)                                __svc_indirect(0);

 
extern int       _init_box (void *box_mem, U32 box_size, U32 blk_size);
extern void     *_alloc_box (void *box_mem);
extern void     *_calloc_box (void *box_mem);
extern int       _free_box (void *box_mem, void *box);








 




 

typedef struct {                         
  U8  hr;                                
  U8  min;                               
  U8  sec;                               
  U8  day;                               
  U8  mon;                               
  U16 year;                              
} RL_TIME;

typedef struct {                         
  S8  name[256];                         
  U32 size;                              
  U16 fileID;                            
  U8  attrib;                            
  RL_TIME time;                          
} FINFO;

extern int finit (const char *drive);
extern int funinit (const char *drive);
extern int fdelete (const char *filename);
extern int frename (const char *oldname, const char *newname);
extern int ffind (const char *pattern, FINFO *info);
extern U64 ffree (const char *drive);
extern int fformat (const char *drive);
extern int fanalyse (const char *drive);
extern int fcheck (const char *drive);
extern int fdefrag (const char *drive);

 




 

 



 
#line 409 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"

 
#line 417 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"

 
#line 430 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"

 





 
#line 444 "C:\\Keil\\ARM\\RV31\\INC\\rtl.h"

 




 



extern void init_TcpNet (void);
extern void main_TcpNet (void);
extern void timer_tick (void);
extern U8   udp_get_socket (U8 tos, U8 opt, 
                            U16 (*listener)(U8 socket, U8 *remip, U16 port, U8 *buf, U16 len));
extern BOOL udp_release_socket (U8 socket);
extern BOOL udp_open (U8 socket, U16 locport);
extern BOOL udp_close (U8 socket);
extern BOOL udp_mcast_ttl (U8 socket, U8 ttl);
extern U8  *udp_get_buf (U16 size);
extern BOOL udp_send (U8 socket, U8 *remip, U16 remport, U8 *buf, U16 dlen);
extern U8   tcp_get_socket (U8 type, U8 tos, U16 tout,
                            U16 (*listener)(U8 socket, U8 event, U8 *buf, U16 len));
extern BOOL tcp_release_socket (U8 socket);
extern BOOL tcp_listen (U8 socket, U16 locport);
extern BOOL tcp_connect (U8 socket, U8 *remip, U16 remport, U16 locport);
extern U8  *tcp_get_buf (U16 size);
extern U16  tcp_max_dsize (U8 socket);
extern BOOL tcp_check_send (U8 socket);
extern U8   tcp_get_state (U8 socket);
extern BOOL tcp_send (U8 socket, U8 *buf, U16 dlen);
extern BOOL tcp_close (U8 socket);
extern BOOL tcp_abort (U8 socket);
extern void tcp_reset_window (U8 socket);
extern BOOL arp_cache_ip (U8 *ipadr, U8 type);
extern void ppp_listen (char const *user, char const *passw);
extern void ppp_connect (char const *dialnum, char const *user, char const *passw);
extern void ppp_close (void);
extern BOOL ppp_is_up (void);
extern void slip_listen (void);
extern void slip_connect (char const *dialnum);
extern void slip_close (void);
extern BOOL slip_is_up (void);
extern U8   get_host_by_name (U8 *hostn, void (*cbfunc)(U8 event, U8 *host_ip));
extern BOOL smtp_connect (U8 *ipadr, U16 port, void (*cbfunc)(U8 event));
extern void dhcp_disable (void);
extern BOOL igmp_join (U8 *group_ip);
extern BOOL igmp_leave (U8 *group_ip);
extern BOOL snmp_trap (U8 *manager_ip, U8 gen_trap, U8 spec_trap, U16 *obj_list);
extern BOOL snmp_set_community (const char *community);






 
  

 
#line 12 "main.c"

























 

#line 1 "rs274ngc.h"
   





















 




   




 

    
    
    

#line 40 "rs274ngc.h"
#line 1 "canon.h"
   





















 




   


















 

typedef int CANON_PLANE;




typedef int CANON_UNITS;




typedef int CANON_MOTION_MODE;




typedef int CANON_SPEED_FEED_MODE;



typedef int CANON_DIRECTION;




typedef int CANON_FEED_REFERENCE;



typedef int CANON_SIDE;




typedef int CANON_AXIS;
#line 89 "canon.h"

   











 


















































 

    



typedef struct canon_tool_table
{
    int id;
    double length;
    double diameter;
}CANON_TOOL_TABLE;

    

    
extern void INIT_CANON();

    

extern void SET_ORIGIN_OFFSETS(
double x, double y, double z
#line 196 "canon.h"
);

   


 

extern void USE_LENGTH_UNITS(CANON_UNITS u);

   
 

extern void SELECT_PLANE(CANON_PLANE pl);

   

 

    

extern void SET_TRAVERSE_RATE(double rate);

   

 

extern void STRAIGHT_TRAVERSE(
double x, double y, double z
#line 245 "canon.h"
);
   















 

    

extern void SET_FEED_RATE(double rate);

   




























 

extern void SET_FEED_REFERENCE(CANON_FEED_REFERENCE reference);

   
















































 

extern void SET_MOTION_CONTROL_MODE(CANON_MOTION_MODE mode);

   




 

extern void SET_CUTTER_RADIUS_COMPENSATION(double radius);

    

extern void START_CUTTER_RADIUS_COMPENSATION(int direction);

   
 

extern void STOP_CUTTER_RADIUS_COMPENSATION();

   
 

extern void START_SPEED_FEED_SYNCH();
extern void STOP_SPEED_FEED_SYNCH();

    

extern void ARC_FEED(
double first_end,
double second_end,
double first_axis,
double second_axis,
int rotation,
double axis_end_point
#line 408 "canon.h"
);

   
















































 

extern void STRAIGHT_FEED(
double x, double y, double z
#line 484 "canon.h"
);

   

 

extern void STRAIGHT_PROBE (
double x, double y, double z
#line 513 "canon.h"
);

   


 

extern void STOP();

    

extern void DWELL(double seconds);

    

    

extern void SPINDLE_RETRACT_TRAVERSE();

    

extern void START_SPINDLE_CLOCKWISE();

   
 

extern void START_SPINDLE_COUNTERCLOCKWISE();

   
 

extern void SET_SPINDLE_SPEED(double r);

   


 

extern void STOP_SPINDLE_TURNING();

   
 

extern void SPINDLE_RETRACT();
extern void ORIENT_SPINDLE(double orientation, CANON_DIRECTION direction);
extern void LOCK_SPINDLE_Z();
extern void USE_SPINDLE_FORCE();
extern void USE_NO_SPINDLE_FORCE();

    
extern void USE_TOOL_LENGTH_OFFSET(double length);

extern void CHANGE_TOOL(int slot);                 

   




























 

extern void SELECT_TOOL(int i);                    

    

extern void CLAMP_AXIS(CANON_AXIS axis);

   




 

extern void COMMENT(char *s);

   


 

extern void DISABLE_FEED_OVERRIDE();
extern void ENABLE_FEED_OVERRIDE();
extern void DISABLE_SPEED_OVERRIDE();
extern void ENABLE_SPEED_OVERRIDE();
extern void FLOOD_OFF();
    
extern void FLOOD_ON();
    

extern void MESSAGE(char *s);

extern void MIST_OFF();
    

extern void MIST_ON();
    

extern void PALLET_SHUTTLE();

   





 

extern void TURN_PROBE_OFF();
extern void TURN_PROBE_ON();

extern void UNCLAMP_AXIS(CANON_AXIS axis);

   

 

    
extern void NURB_KNOT_VECTOR();                    
extern void NURB_CONTROL_POINT(int i, double x, double y, double z, double w );
extern void NURB_FEED(double sStart, double sEnd);

    
extern void OPTIONAL_PROGRAM_STOP();

   





 

extern void PROGRAM_END();
   
 

extern void PROGRAM_STOP();
   



 

    

   






 

   


 

   
extern double GET_EXTERNAL_FEED_RATE();

   
extern int GET_EXTERNAL_FLOOD();

   


 

   
CANON_UNITS GET_EXTERNAL_LENGTH_UNIT_TYPE();

   
extern int GET_EXTERNAL_MIST();

   
extern CANON_MOTION_MODE GET_EXTERNAL_MOTION_CONTROL_MODE();

   

























 

   
   
   
extern void GET_EXTERNAL_PARAMETER_FILE_NAME(char * filename, unsigned int max_size);

   
extern CANON_PLANE GET_EXTERNAL_PLANE();
















   
extern double GET_EXTERNAL_POSITION_X();

   
extern double GET_EXTERNAL_POSITION_Y();

   
extern double GET_EXTERNAL_POSITION_Z();
















   
extern double GET_EXTERNAL_PROBE_POSITION_X();

   
extern double GET_EXTERNAL_PROBE_POSITION_Y();

   
extern double GET_EXTERNAL_PROBE_POSITION_Z();

   
extern double GET_EXTERNAL_PROBE_VALUE();

   
   
extern int GET_EXTERNAL_QUEUE_EMPTY();

   
extern double GET_EXTERNAL_SPEED();

   
extern CANON_DIRECTION GET_EXTERNAL_SPINDLE();

   
extern double GET_EXTERNAL_TOOL_LENGTH_OFFSET();

   
extern int GET_EXTERNAL_TOOL_MAX();

   
   
   
extern int GET_EXTERNAL_TOOL_SLOT();

   
   
extern CANON_TOOL_TABLE GET_EXTERNAL_TOOL_TABLE(int pocket);

   
extern double GET_EXTERNAL_TRAVERSE_RATE();
#line 41 "rs274ngc.h"

    
    
    

#line 53 "rs274ngc.h"











    



   
 












   




   



   


   



   



   



   
   



   


   
   
   

#line 131 "rs274ngc.h"

   
#line 144 "rs274ngc.h"

   
#line 198 "rs274ngc.h"

    
    
    

    
typedef enum {MODE_ABSOLUTE, MODE_INCREMENTAL}
DISTANCE_MODE;

    
typedef enum {R_PLANE, OLD_Z}
RETRACT_MODE;

typedef int ON_OFF;

typedef struct block_struct
{
#line 227 "rs274ngc.h"
    char     comment[256];
    int      d_number;
    double   f_number;
    int      g_modes[14];
    int      h_number;
    ON_OFF   i_flag;
    double   i_number;
    ON_OFF   j_flag;
    double   j_number;
    ON_OFF   k_flag;
    double   k_number;
    int      l_number;
    int      line_number;
    int      motion_to_be;
    int      m_count;
    int      m_modes[10];
    double   p_number;
    double   q_number;
    ON_OFF   r_flag;
    double   r_number;
    double   s_number;
    int      t_number;
    ON_OFF   x_flag;
    double   x_number;
    ON_OFF   y_flag;
    double   y_number;
    ON_OFF   z_flag;
    double   z_number;
} block;

typedef block * block_pointer;

   












 

typedef struct setup_struct
{
#line 291 "rs274ngc.h"
    int active_g_codes
        [12];                
    int active_m_codes
        [7];                
    double active_settings
        [3];               
    double axis_offset_x;                         
    double axis_offset_y;                         
    double axis_offset_z;                         
    block block1;                                 
    char blocktext[256];           
    CANON_MOTION_MODE control_mode;               
    int current_slot;                             
    double current_x;                             
    double current_y;                             
    double current_z;                             
    double cutter_comp_radius;                    
    int cutter_comp_side;                         
    double cycle_cc;                              
    double cycle_i;                               
    double cycle_j;                               
    double cycle_k;                               
    int cycle_l;                                  
    double cycle_p;                               
    double cycle_q;                               
    double cycle_r;                               
    DISTANCE_MODE distance_mode;                  
    int feed_mode;                                
    ON_OFF feed_override;                         
    double feed_rate;                             
    char filename[256];            
    FILE * file_pointer;                          
    ON_OFF flood;                                 
    int length_offset_index;                      
    CANON_UNITS length_units;                     
    int line_length;                              
    char linetext[256];            
    ON_OFF mist;                                  
    int motion_mode;                              
    int origin_index;                             
    double origin_offset_x;                       
    double origin_offset_y;                       
    double origin_offset_z;                       
    double parameters
        [5400];                
    int parameter_occurrence;                     
    int parameter_numbers[50];                    
    double parameter_values[50];                  
    ON_OFF percent_flag;                          
    CANON_PLANE plane;                            
    ON_OFF probe_flag;                            
    double program_x;                             
    double program_y;                             
    RETRACT_MODE retract_mode;                    
    int selected_tool_slot;                       
    int sequence_number;                          
    double speed;                                 
    CANON_SPEED_FEED_MODE speed_feed_mode;        
    ON_OFF speed_override;                        
    CANON_DIRECTION spindle_turning;              
    char stack[50][80];                           
    int stack_index;                              
    double tool_length_offset;                    
    int tool_max;                                 
    CANON_TOOL_TABLE tool_table
        [128 + 1];                     
    int tool_table_index;                         
    double traverse_rate;                         
} setup;

typedef setup * setup_pointer;

   
typedef int (*read_function_pointer) (char *, int *, block_pointer, double *);

    
   





 

   
extern int rs274ngc_close();

   
extern int rs274ngc_execute();

   
extern int rs274ngc_exit();

   
extern int rs274ngc_init();

   
extern int rs274ngc_load_tool_table();

   
extern int rs274ngc_open(const char *filename);

   
extern int rs274ngc_read(const char * mdi);

   
extern int rs274ngc_reset();

   
extern int rs274ngc_restore_parameters(const char * filename);

   
extern int rs274ngc_save_parameters(const char * filename,
const double parameters[]);

   
extern int rs274ngc_synch();

    
   







 

   
extern void rs274ngc_active_g_codes(int * codes);

   
extern void rs274ngc_active_m_codes(int * codes);

   
extern void rs274ngc_active_settings(double * settings);

   
   
extern void rs274ngc_error_text(int error_code, char * error_text,unsigned
int max_size);

   
   
extern void rs274ngc_file_name(char * file_name,unsigned int max_size);

   
extern int rs274ngc_line_length();

   
   
extern void rs274ngc_line_text(char * line_text, int max_size);

   
extern int rs274ngc_sequence_number();

   
   
   
extern void rs274ngc_stack_name(int stack_index, char * function_name,
int max_size);
#line 40 "main.c"
#line 1 "rs274ngc_return.h"
   





















 




#line 226 "rs274ngc_return.h"

#line 41 "main.c"
#line 42 "main.c"
#line 1 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"
 
 
 




 
 



 












  


 








#line 45 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"


  
  typedef unsigned int size_t;










    



    typedef unsigned short wchar_t;  
#line 74 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { __int64 quot, rem; } lldiv_t;
    


#line 95 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"
   



 

   




 
#line 114 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) __int64 atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) __int64 strtoll(const char * __restrict  ,
                               char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned __int64 strtoull(const char * __restrict  ,
                                         char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 414 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 502 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 531 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"

extern __declspec(__nothrow) __pure int abs(int  );
   



 

extern __declspec(__nothrow) __pure div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __pure long int labs(long int  );
   



 




extern __declspec(__nothrow) __pure ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __pure __int64 llabs(__int64  );
   



 




extern __declspec(__nothrow) __pure lldiv_t lldiv(__int64  , __int64  );
   











 
#line 612 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"



 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __pure __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __pure __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __pure __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 



 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 866 "C:\\Keil\\ARM\\RV31\\INC\\stdlib.h"


 
#line 43 "main.c"
#line 1 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
 
 
 
 




 








 











#line 37 "C:\\Keil\\ARM\\RV31\\INC\\string.h"


  
  typedef unsigned int size_t;








extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 184 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 200 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 223 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 238 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 261 "C:\\Keil\\ARM\\RV31\\INC\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 493 "C:\\Keil\\ARM\\RV31\\INC\\string.h"



 
#line 44 "main.c"

extern CANON_TOOL_TABLE _tools[];                  
extern int _tool_max;                              
extern char _parameter_file_name[];                

FILE * _outfile;                                   








 

 

























 

void report_error(                                 
int error_code,                                    
int print_stack)                                   
{
    char buffer[256];
    int k;

    rs274ngc_error_text(error_code, buffer, 5);    
    rs274ngc_error_text(error_code, buffer, 256);
    fprintf((& __stderr), "%s\r\n",
        ((buffer[0] == 0) ? "Unknown error, bad error code" : buffer));
    rs274ngc_line_text(buffer, 256);
    fprintf((& __stderr), "%s\r\n", buffer);
    if (print_stack == 1)
    {
        for (k = 0; ; k++)
        {
            rs274ngc_stack_name(k, buffer, 256);
            if (buffer[0] != 0)
                fprintf((& __stderr), "%s\r\n", buffer);
            else
                break;
        }
    }
}


 






















 

int interpret_from_keyboard(                       
int block_delete,                                  
int print_stack)                                   
{
    char line[256];
    int status;
	u16 i=0;
	char Buffer[256];
	u16 count=0;

    for(; ;)
    {
        printf("READ => ");
		
		while(1)
		{	
			if(USART_GetFlagStatus(((USART_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x3800)),((u16)0x0525))==SET)
			{	      
				i = USART_ReceiveData(((USART_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x3800)));
				if(count<256)
				{
					if(i=='%')
					{
						printf("%s\r\n",Buffer);	
						strcpy(line,Buffer);
						for(count=0;count<256;count++)			
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
        
        if (strcmp (line, "quit") == 0)
            return 0;
        status = rs274ngc_read(line);
        if ((status == 2) && (block_delete == 1));
        else if (status == 3);
        else if ((status != 2) &&
            (status != 0))
            report_error(status, print_stack);
        else
        {
            status = rs274ngc_execute();    
            if ((status == 1) ||
                (status == 2));
            else if (status != 0)
                report_error(status, print_stack);
        }
    }
}


 






























 

int interpret_from_file(                           
int do_next,                                       
int block_delete,                                  
int print_stack)                                   
{
    int status;
    char line[256];

    for(; ;)
    {
        status = rs274ngc_read(0);
        if ((status == 2) && (block_delete == 1))
            continue;
        else if (status == 3)
            break;
        if ((status != 0) &&         
            (status != 2))
        {
            report_error(status, print_stack);
            if ((status == 80) ||
                (do_next == 2))                    
            {
                status = 1;
                break;
            }
            else if (do_next == 1)                 
            {
                fprintf((& __stderr), "starting MDI\r\n");
                interpret_from_keyboard(block_delete, print_stack);
                fprintf((& __stderr), "continue program? y/n =>");
                gets(line);
                if (line[0] != 'y')
                {
                    status = 1;
                    break;
                }
                else
                    continue;
            }
            else                                   
                continue;
        }
        status = rs274ngc_execute();
        if ((status != 0) &&
            (status != 1) &&
            (status != 2))
        {
            report_error(status, print_stack);
            status = 1;
            if (do_next == 1)                      
            {
                fprintf((& __stderr), "starting MDI\r\n");
                interpret_from_keyboard(block_delete, print_stack);
                fprintf((& __stderr), "continue program? y/n =>");
                gets(line);
                if (line[0] != 'y')
                    break;
            }
            else if (do_next == 2)                 
                break;
        }
        else if (status == 1)
            break;
    }
    return ((status == 1) ? 1 : 0);
}


 
































 

int read_tool_file(                                
char * file_name)                                  
{






















































        _tools[5].id = 5;
        _tools[5].length = 1.5;
        _tools[5].diameter = 0.25;



    return 0;
}


 














 

int designate_parameter_file(char * file_name)
{
    FILE * test_port;

    fprintf((& __stderr), "name of parameter file => ");
    gets(file_name);
    test_port = fopen(file_name, "r");
    if (test_port == 0)
    {
        fprintf((& __stderr), "Cannot open %s\r\n", file_name);
        return 1;
    }
    fclose(test_port);
    return 0;
}


 
































 

int adjust_error_handling(
int args,
int * print_stack,
int * do_next)
{
    char buffer[80];
    int choice;

    for(;;)
    {
        fprintf((& __stderr), "enter a number:\r\n");
        fprintf((& __stderr), "1 = done with error handling\r\n");
        fprintf((& __stderr), "2 = %sprint stack on error\r\n",
            ((*print_stack == 1) ? "do not " : ""));
        if (args == 3)
        {
            if (*do_next == 0)                     
                fprintf((& __stderr),
                    "3 = stop on error (do not continue)\r\n");
            else                                   
                fprintf((& __stderr),
                    "3 = continue on error (do not stop)\r\n");
        }
        else if (args == 2)
        {
            if (*do_next == 0)                     
                fprintf((& __stderr),
                    "3 = mdi on error (do not continue or stop)\r\n");
            else if (*do_next == 1)                
                fprintf((& __stderr),
                        "3 = stop on error (do not mdi or continue)\r\n");
            else                                   
                fprintf((& __stderr),
                    "3 = continue on error (do not stop or mdi)\r\n");
        }
        fprintf((& __stderr), "enter choice => ");
        gets(buffer);
        if (sscanf(buffer, "%d", &choice) != 1)
            continue;
        if (choice == 1)
            break;
        else if (choice == 2)
            *print_stack = ((*print_stack == 0) ? 1 : 0);
        else if ((choice == 3) && (args == 3))
            *do_next = ((*do_next == 0) ? 2 : 0);
        else if ((choice == 3) && (args == 2))
            *do_next = ((*do_next == 2) ? 0 : (*do_next + 1));
    }
    return 0;
}


    


 
 
 
 
ErrorStatus HSEStartUpStatus;

 
void RCC_Configuration(void);
void NVIC_Configuration(void);
void GPIO_Configuration(void);
void USART_Configuration(void);

 





 


































































 







 

int main(int argc, char ** argv)
{  
 
	int status;
	int choice;
	int do_next;                                   
	int block_delete;
	char buffer[80];
	int tool_flag;
	int gees[12];
	int ems[7];
	double sets[3];
	char default_name[] = "rs274ngc.var";
	int print_stack;
	u16 i;
 	
	
	
   
   




	 
	RCC_Configuration();
	
	 
	NVIC_Configuration();
	
	 
	GPIO_Configuration();
	
	 
	USART_Configuration();
	
	
	
	

    
 
  	








 
	buffer[0]='1';
	i=0;
	choice=1;

	do_next = 2;                              
	block_delete = 0;
	print_stack = 0;
	tool_flag = 0;
	strcpy(_parameter_file_name, default_name);
	_outfile = (& __stdout);                        
	
	for(; ;)
	{
	    fprintf((& __stderr), "\r\nenter a number:\r\n");
	    fprintf((& __stderr), "1 = start interpreting\r\n");
	    fprintf((& __stderr), "2 = choose parameter file ...\r\n");
	    fprintf((& __stderr), "3 = read tool file ...\r\n");
	    fprintf((& __stderr), "4 = turn block delete switch %s\r\n",
	        ((block_delete == 0) ? "ON" : "OFF"));
	    fprintf((& __stderr), "5 = adjust error handling...\r\n");
	    fprintf((& __stderr), "enter choice => 1\r\n");
	    
	    
	    
	    if (choice == 1)
	        break;
	    else if (choice == 2)
	    {
	        if (designate_parameter_file(_parameter_file_name) != 0)
				return 1;
 
	    }
	    else if (choice == 3)
	    {
	        if (read_tool_file("") != 0)
				return 1;
 
	        tool_flag = 1;
	    }
	    else if (choice == 4)
	        block_delete = ((block_delete == 0) ? 1 : 0);
	    else if (choice == 5)
	        adjust_error_handling(argc, &print_stack, &do_next);
	}
	fprintf((& __stderr), "executing\r\n");
	if (tool_flag == 0)
	{
	    if (read_tool_file("rs274ngc.tool_default") != 0)
			return 1;
 
	}
	
	if (argc == 3)
	{
	    _outfile = fopen(argv[2], "w");
	    if (_outfile == 0)
	    {
	        fprintf((& __stderr), "could not open output file %s\r\n", argv[2]);
			return 1;
 
	    }
	}
	
	if ((status = rs274ngc_init()) != 0)
	{
	    report_error(status, print_stack);
		return 1;
 
	}
	

	    status = interpret_from_keyboard(block_delete, print_stack);














	rs274ngc_line_length();                        
	rs274ngc_sequence_number();                    
	rs274ngc_active_g_codes(gees);                 
	rs274ngc_active_m_codes(ems);                  
	rs274ngc_active_settings(sets);                
	rs274ngc_exit();                               
	return(status);
 
 








 
}

#line 805 "main.c"







 
void RCC_Configuration(void)
{
   
  RCC_DeInit();

   
  RCC_HSEConfig(((u32)0x00010000));

   
  HSEStartUpStatus = RCC_WaitForHSEStartUp();

  if(HSEStartUpStatus == SUCCESS)
  {
     
    RCC_HCLKConfig(((u32)0x00000000)); 
  
     
    RCC_PCLK2Config(((u32)0x00000000)); 

     
    RCC_PCLK1Config(((u32)0x00000400));

     
    FLASH_SetLatency(((u32)0x00000002));
     
    FLASH_PrefetchBufferCmd(((u32)0x00000010));

     
    RCC_PLLConfig(((u32)0x00010000), ((u32)0x001C0000));

      
    RCC_PLLCmd(ENABLE);

     
    while(RCC_GetFlagStatus(((u8)0x39)) == RESET)
    {
    }

     
    RCC_SYSCLKConfig(((u32)0x00000002));

     
    while(RCC_GetSYSCLKSource() != 0x08)
    {
    }
  }
   
   
  RCC_APB2PeriphClockCmd(((u32)0x00004000) | ((u32)0x00000004), ENABLE);
}







 
void NVIC_Configuration(void)
{




    
  NVIC_SetVectorTable(((u32)0x08000000), 0x0);   

}







 
void GPIO_Configuration(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;

   
  GPIO_InitStructure.GPIO_Pin = ((u16)0x0200);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(((GPIO_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);
    
   
  GPIO_InitStructure.GPIO_Pin = ((u16)0x0400);
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(((GPIO_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x0800)), &GPIO_InitStructure);
}







 
void USART_Configuration(void)
{
  USART_InitTypeDef USART_InitStructure;
  USART_ClockInitTypeDef  USART_ClockInitStructure;


 
  













 
USART_ClockInitStructure.USART_Clock = ((u16)0x0000);
USART_ClockInitStructure.USART_CPOL = ((u16)0x0000);
USART_ClockInitStructure.USART_CPHA = ((u16)0x0200);
USART_ClockInitStructure.USART_LastBit = ((u16)0x0000);
 
USART_ClockInit(((USART_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x3800)), &USART_ClockInitStructure);

USART_InitStructure.USART_BaudRate = 115200;
USART_InitStructure.USART_WordLength = ((u16)0x0000);
USART_InitStructure.USART_StopBits = ((u16)0x0000);
USART_InitStructure.USART_Parity = ((u16)0x0000) ;
USART_InitStructure.USART_HardwareFlowControl = 

((u16)0x0000);


USART_InitStructure.USART_Mode = ((u16)0x0004) | ((u16)0x0008);
 
USART_Init(((USART_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x3800)), &USART_InitStructure);
    
   
  USART_Cmd(((USART_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x3800)), ENABLE);
}







 
int fputc(int ch, FILE *f)
{
   
   
  USART_SendData(((USART_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x3800)), (u8) ch);

   
  while(USART_GetFlagStatus(((USART_TypeDef *) ((((u32)0x40000000) + 0x10000) + 0x3800)), ((u16)0x0040)) == RESET)
  {
  }

  return ch;
}

 

