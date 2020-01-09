EESchema Schematic File Version 4
LIBS:electrical-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 11
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3550 1450 0    50   Input ~ 0
LED_COM
Text HLabel 3550 1750 0    50   Input ~ 0
LED_RED
Text HLabel 3550 1900 0    50   Input ~ 0
LED_WHITE
Text HLabel 3550 2050 0    50   Input ~ 0
LED_BLUE
Text HLabel 3550 2200 0    50   Input ~ 0
LED_YELLOW
Text HLabel 3550 2350 0    50   Input ~ 0
LED_GREEN
Text HLabel 3550 2650 0    50   Input ~ 0
BUTTON_P
Text HLabel 3550 2750 0    50   Input ~ 0
BUTTON_N
$Comp
L device:LED_Small D?
U 1 1 5E1B01FD
P 4050 1750
F 0 "D?" H 3950 1800 50  0000 C CNN
F 1 "LED_Small" H 4350 1800 50  0000 C CNN
F 2 "" V 4050 1750 50  0001 C CNN
F 3 "~" V 4050 1750 50  0001 C CNN
	1    4050 1750
	1    0    0    -1  
$EndComp
$Comp
L device:LED_Small D?
U 1 1 5E1B0964
P 4050 1900
F 0 "D?" H 3950 1950 50  0000 C CNN
F 1 "LED_Small" H 4300 1950 50  0000 C CNN
F 2 "" V 4050 1900 50  0001 C CNN
F 3 "~" V 4050 1900 50  0001 C CNN
	1    4050 1900
	1    0    0    -1  
$EndComp
$Comp
L device:LED_Small D?
U 1 1 5E1B0CDC
P 4050 2050
F 0 "D?" H 3950 2100 50  0000 C CNN
F 1 "LED_Small" H 4300 2100 50  0000 C CNN
F 2 "" V 4050 2050 50  0001 C CNN
F 3 "~" V 4050 2050 50  0001 C CNN
	1    4050 2050
	1    0    0    -1  
$EndComp
$Comp
L device:LED_Small D?
U 1 1 5E1B3C86
P 4050 2200
F 0 "D?" H 3950 2250 50  0000 C CNN
F 1 "LED_Small" H 4300 2250 50  0000 C CNN
F 2 "" V 4050 2200 50  0001 C CNN
F 3 "~" V 4050 2200 50  0001 C CNN
	1    4050 2200
	1    0    0    -1  
$EndComp
$Comp
L device:LED_Small D?
U 1 1 5E1B3F90
P 4050 2350
F 0 "D?" H 3950 2400 50  0000 C CNN
F 1 "LED_Small" H 4300 2400 50  0000 C CNN
F 2 "" V 4050 2350 50  0001 C CNN
F 3 "~" V 4050 2350 50  0001 C CNN
	1    4050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1450 4650 1450
Wire Wire Line
	4650 1450 4650 1750
Wire Wire Line
	4650 1750 4150 1750
Wire Wire Line
	4150 1900 4650 1900
Wire Wire Line
	4650 1900 4650 1750
Connection ~ 4650 1750
Wire Wire Line
	4150 2050 4650 2050
Wire Wire Line
	4650 2050 4650 1900
Connection ~ 4650 1900
Wire Wire Line
	4150 2200 4650 2200
Wire Wire Line
	4650 2200 4650 2050
Connection ~ 4650 2050
Wire Wire Line
	4150 2350 4650 2350
Wire Wire Line
	4650 2350 4650 2200
Connection ~ 4650 2200
Wire Wire Line
	3950 1750 3550 1750
Wire Wire Line
	3550 1900 3950 1900
Wire Wire Line
	3950 2050 3550 2050
Wire Wire Line
	3550 2200 3950 2200
Wire Wire Line
	3950 2350 3550 2350
$Comp
L sw:SW_SPST SW?
U 1 1 5E1BA0D0
P 4050 2650
F 0 "SW?" H 3900 2700 50  0000 C CNN
F 1 "SW_SPST" H 4300 2700 50  0000 C CNN
F 2 "" H 4050 2650 50  0001 C CNN
F 3 "~" H 4050 2650 50  0001 C CNN
	1    4050 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2650 3550 2650
Wire Wire Line
	3550 2750 4600 2750
Wire Wire Line
	4600 2750 4600 2650
Wire Wire Line
	4600 2650 4250 2650
$EndSCHEMATC
