EESchema Schematic File Version 4
LIBS:trabajoProfesional-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6600 1200
Wire Wire Line
	8950 1200 8950 2100
Wire Wire Line
	8950 1200 6600 1200
Wire Wire Line
	8250 2200 8250 2050
Connection ~ 8250 2200
Wire Wire Line
	8950 2200 8250 2200
$Comp
L trabajoProfesional-rescue:UTR-1440K-TT-R-UTR-1440K-TT-R PiezoElectrico?
U 1 1 5F3DE108
P 8950 2100
AR Path="/5F3DE108" Ref="PiezoElectrico?"  Part="1" 
AR Path="/5F3D0683/5F3DE108" Ref="PiezoElectrico1"  Part="1" 
F 0 "PiezoElectrico1" H 9578 2096 50  0000 L CNN
F 1 "UTR-1440K-TT-R" H 9578 2005 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 9600 2200 50  0001 L CNN
F 3 "http://www.puiaudio.com/pdf/UTR-1440K-TT-R.pdf" H 9600 2100 50  0001 L CNN
F 4 "Speakers & Transducers ULTRASONIC TRNSMTTR /RECEIVER" H 9600 2000 50  0001 L CNN "Description"
F 5 "9.3" H 9600 1900 50  0001 L CNN "Height"
F 6 "PUI Audio" H 9600 1800 50  0001 L CNN "Manufacturer_Name"
F 7 "UTR-1440K-TT-R" H 9600 1700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "UTR-1440K-TT-R" H 9600 1600 50  0001 L CNN "Arrow Part Number"
F 9 "" H 9600 1500 50  0001 L CNN "Arrow Price/Stock"
F 10 "665-UTR1440KTTR" H 9600 1400 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/PUI-Audio/UTR-1440K-TT-R?qs=pFWzdYhrkofvqfg2PvoGqQ%3D%3D" H 9600 1300 50  0001 L CNN "Mouser Price/Stock"
	1    8950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2050 4500 2050
Connection ~ 4000 2050
Text GLabel 4000 1850 0    50   Input ~ 0
10V
Wire Wire Line
	4050 2150 4500 2150
Wire Wire Line
	4050 3100 4050 2150
Wire Wire Line
	2750 2250 4500 2250
Wire Wire Line
	2750 2800 2750 2250
Wire Wire Line
	5850 1850 5850 1200
Connection ~ 5850 1850
Wire Wire Line
	5600 1850 5850 1850
Connection ~ 8250 2050
Connection ~ 8250 2350
Wire Wire Line
	8250 2350 8250 2200
Wire Wire Line
	8250 2350 7400 2350
Wire Wire Line
	8250 2550 8250 2350
Wire Wire Line
	7700 2550 8250 2550
Wire Wire Line
	6900 2350 7100 2350
Wire Wire Line
	6900 2450 6900 2350
Wire Wire Line
	5600 2450 6900 2450
Wire Wire Line
	5600 2550 7400 2550
Wire Wire Line
	8250 2050 7700 2050
Wire Wire Line
	8250 1850 8250 2050
Wire Wire Line
	7450 1850 8250 1850
Wire Wire Line
	6950 1850 7150 1850
Wire Wire Line
	6950 1950 6950 1850
Wire Wire Line
	5600 1950 6950 1950
Wire Wire Line
	5600 2050 7400 2050
$Comp
L Device:D D?
U 1 1 5F3DE12E
P 7550 2550
AR Path="/5F3DE12E" Ref="D?"  Part="1" 
AR Path="/5F3D0683/5F3DE12E" Ref="D1"  Part="1" 
F 0 "D1" H 7550 2767 50  0000 C CNN
F 1 "1.8" H 7550 2676 50  0000 C CNN
F 2 "Diode_SMD:D_SC-80" H 7550 2550 50  0001 C CNN
F 3 "~" H 7550 2550 50  0001 C CNN
	1    7550 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5F3DE134
P 7250 2350
AR Path="/5F3DE134" Ref="D?"  Part="1" 
AR Path="/5F3D0683/5F3DE134" Ref="D2"  Part="1" 
F 0 "D2" H 7250 2133 50  0000 C CNN
F 1 "1.8" H 7250 2224 50  0000 C CNN
F 2 "Diode_SMD:D_SC-80" H 7250 2350 50  0001 C CNN
F 3 "~" H 7250 2350 50  0001 C CNN
	1    7250 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 5F3DE13A
P 7300 1850
AR Path="/5F3DE13A" Ref="D?"  Part="1" 
AR Path="/5F3D0683/5F3DE13A" Ref="D4"  Part="1" 
F 0 "D4" H 7300 1633 50  0000 C CNN
F 1 "1.8" H 7300 1724 50  0000 C CNN
F 2 "Diode_SMD:D_SC-80" H 7300 1850 50  0001 C CNN
F 3 "~" H 7300 1850 50  0001 C CNN
	1    7300 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 5F3DE140
P 7550 2050
AR Path="/5F3DE140" Ref="D?"  Part="1" 
AR Path="/5F3D0683/5F3DE140" Ref="D3"  Part="1" 
F 0 "D3" H 7550 2267 50  0000 C CNN
F 1 "1.8" H 7550 2176 50  0000 C CNN
F 2 "Diode_SMD:D_SC-80" H 7550 2050 50  0001 C CNN
F 3 "~" H 7550 2050 50  0001 C CNN
	1    7550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2650 6300 2650
Connection ~ 6250 2650
Wire Wire Line
	6250 3250 6250 3200
Text GLabel 6250 3250 2    50   Input ~ 0
-HV
Wire Wire Line
	5850 2350 6050 2350
Connection ~ 5850 2350
Wire Wire Line
	5850 3250 5650 3250
Wire Wire Line
	5850 2350 5850 3250
Text GLabel 5650 3250 0    50   Input ~ 0
+HV
Wire Wire Line
	6000 1650 6600 1650
Connection ~ 6000 1650
Wire Wire Line
	6000 3000 6000 1650
Wire Wire Line
	4700 3000 6000 3000
Wire Wire Line
	4400 2650 3900 2650
Connection ~ 4400 2650
Wire Wire Line
	4400 3000 4400 2650
Wire Wire Line
	5600 1650 6000 1650
Wire Wire Line
	3900 2650 3900 2050
Wire Wire Line
	4500 2650 4400 2650
Wire Wire Line
	3900 2050 4000 2050
Connection ~ 3900 2050
Wire Wire Line
	3750 2350 4500 2350
Connection ~ 3750 2350
Wire Wire Line
	3750 2600 3750 2350
Wire Wire Line
	2350 2600 3750 2600
Wire Wire Line
	2350 1200 2350 2600
Connection ~ 5850 1200
Connection ~ 6600 1650
Wire Wire Line
	6600 1200 5850 1200
Wire Wire Line
	6600 1650 6600 1200
Connection ~ 6600 2350
Wire Wire Line
	6600 1650 6600 2350
Wire Wire Line
	6600 2350 6600 2650
Wire Wire Line
	6350 2350 6600 2350
Connection ~ 3500 1150
Wire Wire Line
	3300 1150 3500 1150
Wire Wire Line
	3300 2350 3300 1150
Connection ~ 4200 1200
Wire Wire Line
	4200 1150 4200 1200
Wire Wire Line
	3500 1150 4200 1150
Wire Wire Line
	3500 2050 3500 1150
Wire Wire Line
	5600 2650 6250 2650
Wire Wire Line
	5600 2350 5850 2350
Wire Wire Line
	3600 2350 3750 2350
Wire Wire Line
	3800 2050 3900 2050
$Comp
L Device:C C?
U 1 1 5F3DE174
P 4550 3000
AR Path="/5F3DE174" Ref="C?"  Part="1" 
AR Path="/5F3D0683/5F3DE174" Ref="C3"  Part="1" 
F 0 "C3" V 4298 3000 50  0000 C CNN
F 1 "10n" V 4389 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 4588 2850 50  0001 C CNN
F 3 "~" H 4550 3000 50  0001 C CNN
	1    4550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F3DE180
P 6450 2650
AR Path="/5F3DE180" Ref="C?"  Part="1" 
AR Path="/5F3D0683/5F3DE180" Ref="C4"  Part="1" 
F 0 "C4" V 6198 2650 50  0000 C CNN
F 1 "10n" V 6289 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 6488 2500 50  0001 C CNN
F 3 "~" H 6450 2650 50  0001 C CNN
	1    6450 2650
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F3DE186
P 6200 2350
AR Path="/5F3DE186" Ref="C?"  Part="1" 
AR Path="/5F3D0683/5F3DE186" Ref="C5"  Part="1" 
F 0 "C5" V 5948 2350 50  0000 C CNN
F 1 "10n" V 6039 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 6238 2200 50  0001 C CNN
F 3 "~" H 6200 2350 50  0001 C CNN
	1    6200 2350
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5F3DE18C
P 3450 2350
AR Path="/5F3DE18C" Ref="C?"  Part="1" 
AR Path="/5F3D0683/5F3DE18C" Ref="C2"  Part="1" 
F 0 "C2" V 3198 2350 50  0000 C CNN
F 1 "10n" V 3289 2350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 3488 2200 50  0001 C CNN
F 3 "~" H 3450 2350 50  0001 C CNN
	1    3450 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 1850 4500 1750
Wire Wire Line
	4200 1200 4200 1550
Wire Wire Line
	5850 1200 4200 1200
Wire Wire Line
	5850 2150 5850 1850
Wire Wire Line
	5600 2150 5850 2150
Wire Wire Line
	4200 2450 4200 1950
Connection ~ 4200 2450
Wire Wire Line
	4500 2450 4200 2450
Connection ~ 4200 1950
Wire Wire Line
	4200 2550 4200 2450
Wire Wire Line
	4500 2550 4200 2550
Connection ~ 4200 1550
Wire Wire Line
	4200 1950 4200 1550
Wire Wire Line
	4500 1950 4200 1950
Wire Wire Line
	4400 1550 4300 1550
Wire Wire Line
	4400 1650 4400 1550
Wire Wire Line
	4500 1650 4400 1650
$Comp
L power:GND #PWR?
U 1 1 5F3DE1A4
P 4300 1550
AR Path="/5F3DE1A4" Ref="#PWR?"  Part="1" 
AR Path="/5F3D0683/5F3DE1A4" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 4300 1300 50  0001 C CNN
F 1 "GND" H 4305 1377 50  0000 C CNN
F 2 "" H 4300 1550 50  0001 C CNN
F 3 "" H 4300 1550 50  0001 C CNN
	1    4300 1550
	1    0    0    -1  
$EndComp
$Comp
L trabajoProfesional-rescue:HV7360GA-G-HV7360GA-G DriverPotencia?
U 1 1 5F3DE1B0
P 4500 1650
AR Path="/5F3DE1B0" Ref="DriverPotencia?"  Part="1" 
AR Path="/5F3D0683/5F3DE1B0" Ref="DriverPotencia1"  Part="1" 
F 0 "DriverPotencia1" H 5050 1915 50  0000 C CNN
F 1 "HV7360GA-G" H 5050 1824 50  0000 C CNN
F 2 "HV7360:HV7360GAG" H 5450 1750 50  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en571410" H 5450 1650 50  0001 L CNN
F 4 "Power Management Specialized - PMIC 1-Ch +/-100V 2.5A 2/3-Lev AC Coupled Pulser" H 5450 1550 50  0001 L CNN "Description"
F 5 "2" H 5450 1450 50  0001 L CNN "Height"
F 6 "579-HV7360GA-G" H 5450 1350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/HV7360GA-G?qs=NoqMqJKvPFJLO%252BFSx8RqmA%3D%3D" H 5450 1250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 5450 1150 50  0001 L CNN "Manufacturer_Name"
F 9 "HV7360GA-G" H 5450 1050 50  0001 L CNN "Manufacturer_Part_Number"
	1    4500 1650
	1    0    0    -1  
$EndComp
Text HLabel 1550 2800 0    50   Input ~ 0
SP1ONOFF
Wire Wire Line
	1550 2800 2750 2800
Text HLabel 1500 3100 0    50   Input ~ 0
SN1ONOFF
Wire Wire Line
	1500 3100 4050 3100
Text HLabel 2050 1200 0    50   Input ~ 0
Alimentacion
Wire Wire Line
	2050 1200 2350 1200
$Comp
L Device:C C?
U 1 1 5F3DE17A
P 3650 2050
AR Path="/5F3DE17A" Ref="C?"  Part="1" 
AR Path="/5F3D0683/5F3DE17A" Ref="C1"  Part="1" 
F 0 "C1" V 3398 2050 50  0000 C CNN
F 1 "10n" V 3489 2050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 3688 1900 50  0001 C CNN
F 3 "~" H 3650 2050 50  0001 C CNN
	1    3650 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	5950 3600 5950 3250
Wire Wire Line
	5950 3250 5850 3250
Connection ~ 5850 3250
Wire Wire Line
	6250 3200 6050 3200
Wire Wire Line
	6050 3200 6050 3700
Connection ~ 6250 3200
Wire Wire Line
	6250 3200 6250 2650
$Comp
L Connector:Conn_01x01_Male 10V1
U 1 1 5F407A63
P 3650 1450
F 0 "10V1" H 3758 1631 50  0000 C CNN
F 1 "Conn_01x01_Male" H 3758 1540 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 3650 1450 50  0001 C CNN
F 3 "~" H 3650 1450 50  0001 C CNN
	1    3650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1450 3850 1450
Wire Wire Line
	4000 1450 4000 2050
Connection ~ 4300 1550
Wire Wire Line
	4300 1550 4200 1550
$Comp
L Connector:Conn_01x01_Male HV+1
U 1 1 5F42DBC3
P 5350 3600
F 0 "HV+1" H 5458 3781 50  0000 C CNN
F 1 "Conn_01x01_Male" H 5458 3690 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 5350 3600 50  0001 C CNN
F 3 "~" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male HV-1
U 1 1 5F42E43A
P 6500 3700
F 0 "HV-1" H 6472 3632 50  0000 R CNN
F 1 "Conn_01x01_Male" H 6472 3723 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D2.5mm" H 6500 3700 50  0001 C CNN
F 3 "~" H 6500 3700 50  0001 C CNN
	1    6500 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 3600 5550 3600
Wire Wire Line
	6300 3700 6050 3700
$EndSCHEMATC
