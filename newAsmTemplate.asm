// PIC16F877A Configuration Bit Settings

// 'C' source line config statements

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
#define _XTAL_FREQ 20000000 

#include <xc.h>

void __interrupt() isr(void){  //Interrupt Service Routine
    if(INTF==1){               //Check whether the interrupt is ON
        INTF = 0;              //Clear the interrupt
        
        if(RB2==0 && RB1==0){
        
     //Motor 1 OFF
        RC0 = 0;              //Make IN1 LOW
        RC1 = 0;              //Make IN2 LOW
        
     //Motor 2 ON
        RC3 = 1;             //Make IN3 HIGH
        RC5 = 0;             //Make IN4 LOW
        __delay_ms(500);     //Motor 2 ON for 500ms
        RC3 = 0;             //Make IN3 LOW 
    }
  }
}
      
void main(void){
     TRISB0 = 1;        //Make sensor 3 as input
     TRISB1 = 1;        //Make sensor 2 as input
     TRISB2 = 1;        //Make sensor 1 as input
     
     TRISC0 = 0;       //Make IN1 as output
     TRISC1 = 0;       //Make IN2 as output
     TRISC3 = 0;       //Make IN3 as output
     TRISC5 = 0;       //Make IN4 as output
     INTF = 0;         //Clear the interrupt
    
     GIE = 1;          //Enable global interrupt bit
     PEIE = 1;         //Enable the peripheral interrupt bit
     INTE = 1;         //Enable RB0 as external interrupt bit

     PORTC = 0X00;     //Make PORTC LOW
    while(1){
         RC0 = 0;      //Make IN1 LOW
     //Motor 2 OFF
         RC3 = 0;      //Make IN3 LOW
         RC5 = 0;      //Make IN4 LOW
        
        if(RB2==0 && RB1==1 && RB0==1){
    //Motor 1 ON
            RC1 = 1;   //Make IN2 HIGH
        }else if(RB2==0 && RB1==0 && RB0==1){
              //MOTOR 1 ON
            RC1 = 1;   //Make IN2 HIGH
        }else{
            RC0 = 0;   //Make IN1 LOW
            RC0 = 0;   //Make IN2 LOW
            RC3 = 0;   //Make IN3 LOW
            RC5 = 0;   //Make IN4 LOW
    }
  }
}


