EESchema Schematic File Version 4
LIBS:electrical-cache
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
S 750  1650 550  850 
U 5E190DE5
F0 "Панель домофона" 50
F1 "call_box.sch" 50
F2 "1" I R 1300 1700 50 
F3 "2" I R 1300 1800 50 
F4 "3" I R 1300 1900 50 
F5 "4" I R 1300 2000 50 
F6 "5" I R 1300 2100 50 
F7 "6" I R 1300 2200 50 
$EndSheet
$Sheet
S 750  2750 550  500 
U 5E1914C8
F0 "iButton" 50
F1 "ibutton.sch" 50
F2 "ibutton_0" I R 1300 2800 50 
F3 "ibutton_1" I R 1300 2900 50 
F4 "led_0" I R 1300 3050 50 
F5 "led_1" I R 1300 3150 50 
$EndSheet
$Comp
L sw:SW_Reed SW2
U 1 1 5E191827
P 900 900
F 0 "SW2" H 900 1000 50  0000 C CNN
F 1 "Концевик двери" H 950 800 50  0000 C CNN
F 2 "" H 900 900 50  0001 C CNN
F 3 "~" H 900 900 50  0001 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
$Comp
L device:Electromagnetic_Actor L1
U 1 1 5E191F7A
P 850 1300
F 0 "L1" V 700 1350 50  0000 C CNN
F 1 "Элетромагнитный замок" V 1000 1550 50  0000 C CNN
F 2 "" V 825 1400 50  0001 C CNN
F 3 "~" V 825 1400 50  0001 C CNN
	1    850  1300
	0    1    1    0   
$EndComp
$Comp
L sw:SW_SPST SW1
U 1 1 5E1926F6
P 1150 4300
F 0 "SW1" H 1150 4400 50  0000 C CNN
F 1 "Кнопка открытия двери" H 1150 4200 50  0000 C CNN
F 2 "" H 1150 4300 50  0001 C CNN
F 3 "~" H 1150 4300 50  0001 C CNN
	1    1150 4300
	1    0    0    -1  
$EndComp
$Sheet
S 2700 1100 550  250 
U 5E192B40
F0 "Вывеска" 50
F1 "sign.sch" 50
F2 "+12" I L 2700 1150 50 
F3 "GND" I L 2700 1250 50 
$EndSheet
$Sheet
S 750  3500 550  450 
U 5E1934F8
F0 "RFID-reader" 50
F1 "rfid_reader.sch" 50
F2 "+12" I R 1300 3550 50 
F3 "A" I R 1300 3650 50 
F4 "B" I R 1300 3750 50 
F5 "GND" I R 1300 3850 50 
$EndSheet
$Comp
L device:Lamp LA1
U 1 1 5E193A4A
P 2800 3500
F 0 "LA1" H 2928 3546 50  0000 L CNN
F 1 "Lamp" H 2928 3455 50  0000 L CNN
F 2 "" V 2800 3600 50  0001 C CNN
F 3 "~" V 2800 3600 50  0001 C CNN
	1    2800 3500
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  600  3750 600 
Wire Notes Line
	3750 600  3750 4550
Wire Notes Line
	3750 4550 600  4550
Wire Notes Line
	600  4550 600  600 
Entry Wire Line
	2200 1050 2300 1150
Entry Wire Line
	2200 1150 2300 1250
Wire Wire Line
	2700 1150 2300 1150
Wire Wire Line
	2300 1250 2700 1250
Text Label 2300 1150 0    50   ~ 0
red
Text Label 2300 1250 0    50   ~ 0
black
Entry Wire Line
	2700 2650 2800 2750
Entry Wire Line
	2700 2750 2800 2850
Text Label 2600 2750 0    50   ~ 0
red
Text Label 2550 2650 0    50   ~ 0
black
Entry Wire Line
	1900 750  2000 850 
Entry Wire Line
	1900 850  2000 950 
Entry Wire Line
	1900 1100 2000 1200
Entry Wire Line
	1900 1300 2000 1400
Wire Wire Line
	1900 750  700  750 
Wire Wire Line
	700  750  700  900 
Wire Wire Line
	1100 900  1100 850 
Wire Wire Line
	1100 850  1900 850 
Wire Wire Line
	1900 1100 750  1100
Wire Wire Line
	750  1100 750  1300
Wire Wire Line
	1900 1300 1050 1300
Entry Wire Line
	1900 2200 2000 2300
Entry Wire Line
	1900 2100 2000 2200
Entry Wire Line
	1900 2000 2000 2100
Entry Wire Line
	1900 1900 2000 2000
Entry Wire Line
	1900 1800 2000 1900
Entry Wire Line
	1900 1700 2000 1800
Wire Wire Line
	1900 1700 1300 1700
Wire Wire Line
	1300 1800 1900 1800
Wire Wire Line
	1900 1900 1300 1900
Wire Wire Line
	1300 2000 1900 2000
Wire Wire Line
	1900 2100 1300 2100
Wire Wire Line
	1300 2200 1900 2200
Entry Wire Line
	1900 2800 2000 2900
Entry Wire Line
	1900 2900 2000 3000
Entry Wire Line
	1900 3550 2000 3650
Entry Wire Line
	1900 3650 2000 3750
Entry Wire Line
	1900 3750 2000 3850
Entry Wire Line
	1900 3850 2000 3950
Entry Wire Line
	1900 4150 2000 4250
Wire Wire Line
	1900 2800 1300 2800
Wire Wire Line
	1300 2900 1900 2900
Wire Wire Line
	1300 3550 1900 3550
Wire Wire Line
	1900 3650 1300 3650
Wire Wire Line
	1300 3750 1900 3750
Wire Wire Line
	1900 3850 1300 3850
Wire Wire Line
	1900 4150 950  4150
Wire Wire Line
	950  4150 950  4300
Wire Wire Line
	1350 4300 1900 4300
Entry Wire Line
	1900 4300 2000 4400
Entry Wire Line
	2000 2550 2100 2650
Entry Wire Line
	2000 2650 2100 2750
Wire Wire Line
	2100 2650 2700 2650
Wire Wire Line
	2100 2750 2700 2750
Text Label 1350 750  0    50   ~ 0
yellow+orange
Text Label 1400 850  0    50   ~ 0
violet+green
Text Label 1400 1100 0    50   ~ 0
green+brown
Text Label 1450 1300 0    50   ~ 0
green+white
Text Label 1700 1700 0    50   ~ 0
green
Text Label 1700 1800 0    50   ~ 0
white
Text Label 1700 1900 0    50   ~ 0
red
Text Label 1700 2000 0    50   ~ 0
black
Text Label 1700 2100 0    50   ~ 0
blue
Text Label 1650 2200 0    50   ~ 0
yellow
Text Label 1450 4150 0    50   ~ 0
white+brown
Text Label 1500 4300 0    50   ~ 0
white+blue
Text Label 1550 2800 0    50   ~ 0
white+red
Text Label 1450 2900 0    50   ~ 0
white+black
Text Label 2100 2650 0    50   ~ 0
blue+red
Text Label 2100 2750 0    50   ~ 0
brown
Text Label 1650 3550 0    50   ~ 0
brown
Text Label 1650 3650 0    50   ~ 0
violet
Text Label 1500 3750 0    50   ~ 0
black+red
Text Label 1700 3850 0    50   ~ 0
pink
Wire Bus Line
	2800 1800 2200 1800
Text Notes 3000 4550 0    100  ~ 0
Аквариум
Wire Notes Line
	3850 600  8050 600 
Text Notes 7450 5850 0    100  ~ 0
Тамбур
$Comp
L sw:SW_Reed SW?
U 1 1 5E17D356
P 5050 5700
F 0 "SW?" H 5050 5800 50  0000 C CNN
F 1 "Концевик железной двери" H 5100 5600 50  0000 C CNN
F 2 "" H 5050 5700 50  0001 C CNN
F 3 "~" H 5050 5700 50  0001 C CNN
	1    5050 5700
	1    0    0    -1  
$EndComp
$Comp
L sw:SW_Reed SW?
U 1 1 5E17D73B
P 6700 900
F 0 "SW?" H 6700 1000 50  0000 C CNN
F 1 "Концевик тамбурной двери" H 6750 800 50  0000 C CNN
F 2 "" H 6700 900 50  0001 C CNN
F 3 "~" H 6700 900 50  0001 C CNN
	1    6700 900 
	1    0    0    -1  
$EndComp
$Comp
L sw:SW_SPST SW?
U 1 1 5E17DC84
P 7300 5450
F 0 "SW?" H 7300 5550 50  0000 C CNN
F 1 "Выключатель света в аквариуме" H 7300 5350 50  0000 C CNN
F 2 "" H 7300 5450 50  0001 C CNN
F 3 "~" H 7300 5450 50  0001 C CNN
	1    7300 5450
	1    0    0    -1  
$EndComp
$Comp
L device:Lamp LA?
U 1 1 5E17FAFA
P 5050 1750
F 0 "LA?" V 5178 1796 50  0000 L CNN
F 1 "Lamp" V 5250 1750 50  0000 L CNN
F 2 "" V 5050 1850 50  0001 C CNN
F 3 "~" V 5050 1850 50  0001 C CNN
	1    5050 1750
	0    1    1    0   
$EndComp
Entry Wire Line
	4300 1000 4400 1100
Entry Wire Line
	4300 1150 4400 1250
Wire Wire Line
	5300 1100 5300 1750
Wire Wire Line
	5300 1750 5250 1750
Wire Wire Line
	4700 1250 4400 1250
Text Label 4400 1100 0    50   ~ 0
L
Text Label 4400 1250 0    50   ~ 0
N
Entry Wire Line
	5700 950  5800 1050
Entry Wire Line
	5700 1100 5800 1200
Wire Wire Line
	5700 950  4800 950 
Wire Wire Line
	4800 950  4800 1100
Wire Wire Line
	4800 1100 4400 1100
Wire Wire Line
	5700 1100 5300 1100
Connection ~ 5300 1100
$Comp
L sw:SW_SPST SW?
U 1 1 5E17EE22
P 5050 1100
F 0 "SW?" H 5050 1000 50  0000 C CNN
F 1 "Выключатель света в тамбуре" H 5000 1400 50  0000 C CNN
F 2 "" H 5050 1100 50  0001 C CNN
F 3 "~" H 5050 1100 50  0001 C CNN
	1    5050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1100 5300 1100
Wire Wire Line
	4850 1100 4800 1100
Connection ~ 4800 1100
Wire Wire Line
	4850 1750 4700 1750
Wire Wire Line
	4700 1750 4700 1250
Text Label 5650 950  0    50   ~ 0
L
Text Label 5650 1100 0    50   ~ 0
N
Entry Wire Line
	4200 3050 4100 3150
Entry Wire Line
	4200 3150 4100 3250
Entry Wire Line
	4200 3400 4100 3500
Entry Wire Line
	4200 3600 4100 3700
Wire Wire Line
	4200 3050 4800 3050
Wire Wire Line
	4800 3150 4200 3150
Wire Wire Line
	4200 3400 4800 3400
Wire Wire Line
	4200 3600 4800 3600
Entry Wire Line
	4200 2700 4100 2800
Entry Wire Line
	4200 2600 4100 2700
Entry Wire Line
	4200 2500 4100 2600
Entry Wire Line
	4200 2400 4100 2500
Entry Wire Line
	4200 2300 4100 2400
Entry Wire Line
	4200 2200 4100 2300
Wire Wire Line
	4200 2200 4800 2200
Wire Wire Line
	4800 2300 4200 2300
Wire Wire Line
	4200 2400 4800 2400
Wire Wire Line
	4800 2500 4200 2500
Wire Wire Line
	4200 2600 4800 2600
Wire Wire Line
	4800 2700 4200 2700
Entry Wire Line
	4200 4200 4100 4300
Entry Wire Line
	4200 4300 4100 4400
Entry Wire Line
	4200 4550 4100 4650
Entry Wire Line
	4200 4650 4100 4750
Entry Wire Line
	4200 4750 4100 4850
Entry Wire Line
	4200 4850 4100 4950
Entry Wire Line
	4200 5150 4100 5250
Wire Wire Line
	4200 4200 4800 4200
Wire Wire Line
	4800 4300 4200 4300
Wire Wire Line
	4800 4550 4200 4550
Wire Wire Line
	4200 4650 4800 4650
Wire Wire Line
	4800 4750 4200 4750
Wire Wire Line
	4200 4850 4800 4850
Wire Wire Line
	4200 5150 4800 5150
Wire Wire Line
	4800 5300 4200 5300
Entry Wire Line
	4200 5300 4100 5400
Entry Wire Line
	4100 3850 4200 3950
Entry Wire Line
	4100 3950 4200 4050
Wire Wire Line
	4200 3950 4800 3950
Wire Wire Line
	4200 4050 4800 4050
Text Label 4750 3050 2    50   ~ 0
yellow+orange
Text Label 4700 3150 2    50   ~ 0
violet+green
Text Label 4700 3400 2    50   ~ 0
green+brown
Text Label 4650 3600 2    50   ~ 0
green+white
Text Label 4400 2200 2    50   ~ 0
green
Text Label 4400 2300 2    50   ~ 0
white
Text Label 4400 2400 2    50   ~ 0
red
Text Label 4400 2500 2    50   ~ 0
black
Text Label 4400 2600 2    50   ~ 0
blue
Text Label 4450 2700 2    50   ~ 0
yellow
Text Label 4650 5150 2    50   ~ 0
white+brown
Text Label 4600 5300 2    50   ~ 0
white+blue
Text Label 4550 4200 2    50   ~ 0
white+red
Text Label 4650 4300 2    50   ~ 0
white+black
Text Label 4200 3950 0    50   ~ 0
blue+red
Text Label 4200 4050 0    50   ~ 0
brown
Text Label 4450 4550 2    50   ~ 0
brown
Text Label 4450 4650 2    50   ~ 0
violet
Text Label 4600 4750 2    50   ~ 0
black+red
Text Label 4400 4850 2    50   ~ 0
pink
Wire Bus Line
	2000 700  4100 700 
Wire Notes Line
	3850 5900 8050 5900
Wire Notes Line
	8050 600  8050 5900
Wire Notes Line
	3850 600  3850 5900
Wire Bus Line
	5800 700  5800 1200
Wire Bus Line
	2200 950  2200 1800
Wire Bus Line
	2800 1800 2800 2900
Wire Bus Line
	4300 750  4300 1300
Wire Bus Line
	2000 700  2000 4450
Wire Bus Line
	4100 700  4100 5500
$EndSCHEMATC
