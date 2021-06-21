// Distributed with a free-will license.
// Use it any way you want, profit or free, provided it fits in the licenses of its associated works.
// MS5837_30BA01
// This code is designed to work with the MS5837_30BA01_I2CS I2C Mini Module available from ControlEverything.com.
// https://www.controleverything.com/content/Pressure?sku=MS5837-30BA01_I2CS#tabs-0-product_tabset-2

#include <Wire.h>
// #include <Milibreriams.h>
// MS5837_30BA01 I2C address is 0x76(108)
#define Addr 0x76
#include <iostream>
#include <bitset>
#include <string>
using namespace std;

#define frecuencia 1
unsigned long coff[6], ti = 0, offi = 0, sensi = 0;
unsigned int data[3];

int delayTodoOK = 500; //Este seria el delay de 5s
int delayEstadoCritico = 600; //Este seria el delay de 25s
float presionCritica = 1005; //Profundidad critica suponer que son 80cm

float presionSensada = 1000; // 1000mbar es 1 atmosfera de inicio
int alertaEstadoCritico = 0;
int limiteAlertasCriticas = 5;

void setup(){
	calibrarSensorPresion();
}

void loop() {
	//float pressure = saberPresion();
	//Serial.print(pressure);
	//Serial.println("mbar");

	presionSensada = saberPresion();

	if( presionSensada < presionCritica ){
		alertaEstadoCritico = 0;
		delay(delayTodoOK);
	} else {
		alertaEstadoCritico += 1;
		delay(delayEstadoCritico);
	}

	Serial.println(alertaEstadoCritico);

	if(alertaEstadoCritico > limiteAlertasCriticas){
		emitirSenialAlerta("COLLAR 001 SOS");
	}

	Serial.print(presionSensada);
	Serial.println("mbar");
}

void calibrarSensorPresion(){
	// Initialise I2C communication as MASTER
	Wire.begin();
	// Initialise Serial Communication, set baud rate = 9600
	Serial.begin(9600);

	// Read cofficients values stored in EPROM of the device
	for(int i = 0; i < 6; i++){
		// Start I2C Transmission
		Wire.beginTransmission(Addr);
		// Select data register
		Wire.write(0xA2 + (2 * i));
		// Stop I2C Transmission
		Wire.endTransmission();

		// Request 2 bytes of data
		Wire.requestFrom(Addr, 2);

		// Read 2 bytes of data
		// coff msb, coff lsb
		if(Wire.available() == 2){
			data[0] = Wire.read();
			data[1] = Wire.read();
		}

		// Convert the data
		coff[i] = ((data[0] * 256) + data[1]);
	}

	delay(300);
}


float saberPresion(){

	// Start I2C Transmission
	Wire.beginTransmission(Addr);
	// Send reset command 
	Wire.write(0x1E);
	// Stop I2C Transmission
	Wire.endTransmission();
	delay(500);

	// Start I2C Transmission
	Wire.beginTransmission(Addr);
	// Refresh pressure with the OSR = 256 
	Wire.write(0x40);
	// Stop I2C Transmission
	Wire.endTransmission();
	delay(500);

	// Start I2C Transmission
	Wire.beginTransmission(Addr);
	// Select data register 
	Wire.write(0x00);
	// Stop I2C Transmission
	Wire.endTransmission();

	// Request 3 bytes of data
	Wire.requestFrom(Addr, 3);

	// Read 3 bytes of data
	// ptemp_msb1, ptemp_msb, ptemp_lsb
	if(Wire.available() == 3){
		data[0] = Wire.read();
		data[1] = Wire.read();
		data[2] = Wire.read();
	}

	// Convert the data 
	unsigned long ptemp = ((data[0] * 65536.0) + (data[1] * 256.0) + data[2]);

	// Start I2C Transmission
	Wire.beginTransmission(Addr);
	// Refresh temperature with the OSR = 256 
	Wire.write(0x50);
	// Stop I2C Transmission
	Wire.endTransmission();
	delay(500);

	// Start I2C Transmission
	Wire.beginTransmission(Addr);
	// Select data register
	Wire.write(0x00);
	// Stop I2C Transmission
	Wire.endTransmission();

	// Request 3 bytes of data
	Wire.requestFrom(Addr, 3);

	// Read 3 bytes of data
	// temp_msb1, temp_msb, temp_lsb
	if(Wire.available() == 3){
		data[0] = Wire.read();
		data[1] = Wire.read();
		data[2] = Wire.read();
	}

	// Convert the data
	unsigned long temp = ((data[0] * 65536.0) + (data[1] * 256.0) + data[2]);

	// Pressure and Temperature Calculations
	// 1st order temperature and pressure compensation
	// Difference between actual and reference temperature
	unsigned long dT = temp - ((coff[4] * 256));
	temp = 2000 + (dT * (coff[5] / pow(2, 23)));

	// Offset and Sensitivity calculation
	unsigned long long off = coff[1] *  65536 + (coff[3] * dT) / 128;
	unsigned long long sens = coff[0] * 32768 + (coff[2] * dT) / 256;

	// 2nd order temperature and pressure compensation
	if(temp >= 2000){
		ti = 2 * ((dT * dT) / pow(2,37));
		offi = ((temp - 2000) * (temp - 2000)) / 16;
		sensi = 0;
	} else if(temp < 2000){
		ti = 3 * ((dT * dT) / (pow(2,33)));
		offi = 3 * ((pow((temp - 2000), 2))) / 2;
		sensi = 5 * ((pow((temp - 2000),2))) / 8;
		if(temp < - 1500){
			offi = offi + 7 * ((pow((temp + 1500), 2)));
			sensi = sensi + 4 * ((pow((temp + 1500), 2))) ;
		}
	}

	// Adjust temp, off, sens based on 2nd order compensation
	temp -= ti;
	off -= offi;
	sens -= sensi;

	// Convert the final data
	ptemp = (((ptemp * sens) / 2097152) - off);
	ptemp /= 8192;
	float pressure = ptemp / 10.0;
	float ctemp = temp / 100.0;
	float fTemp = ctemp * 1.8 + 32.0;

	// Output data to serial monitor
	Serial.print("Temperature in Celsius : ");
	Serial.print(ctemp);
	Serial.println(" C");
	//Serial.print("Temperature in Fahrenheit : ");
	//Serial.print(fTemp);
	//Serial.println(" F");
	Serial.print("Pressure : ");
	Serial.print(pressure);
	Serial.println(" mbar"); 
	return pressure;
	delay(500); 
}

void emitirSenialAlerta(String informacion){

	String mensajeEncodeado = encodeoMensaje(informacion);
	int largoMensaje = mensajeEncodeado.length();
	float tau = 1/frecuencia;

	Serial.print("empiezo a mandar el mensaje");

	for(int i = 0; i < largoMensaje; i++){
		delay(tau*1000/2);
		char valor = mensajeEncodeado[i];
		if(valor == '1'){
			//# sp10nOff.value = True
			//# sn10nOff.value = False 
			digitalWrite(3, LOW);
			digitalWrite(13, HIGH);
			Serial.println("5v+");
		} else if( valor == '0'){
			Serial.println("5v-");
			digitalWrite(13, LOW);
			digitalWrite(3, HIGH);
			//# sp10nOff.value = False
			//# sn10nOff.value = True
		} else {
			Serial.println("nada que transmitir");
			digitalWrite(13,LOW);
			digitalWrite(3,LOW);
			//# sp10nOff.value = False
			//# sn10nOff.value = False
		}
	}
	Serial.print("termine el mensaje");
	//# sp10nOff.value = False
}

String encodeoMensaje(String informacion){

	int largoMensaje = informacion.length();
	String mensaje = "";

	for(int i = 0; i < largoMensaje; i++){
		char c = informacion[i];
		mensaje += encodeoBinario(c);
	}

	return mensaje;
}

String encodeoBinario(char letra) {

	String mensajeBinario = "";

	for ( uint8_t bitMask = 128; bitMask != 0; bitMask = bitMask >> 1 ) {
		if (letra & bitMask ) {
			mensajeBinario += '1';
		} else {
			mensajeBinario += '0';
		}
	}

	return mensajeBinario;
}
