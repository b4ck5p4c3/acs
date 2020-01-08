EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
S 1950 1600 550  850 
U 5E190DE5
F0 "Панель домофона" 50
F1 "call_box.sch" 50
F2 "1" I R 2500 1650 50 
F3 "2" I R 2500 1750 50 
F4 "3" I R 2500 1850 50 
F5 "4" I R 2500 1950 50 
F6 "5" I R 2500 2050 50 
F7 "6" I R 2500 2150 50 
$EndSheet
$Sheet
S 1950 2700 550  500 
U 5E1914C8
F0 "iButton" 50
F1 "ibutton.sch" 50
F2 "ibutton_0" I R 2500 2750 50 
F3 "ibutton_1" I R 2500 2850 50 
F4 "led_0" I R 2500 3000 50 
F5 "led_1" I R 2500 3100 50 
$EndSheet
$Comp
L sw:SW_Reed SW2
U 1 1 5E191827
P 2100 850
F 0 "SW2" H 2100 950 50  0000 C CNN
F 1 "Концевик двери" H 2150 750 50  0000 C CNN
F 2 "" H 2100 850 50  0001 C CNN
F 3 "~" H 2100 850 50  0001 C CNN
	1    2100 850 
	1    0    0    -1  
$EndComp
$Comp
L device:Electromagnetic_Actor L1
U 1 1 5E191F7A
P 2050 1250
F 0 "L1" V 1900 1300 50  0000 C CNN
F 1 "Элетромагнитный замок" V 2200 1500 50  0000 C CNN
F 2 "" V 2025 1350 50  0001 C CNN
F 3 "~" V 2025 1350 50  0001 C CNN
	1    2050 1250
	0    1    1    0   
$EndComp
$Comp
L sw:SW_SPST SW1
U 1 1 5E1926F6
P 2350 4250
F 0 "SW1" H 2350 4350 50  0000 C CNN
F 1 "Кнопка открытия двери" H 2350 4150 50  0000 C CNN
F 2 "" H 2350 4250 50  0001 C CNN
F 3 "~" H 2350 4250 50  0001 C CNN
	1    2350 4250
	1    0    0    -1  
$EndComp
$Sheet
S 4450 2150 550  250 
U 5E192B40
F0 "Вывеска" 50
F1 "sign.sch" 50
F2 "+12" I L 4450 2200 50 
F3 "GND" I L 4450 2300 50 
$EndSheet
$Sheet
S 1950 3450 550  450 
U 5E1934F8
F0 "RFID-reader" 50
F1 "rfid_reader.sch" 50
F2 "+12" I R 2500 3500 50 
F3 "A" I R 2500 3600 50 
F4 "B" I R 2500 3700 50 
F5 "GND" I R 2500 3800 50 
$EndSheet
$Comp
L device:Lamp LA1
U 1 1 5E193A4A
P 5650 2500
F 0 "LA1" H 5778 2546 50  0000 L CNN
F 1 "Lamp" H 5778 2455 50  0000 L CNN
F 2 "" V 5650 2600 50  0001 C CNN
F 3 "~" V 5650 2600 50  0001 C CNN
	1    5650 2500
	1    0    0    -1  
$EndComp
Wire Notes Line
	1800 550  6850 550 
Wire Notes Line
	6850 550  6850 4400
Wire Notes Line
	6850 4400 1800 4400
Wire Notes Line
	1800 4400 1800 550 
Entry Wire Line
	4050 2100 4150 2200
Entry Wire Line
	4050 2200 4150 2300
Wire Wire Line
	4450 2200 4150 2200
Wire Wire Line
	4150 2300 4450 2300
Text Label 4150 2200 0    50   ~ 0
red
Text Label 4150 2300 0    50   ~ 0
black
Entry Wire Line
	3850 2600 3950 2700
Entry Wire Line
	3850 2700 3950 2800
Text Label 3750 2700 0    50   ~ 0
red
Text Label 3700 2600 0    50   ~ 0
black
Wire Bus Line
	3200 650  3600 650 
Entry Wire Line
	3100 700  3200 800 
Entry Wire Line
	3100 800  3200 900 
Entry Wire Line
	3100 1050 3200 1150
Entry Wire Line
	3100 1250 3200 1350
Wire Wire Line
	3100 700  1900 700 
Wire Wire Line
	1900 700  1900 850 
Wire Wire Line
	2300 850  2300 800 
Wire Wire Line
	2300 800  3100 800 
Wire Wire Line
	3100 1050 1950 1050
Wire Wire Line
	1950 1050 1950 1250
Wire Wire Line
	3100 1250 2250 1250
Entry Wire Line
	3100 2150 3200 2250
Entry Wire Line
	3100 2050 3200 2150
Entry Wire Line
	3100 1950 3200 2050
Entry Wire Line
	3100 1850 3200 1950
Entry Wire Line
	3100 1750 3200 1850
Entry Wire Line
	3100 1650 3200 1750
Wire Wire Line
	3100 1650 2500 1650
Wire Wire Line
	2500 1750 3100 1750
Wire Wire Line
	3100 1850 2500 1850
Wire Wire Line
	2500 1950 3100 1950
Wire Wire Line
	3100 2050 2500 2050
Wire Wire Line
	2500 2150 3100 2150
Entry Wire Line
	3100 2750 3200 2850
Entry Wire Line
	3100 2850 3200 2950
Entry Wire Line
	3100 3500 3200 3600
Entry Wire Line
	3100 3600 3200 3700
Entry Wire Line
	3100 3700 3200 3800
Entry Wire Line
	3100 3800 3200 3900
Entry Wire Line
	3100 4100 3200 4200
Wire Wire Line
	3100 2750 2500 2750
Wire Wire Line
	2500 2850 3100 2850
Wire Wire Line
	2500 3500 3100 3500
Wire Wire Line
	3100 3600 2500 3600
Wire Wire Line
	2500 3700 3100 3700
Wire Wire Line
	3100 3800 2500 3800
Wire Wire Line
	3100 4100 2150 4100
Wire Wire Line
	2150 4100 2150 4250
Wire Wire Line
	2550 4250 3100 4250
Entry Wire Line
	3100 4250 3200 4350
Entry Wire Line
	3200 2500 3300 2600
Entry Wire Line
	3200 2600 3300 2700
Wire Bus Line
	4050 2850 3950 2850
Wire Wire Line
	3300 2600 3850 2600
Wire Wire Line
	3300 2700 3850 2700
Wire Bus Line
	4050 2000 4050 2850
Wire Bus Line
	3950 2600 3950 2850
Wire Bus Line
	3200 650  3200 4350
Text Label 2550 700  0    50   ~ 0
yellow+orange
Text Label 2600 800  0    50   ~ 0
violet+green
Text Label 2600 1050 0    50   ~ 0
green+brown
Text Label 2650 1250 0    50   ~ 0
green+white
Text Label 2900 1650 0    50   ~ 0
green
Text Label 2900 1750 0    50   ~ 0
white
Text Label 2900 1850 0    50   ~ 0
red
Text Label 2900 1950 0    50   ~ 0
black
Text Label 2900 2050 0    50   ~ 0
blue
Text Label 2850 2150 0    50   ~ 0
yellow
Text Label 2650 4100 0    50   ~ 0
white+brown
Text Label 2700 4250 0    50   ~ 0
white+blue
Text Label 2750 2750 0    50   ~ 0
white+red
Text Label 2650 2850 0    50   ~ 0
white+black
Text Label 3300 2600 0    50   ~ 0
blue+red
Text Label 3300 2700 0    50   ~ 0
brown
Text Label 2850 3500 0    50   ~ 0
brown
Text Label 2850 3600 0    50   ~ 0
violet
Text Label 2700 3700 0    50   ~ 0
black+red
Text Label 2900 3800 0    50   ~ 0
pink
$EndSCHEMATC
