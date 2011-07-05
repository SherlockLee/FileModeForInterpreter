#line 1 "canon_pre.c"
   





















 

   













 

    

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
#line 44 "canon_pre.c"
#line 1 "C:\\Keil\\ARM\\RV31\\INC\\math.h"




 





 












 







 






#line 47 "C:\\Keil\\ARM\\RV31\\INC\\math.h"

#line 61 "C:\\Keil\\ARM\\RV31\\INC\\math.h"

   




 















 
#line 92 "C:\\Keil\\ARM\\RV31\\INC\\math.h"











 





extern __softfp unsigned __ARM_dcmp4(double  , double  );
extern __softfp unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __softfp int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __softfp int __ARM_fpclassify(double  );
     
     

__inline __declspec(__nothrow) __softfp int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
__inline __declspec(__nothrow) __softfp int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

__inline __declspec(__nothrow) __softfp int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
__inline __declspec(__nothrow) __softfp int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

__inline __declspec(__nothrow) __softfp int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
__inline __declspec(__nothrow) __softfp int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

__inline __declspec(__nothrow) __softfp int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
__inline __declspec(__nothrow) __softfp int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

__inline __declspec(__nothrow) __softfp int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
__inline __declspec(__nothrow) __softfp int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

__inline __declspec(__nothrow) __softfp int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
__inline __declspec(__nothrow) __softfp int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 210 "C:\\Keil\\ARM\\RV31\\INC\\math.h"



   
  typedef float float_t;
  typedef double double_t;







extern const int math_errhandling;



extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __pure double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __pure double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    __inline double _sqrt(double __x) { return sqrt(__x); }




    __inline float _sqrtf(float __x) { return (float)sqrt(__x); }

    



 

extern __declspec(__nothrow) __pure double ceil(double  );
    
    
extern __declspec(__nothrow) __pure double fabs(double  );
    
    

extern __declspec(__nothrow) __pure double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
__inline __declspec(__nothrow) __pure double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
__inline __declspec(__nothrow) __pure float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 444 "C:\\Keil\\ARM\\RV31\\INC\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __pure double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __pure float _fabsf(float);  
__inline __declspec(__nothrow) __pure float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __pure float ceilf(float  );
extern __declspec(__nothrow) __pure float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 824 "C:\\Keil\\ARM\\RV31\\INC\\math.h"





#line 979 "C:\\Keil\\ARM\\RV31\\INC\\math.h"











#line 1181 "C:\\Keil\\ARM\\RV31\\INC\\math.h"



 
#line 45 "canon_pre.c"
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



 
#line 46 "canon_pre.c"
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



 
#line 47 "canon_pre.c"





    
extern FILE * _outfile;

    

static CANON_PLANE       _active_plane = 1;
static int               _active_slot = 1;
static double            _feed_rate = 0.0;
static int               _flood = 0;
static double            _length_unit_factor = 1;  
static CANON_UNITS       _length_unit_type = 2;
static int               _line_number = 1;
static int               _mist = 0;
static CANON_MOTION_MODE _motion_mode = 3;
    
char                     _parameter_file_name[100];
#line 77 "canon_pre.c"
static double            _probe_position_x = 0;
static double            _probe_position_y = 0;
static double            _probe_position_z = 0;
#line 89 "canon_pre.c"
static double            _program_origin_x = 0;
static double            _program_origin_y = 0;
static double            _program_origin_z = 0;
#line 101 "canon_pre.c"
static double            _program_position_x = 0;
static double            _program_position_y = 0;
static double            _program_position_z = 0;
static double            _spindle_speed;
static CANON_DIRECTION   _spindle_turning;
int                      _tool_max = 68;           
CANON_TOOL_TABLE         _tools[128];   
static double            _traverse_rate;

    

   












 

extern void rs274ngc_line_text(char * line_text, int max_size);

void print_nc_line_number()
{
    char text[256];
    int k;
    int m;

    rs274ngc_line_text(text, 256);
    for (k = 0;
        ((k < 256) &&
        ((text[k] == '\t') || (text[k] == ' ') || (text[k] == '/')));
        k++);
    if ((k < 256) && ((text[k] == 'n') || (text[k] == 'N')))
    {
        fputc('N', _outfile);
        for (k++, m = 0;
            ((k < 256) && (text[k] >= '0') && (text[k] <= '9'));
            k++, m++)
        fputc(text[k], _outfile);
        for (; m < 6; m++)
            fputc(' ', _outfile);
    }
    else if (k < 256)
        fprintf(_outfile, "N..... ");
}


#line 212 "canon_pre.c"

    

    void SET_ORIGIN_OFFSETS(
    double x, double y, double z
#line 226 "canon_pre.c"
    )
{
    fprintf(_outfile, "%5d ", _line_number++);
    print_nc_line_number();
    fprintf(_outfile, "SET_ORIGIN_OFFSETS(%.4f, %.4f, %.4f"
#line 240 "canon_pre.c"
        ")\r\n", x, y, z
#line 250 "canon_pre.c"
        );
    _program_position_x = _program_position_x + _program_origin_x - x;
    _program_position_y = _program_position_y + _program_origin_y - y;
    _program_position_z = _program_position_z + _program_origin_z - z;
#line 266 "canon_pre.c"

    _program_origin_x = x;
    _program_origin_y = y;
    _program_origin_z = z;
#line 279 "canon_pre.c"
}


void USE_LENGTH_UNITS(CANON_UNITS in_unit)
{
    if (in_unit == 1)
    {
        if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "USE_LENGTH_UNITS(CANON_UNITS_INCHES)\r\n"); } else;
        if (_length_unit_type == 2)
        {
            _length_unit_type = 1;
            _length_unit_factor = 25.4;
            _program_origin_x = (_program_origin_x / 25.4);
            _program_origin_y = (_program_origin_y / 25.4);
            _program_origin_z = (_program_origin_z / 25.4);
            _program_position_x = (_program_position_x / 25.4);
            _program_position_y = (_program_position_y / 25.4);
            _program_position_z = (_program_position_z / 25.4);
        }
    }
    else if (in_unit == 2)
    {
        if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "USE_LENGTH_UNITS(CANON_UNITS_MM)\r\n"); } else;
        if (_length_unit_type == 1)
        {
            _length_unit_type = 2;
            _length_unit_factor = 1.0;
            _program_origin_x = (_program_origin_x * 25.4);
            _program_origin_y = (_program_origin_y * 25.4);
            _program_origin_z = (_program_origin_z * 25.4);
            _program_position_x = (_program_position_x * 25.4);
            _program_position_y = (_program_position_y * 25.4);
            _program_position_z = (_program_position_z * 25.4);
        }
    }
    else
        if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "USE_LENGTH_UNITS(UNKNOWN)\r\n"); } else;
}


    
void SET_TRAVERSE_RATE(double rate)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_TRAVERSE_RATE(%.4f)\r\n", rate); } else;
    _traverse_rate = rate;
}


void STRAIGHT_TRAVERSE(
double x, double y, double z
#line 338 "canon_pre.c"
)
{
    fprintf(_outfile, "%5d ", _line_number++);
    print_nc_line_number();
    fprintf(_outfile, "STRAIGHT_TRAVERSE(%.4f, %.4f, %.4f"
#line 352 "canon_pre.c"
        ")\r\n", x, y, z
#line 362 "canon_pre.c"
        );
    _program_position_x = x;
    _program_position_y = y;
    _program_position_z = z;
#line 375 "canon_pre.c"
}


    
void SET_FEED_RATE(double rate)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_FEED_RATE(%.4f)\r\n", rate); } else;
    _feed_rate = rate;
}


void SET_FEED_REFERENCE(CANON_FEED_REFERENCE reference)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_FEED_REFERENCE(%s)\r\n", (reference == 1) ? "CANON_WORKPIECE" : "CANON_XYZ"); } else;

}


extern void SET_MOTION_CONTROL_MODE(CANON_MOTION_MODE mode)
{
    if (mode == 1)
    {
        if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_MOTION_CONTROL_MODE(CANON_EXACT_STOP)\r\n"); } else;
        _motion_mode = 1;
    }
    else if (mode == 2)
    {
        if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_MOTION_CONTROL_MODE(CANON_EXACT_PATH)\r\n"); } else;
        _motion_mode = 2;
    }
    else if (mode == 3)
    {
        if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_MOTION_CONTROL_MODE(CANON_CONTINUOUS)\r\n"); } else;
        _motion_mode = 3;
    }
    else
        if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_MOTION_CONTROL_MODE(UNKNOWN)\r\n"); } else;
}


void SELECT_PLANE(CANON_PLANE in_plane)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SELECT_PLANE(CANON_PLANE_%s)\r\n", ((in_plane == 1) ? "XY" : (in_plane == 2) ? "YZ" : (in_plane == 3) ? "XZ" : "UNKNOWN")); } else;



    _active_plane = in_plane;
}


void SET_CUTTER_RADIUS_COMPENSATION(double radius)
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_CUTTER_RADIUS_COMPENSATION(%.4f)\r\n", radius); } else;}

void START_CUTTER_RADIUS_COMPENSATION(int side)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "START_CUTTER_RADIUS_COMPENSATION(%s)\r\n", (side == 2) ? "LEFT" : (side == 1) ? "RIGHT" : "UNKNOWN"); } else;


}


void STOP_CUTTER_RADIUS_COMPENSATION()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "STOP_CUTTER_RADIUS_COMPENSATION()\r\n"); } else;}

void START_SPEED_FEED_SYNCH()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "START_SPEED_FEED_SYNCH()\r\n"); } else;}

void STOP_SPEED_FEED_SYNCH()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "STOP_SPEED_FEED_SYNCH()\r\n"); } else;}

    

void ARC_FEED(
double first_end, double second_end,
double first_axis, double second_axis, int rotation, double axis_end_point
#line 459 "canon_pre.c"
)
{
    fprintf(_outfile, "%5d ", _line_number++);
    print_nc_line_number();
    fprintf(_outfile, "ARC_FEED(%.4f, %.4f, %.4f, %.4f, %d, %.4f"
#line 473 "canon_pre.c"
        ")\r\n", first_end, second_end, first_axis, second_axis,
        rotation, axis_end_point
#line 484 "canon_pre.c"
        );
    if (_active_plane == 1)
    {
        _program_position_x = first_end;
        _program_position_y = second_end;
        _program_position_z = axis_end_point;
    }
    else if (_active_plane == 2)
    {
        _program_position_x = axis_end_point;
        _program_position_y = first_end;
        _program_position_z = second_end;
    }
    else                                           
    {
        _program_position_x = second_end;
        _program_position_y = axis_end_point;
        _program_position_z = first_end;
    }
#line 512 "canon_pre.c"
}


void STRAIGHT_FEED(
double x, double y, double z
#line 526 "canon_pre.c"
)
{
    fprintf(_outfile, "%5d ", _line_number++);
    print_nc_line_number();
    fprintf(_outfile, "STRAIGHT_FEED(%.4f, %.4f, %.4f"
#line 540 "canon_pre.c"
        ")\r\n", x, y, z
#line 550 "canon_pre.c"
        );
    _program_position_x = x;
    _program_position_y = y;
    _program_position_z = z;
#line 563 "canon_pre.c"
}


   

 

void STRAIGHT_PROBE(
double x, double y, double z
#line 581 "canon_pre.c"
)
{
    double distance;
    double dx, dy, dz;
    double backoff;

    dx = (_program_position_x - x);
    dy = (_program_position_y - y);
    dz = (_program_position_z - z);
    distance = sqrt((dx * dx) + (dy * dy) + (dz * dz));

    fprintf(_outfile, "%5d ", _line_number++);
    print_nc_line_number();
    fprintf(_outfile, "STRAIGHT_PROBE(%.4f, %.4f, %.4f"
#line 604 "canon_pre.c"
        ")\r\n", x, y, z
#line 614 "canon_pre.c"
        );
    _probe_position_x = x;
    _probe_position_y = y;
    _probe_position_z = z;
#line 627 "canon_pre.c"
    if (distance == 0)
    {
        _program_position_x = _program_position_x;
        _program_position_y = _program_position_y;
        _program_position_z = _program_position_z;
    }
    else
    {
        backoff = ((_length_unit_type == 2) ? 0.254 : 0.01);
        _program_position_x = (x + (backoff * (dx / distance)));
        _program_position_y = (y + (backoff * (dy / distance)));
        _program_position_z = (z + (backoff * (dz / distance)));
    }
#line 649 "canon_pre.c"
}


   







 

void DWELL(double seconds)
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "DWELL(%.4f)\r\n", seconds); } else;}

    
void SPINDLE_RETRACT_TRAVERSE()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SPINDLE_RETRACT_TRAVERSE()\r\n"); } else;}

void START_SPINDLE_CLOCKWISE()
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "START_SPINDLE_CLOCKWISE()\r\n"); } else;
    _spindle_turning = ((_spindle_speed == 0) ? 1 :
    2);
}


void START_SPINDLE_COUNTERCLOCKWISE()
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "START_SPINDLE_COUNTERCLOCKWISE()\r\n"); } else;
    _spindle_turning = ((_spindle_speed == 0) ? 1 :
    3);
}


void SET_SPINDLE_SPEED(double rpm)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SET_SPINDLE_SPEED(%.4f)\r\n", rpm); } else;
    _spindle_speed = rpm;
}


void STOP_SPINDLE_TURNING()
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "STOP_SPINDLE_TURNING()\r\n"); } else;
    _spindle_turning = 1;
}


void SPINDLE_RETRACT()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SPINDLE_RETRACT()\r\n"); } else;}

void ORIENT_SPINDLE(double orientation, CANON_DIRECTION direction)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "ORIENT_SPINDLE(%.4f, %s)\r\n", orientation, (direction == 2) ? "CANON_CLOCKWISE" : "CANON_COUNTERCLOCKWISE"); } else;


}


void USE_NO_SPINDLE_FORCE()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "USE_NO_SPINDLE_FORCE()\r\n"); } else;}

    

void USE_TOOL_LENGTH_OFFSET(double length)
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "USE_TOOL_LENGTH_OFFSET(%.4f)\r\n", length); } else;}

void CHANGE_TOOL(int slot)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "CHANGE_TOOL(%d)\r\n", slot); } else;
    _active_slot = slot;
}

void SELECT_TOOL(int slot)
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "SELECT_TOOL(%d)\r\n", slot); } else;}

    

void CLAMP_AXIS(CANON_AXIS axis)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "CLAMP_AXIS(%s)\r\n", (axis == 1) ? "CANON_AXIS_X" : (axis == 2) ? "CANON_AXIS_Y" : (axis == 3) ? "CANON_AXIS_Z" : (axis == 4) ? "CANON_AXIS_A" : (axis == 6) ? "CANON_AXIS_C" : "UNKNOWN"); } else;





}


void COMMENT(char *s)
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "COMMENT(\"%s\")\r\n", s); } else;}

void DISABLE_FEED_OVERRIDE()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "DISABLE_FEED_OVERRIDE()\r\n"); } else;}

void DISABLE_SPEED_OVERRIDE()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "DISABLE_SPEED_OVERRIDE()\r\n"); } else;}

void ENABLE_FEED_OVERRIDE()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "ENABLE_FEED_OVERRIDE()\r\n"); } else;}

void ENABLE_SPEED_OVERRIDE()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "ENABLE_SPEED_OVERRIDE()\r\n"); } else;}

void FLOOD_OFF()
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "FLOOD_OFF()\r\n"); } else;
    _flood = 0;
}


void FLOOD_ON()
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "FLOOD_ON()\r\n"); } else;
    _flood = 1;
}


void INIT_CANON()
{
}


void MESSAGE(char *s)
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "MESSAGE(\"%s\")\r\n", s); } else;}

void MIST_OFF()
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "MIST_OFF()\r\n"); } else;
    _mist = 0;
}


void MIST_ON()
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "MIST_ON()\r\n"); } else;
    _mist = 1;
}


void PALLET_SHUTTLE()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "PALLET_SHUTTLE()\r\n"); } else;}

void TURN_PROBE_OFF()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "TURN_PROBE_OFF()\r\n"); } else;}

void TURN_PROBE_ON()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "TURN_PROBE_ON()\r\n"); } else;}

void UNCLAMP_AXIS(CANON_AXIS axis)
{
    if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "UNCLAMP_AXIS(%s)\r\n", (axis == 1) ? "CANON_AXIS_X" : (axis == 2) ? "CANON_AXIS_Y" : (axis == 3) ? "CANON_AXIS_Z" : (axis == 4) ? "CANON_AXIS_A" : (axis == 5) ? "CANON_AXIS_B" : (axis == 6) ? "CANON_AXIS_C" : "UNKNOWN"); } else;
#line 809 "canon_pre.c"
}


    

void PROGRAM_STOP()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "PROGRAM_STOP()\r\n"); } else;}

void OPTIONAL_PROGRAM_STOP()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "OPTIONAL_PROGRAM_STOP()\r\n"); } else;}

void PROGRAM_END()
{if (1) { fprintf(_outfile, "%5d ", _line_number++); print_nc_line_number(); fprintf(_outfile, "PROGRAM_END()\r\n"); } else;}

    

   






 

   





 

    
double GET_EXTERNAL_FEED_RATE()
{
    return _feed_rate;
}


    
int GET_EXTERNAL_FLOOD()
{
    return _flood;
}


    
extern double GET_EXTERNAL_LENGTH_UNIT_FACTOR()
{
    return 1/_length_unit_factor;
}


    
CANON_UNITS GET_EXTERNAL_LENGTH_UNIT_TYPE()
{
    return _length_unit_type;
}


    
extern int GET_EXTERNAL_MIST()
{
    return _mist;
}


   
extern CANON_MOTION_MODE GET_EXTERNAL_MOTION_CONTROL_MODE()
{
    return _motion_mode;
}


   











































 

void GET_EXTERNAL_PARAMETER_FILE_NAME(
char * file_name,                                  
unsigned int max_size)                                      
{
    if (strlen(_parameter_file_name) < max_size)
        strcpy(file_name, _parameter_file_name);
    else
        file_name[0] = 0;
}


CANON_PLANE GET_EXTERNAL_PLANE()
{
    return _active_plane;
}


#line 954 "canon_pre.c"

#line 962 "canon_pre.c"

#line 970 "canon_pre.c"

    
double GET_EXTERNAL_POSITION_X()
{
    return _program_position_x;
}


    
double GET_EXTERNAL_POSITION_Y()
{
    return _program_position_y;
}


    
double GET_EXTERNAL_POSITION_Z()
{
    return _program_position_z;
}


#line 1000 "canon_pre.c"

#line 1009 "canon_pre.c"

#line 1018 "canon_pre.c"

   
 
double GET_EXTERNAL_PROBE_POSITION_X()
{
    return _probe_position_x;
}


   
 
double GET_EXTERNAL_PROBE_POSITION_Y()
{
    return _probe_position_y;
}


   
 
double GET_EXTERNAL_PROBE_POSITION_Z()
{
    return _probe_position_z;
}


    
    
    
extern double GET_EXTERNAL_PROBE_VALUE()
{
    return 1.0;
}


    
    
extern int GET_EXTERNAL_QUEUE_EMPTY()
{
    return 1;
}


    
double GET_EXTERNAL_SPEED()
{
    return _spindle_speed;
}


    
extern CANON_DIRECTION GET_EXTERNAL_SPINDLE()
{
    return _spindle_turning;
}


   

 
extern int GET_EXTERNAL_TOOL_SLOT()
{
    return _active_slot;
}


    
int GET_EXTERNAL_TOOL_MAX()
{
    return _tool_max;
}


   
 
extern CANON_TOOL_TABLE GET_EXTERNAL_TOOL_TABLE(int pocket)
{
    return _tools[pocket];
}


    
double GET_EXTERNAL_TRAVERSE_RATE()
{
    return _traverse_rate;
}
