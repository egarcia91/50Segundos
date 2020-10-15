EESchema Schematic File Version 4
LIBS:trabajoProfesional-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7950 1750 3000 1200
U 5F3D0683
F0 "Salida" 50
F1 "salida.sch" 50
F2 "SP1ONOFF" I L 7950 2000 50 
F3 "SN1ONOFF" I L 7950 2250 50 
F4 "Alimentacion" I L 7950 2500 50 
$EndSheet
$Comp
L trabajoProfesional-rescue:MS583730BA01-50-2020-08-16_19-32-11 SensorPresion1
U 1 1 5F3E65FC
P 4250 6300
F 0 "SensorPresion1" H 5050 6687 60  0000 C CNN
F 1 "MS583730BA01-50" H 5050 6581 60  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_2x02_P1.00mm_Vertical_SMD" H 5050 6540 60  0001 C CNN
F 3 "" H 4250 6300 60  0000 C CNN
	1    4250 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F3E7EA3
P 5000 5700
F 0 "C6" V 4748 5700 50  0000 C CNN
F 1 "100n" V 4839 5700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 5038 5550 50  0001 C CNN
F 3 "~" H 5000 5700 50  0001 C CNN
	1    5000 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 6300 5850 5700
Wire Wire Line
	5850 5700 5150 5700
Wire Wire Line
	4250 6300 4250 5700
Wire Wire Line
	4250 5700 4850 5700
Wire Wire Line
	4250 6300 3700 6300
Wire Wire Line
	3700 6300 3700 5650
Connection ~ 4250 6300
$Comp
L Device:R R1
U 1 1 5F3E9874
P 3400 6200
F 0 "R1" H 3470 6246 50  0000 L CNN
F 1 "10k" H 3470 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3330 6200 50  0001 C CNN
F 3 "~" H 3400 6200 50  0001 C CNN
	1    3400 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F3EA43A
P 3150 6200
F 0 "R2" H 3220 6246 50  0000 L CNN
F 1 "10k" H 3220 6155 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3080 6200 50  0001 C CNN
F 3 "~" H 3150 6200 50  0001 C CNN
	1    3150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6050 3400 5650
Wire Wire Line
	3400 5650 3700 5650
Wire Wire Line
	3150 6050 3150 5650
Wire Wire Line
	3150 5650 3400 5650
Connection ~ 3400 5650
Wire Wire Line
	3400 6350 3400 6400
Wire Wire Line
	3400 6400 4000 6400
Wire Wire Line
	5850 6400 5850 6800
Wire Wire Line
	5850 6800 3150 6800
Wire Wire Line
	3150 6800 3150 6350
Text GLabel 4900 4200 2    50   Input ~ 0
SDAPresion
Text GLabel 4750 4550 0    50   Input ~ 0
SCLPresion
Wire Wire Line
	4000 4200 4000 6400
Connection ~ 4000 6400
Wire Wire Line
	4000 6400 4250 6400
Wire Wire Line
	5850 6400 6100 6400
Wire Wire Line
	6100 6400 6100 4550
Wire Wire Line
	6100 4550 4750 4550
Connection ~ 5850 6400
$Sheet
S 850  850  1500 850 
U 5F3EBDF0
F0 "Bateria" 50
F1 "Bateria.sch" 50
F2 "AlimentacionCircuito" I R 2350 1050 50 
F3 "Cargando" I R 2350 1300 50 
$EndSheet
Wire Wire Line
	7950 2500 6550 2500
Wire Wire Line
	6550 2500 6550 1050
$Comp
L power:GND #PWR0101
U 1 1 5F3F217F
P 3850 2650
F 0 "#PWR0101" H 3850 2400 50  0001 C CNN
F 1 "GND" V 3855 2522 50  0000 R CNN
F 2 "" H 3850 2650 50  0001 C CNN
F 3 "" H 3850 2650 50  0001 C CNN
	1    3850 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 2950 5500 3400
Wire Wire Line
	5500 3400 3700 3400
Wire Wire Line
	3700 3400 3700 5650
Connection ~ 3700 5650
Wire Wire Line
	6100 4550 6100 2850
Connection ~ 6100 4550
Wire Wire Line
	4000 4200 4800 4200
Wire Wire Line
	4800 4200 4800 3950
Wire Wire Line
	4800 3950 5800 3950
Wire Wire Line
	5800 3950 5800 2650
Connection ~ 4800 4200
Wire Wire Line
	4800 4200 4900 4200
Wire Wire Line
	3900 2750 3900 1950
Wire Wire Line
	7600 1950 7600 2000
Wire Wire Line
	7600 2000 7950 2000
Wire Wire Line
	7450 2250 7950 2250
Wire Wire Line
	5700 2750 5700 1300
Wire Wire Line
	5700 1300 2350 1300
$Comp
L trabajoProfesional-rescue:1501-Trinket U1
U 1 1 5F3DB5D3
P 4300 2550
F 0 "U1" H 4850 2815 50  0000 C CNN
F 1 "1501" H 4850 2724 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_2x05_P1.00mm_Vertical_SMD" H 5250 2650 50  0001 L CNN
F 3 "https://learn.adafruit.com/introducing-trinket" H 5250 2550 50  0001 L CNN
F 4 "ADAFRUIT - 1501 - TRINKET DEV BOARD, ATTINY85 MCU, 5V" H 5250 2450 50  0001 L CNN "Description"
F 5 "" H 5250 2350 50  0001 L CNN "Height"
F 6 "Adafruit" H 5250 2250 50  0001 L CNN "Manufacturer_Name"
F 7 "1501" H 5250 2150 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "1501" H 5250 2050 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/1501/adafruit-industries" H 5250 1950 50  0001 L CNN "Arrow Price/Stock"
F 10 "485-1501" H 5250 1850 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Adafruit/1501?qs=GURawfaeGuApEwtfdnWm9A%3D%3D" H 5250 1750 50  0001 L CNN "Mouser Price/Stock"
	1    4300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1050 3400 1050
Wire Wire Line
	5400 2650 5800 2650
Wire Wire Line
	5400 2750 5700 2750
Wire Wire Line
	5400 2850 6100 2850
Wire Wire Line
	5500 2950 5400 2950
Wire Wire Line
	3850 2650 4300 2650
Wire Wire Line
	3900 2750 4300 2750
Wire Wire Line
	4000 2850 4300 2850
Wire Wire Line
	3900 1950 7600 1950
Wire Wire Line
	4000 2000 4000 2850
Wire Wire Line
	7450 2000 7450 2250
Wire Wire Line
	4000 2000 7450 2000
Wire Wire Line
	3450 950  3450 2550
Wire Wire Line
	3450 2550 4300 2550
Wire Wire Line
	3400 1050 3400 950 
Wire Wire Line
	3400 950  3450 950 
Connection ~ 3400 1050
Wire Wire Line
	3400 1050 6550 1050
$EndSCHEMATC
