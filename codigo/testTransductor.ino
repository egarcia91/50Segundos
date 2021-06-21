// Un pulso basico aplicado en los pines A3 y A4 aumentando la frecuencia
#include <Wire.h>
// #include <Milibreriams.h>
// MS5837_30BA01 I2C address is 0x76(108)
#define Addr 0x76
#include <iostream>
#include <bitset>
#include <string>
using namespace std;
//#define periodo 1

#define frecuencia 5  
int periodo = 1000;
unsigned long Coff[6], Ti = 0, offi = 0, sensi = 0;
unsigned int data[3];

int delay_prim=50; //Este seria el delay de 5s
int delay_critic= 60; //Este seria el delay de 25s
float prof_critic=1010; //Profundidad critica suponer que son 80cm

float SPr=1;
int CountCritic=0;
void setup()
{
  delay(periodo);
  digitalWrite(A3,LOW);
  delay(periodo);
  digitalWrite(A3,HIGH);
  
}
void loop(){
  for(int i = 5000; i > 0; )
  {
    delay(periodo);
    digitalWrite(A3,LOW);
    digitalWrite(A4,HIGH);
    delay(periodo);
    digitalWrite(A4,LOW);
    digitalWrite(A3,HIGH);
    i-=periodo;
    //  senialParaDriver("UUUUUUU");
 }
 if(periodo > 10 ){
    periodo=periodo/10;
 }else{
    periodo = 1000;
 }
 
  

}
