Se trabaja con Arduino IDE que posee las bibliotecas necesarias para I2C del sensor de presion.

Requisitos arduino IDE:


	Install Adafruit + Arduino IDE GUIDE --> https://learn.adafruit.com/adafruit-feather-m0-basic-proto/downloads?view=all#overview
		
		Install Aduino IDE --> https://www.arduino.cc/en/software
	
		Una vez instalado acceder a : File --> Preferences --> en  cuadro "Additional Boards Manager URLs"  agregar la URL de adafruit https://adafruit.github.io/arduino-board-index/package_adafruit_index.json --> aceptar

		Tools --> "Board Arduino/Geniuno UNO" --> Boards Manager --> INSTALL:
										|
										|------> Arduino SAMD Boards (32-bits ARM Cortex-M0+) --> Install
										|
										|------> Buscar en find  Adafruit SAMD --> install Adafruit SAMD Boards

		Reiniciar Arduino IDE

		Select --> Tools --> Board -->  Adafruit SAMD (Cortex M0+ and M4) --> Select Adafruit TRINKET M0
		
		Si es Windows :
			Install Drivers--> https://github.com/adafruit/Adafruit_Windows_Drivers/releases/download/2.3.4/adafruit_drivers_2.3.4.0.exe
	
		Al conectar el micro se debe seleccionar en --> Tools --> Port --> (en general COMM 5 Adafruit Trinket)
Sensor presion MS5837

	https://github.com/ControlEverythingCommunity/MS5837-30BA01/blob/master/Arduino/MS5837_30BA01.ino
		
