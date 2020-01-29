EESchema Schematic File Version 4
LIBS:electrical-cache
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 13
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
S 1150 2150 550  850 
U 5E190DE5
F0 "Панель домофона" 50
F1 "call_box.sch" 50
F2 "1" I R 1700 2200 50 
F3 "2" I R 1700 2300 50 
F4 "3" I R 1700 2400 50 
F5 "4" I R 1700 2500 50 
F6 "5" I R 1700 2600 50 
F7 "6" I R 1700 2700 50 
$EndSheet
$Sheet
S 1150 3250 550  500 
U 5E1914C8
F0 "iButton" 50
F1 "ibutton.sch" 50
F2 "ibutton_0" I R 1700 3300 50 
F3 "ibutton_1" I R 1700 3400 50 
F4 "led_0" I R 1700 3550 50 
F5 "led_1" I R 1700 3650 50 
$EndSheet
$Comp
L sw:SW_Reed SW2
U 1 1 5E191827
P 1300 1400
F 0 "SW2" H 1300 1500 50  0000 C CNN
F 1 "Концевик двери" H 1350 1300 50  0000 C CNN
F 2 "" H 1300 1400 50  0001 C CNN
F 3 "~" H 1300 1400 50  0001 C CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
$Comp
L device:Electromagnetic_Actor L1
U 1 1 5E191F7A
P 1250 1800
F 0 "L1" V 1100 1850 50  0000 C CNN
F 1 "Элетромагнитный замок" V 1400 2050 50  0000 C CNN
F 2 "" V 1225 1900 50  0001 C CNN
F 3 "~" V 1225 1900 50  0001 C CNN
	1    1250 1800
	0    1    1    0   
$EndComp
$Comp
L sw:SW_SPST SW1
U 1 1 5E1926F6
P 1550 4800
F 0 "SW1" H 1550 4900 50  0000 C CNN
F 1 "Кнопка открытия двери" H 1550 4700 50  0000 C CNN
F 2 "" H 1550 4800 50  0001 C CNN
F 3 "~" H 1550 4800 50  0001 C CNN
	1    1550 4800
	1    0    0    -1  
$EndComp
$Sheet
S 3100 1600 550  250 
U 5E192B40
F0 "Вывеска" 50
F1 "sign.sch" 50
F2 "+12" I L 3100 1650 50 
F3 "GND" I L 3100 1750 50 
$EndSheet
$Sheet
S 1150 4000 550  450 
U 5E1934F8
F0 "RFID-reader" 50
F1 "rfid_reader.sch" 50
F2 "+12" I R 1700 4050 50 
F3 "A" I R 1700 4150 50 
F4 "B" I R 1700 4250 50 
F5 "GND" I R 1700 4350 50 
$EndSheet
$Comp
L device:Lamp LA1
U 1 1 5E193A4A
P 3200 4000
F 0 "LA1" H 3328 4046 50  0000 L CNN
F 1 "Lamp" H 3328 3955 50  0000 L CNN
F 2 "" V 3200 4100 50  0001 C CNN
F 3 "~" V 3200 4100 50  0001 C CNN
	1    3200 4000
	1    0    0    -1  
$EndComp
Wire Notes Line
	1000 1100 4150 1100
Wire Notes Line
	4150 1100 4150 5050
Wire Notes Line
	4150 5050 1000 5050
Wire Notes Line
	1000 5050 1000 1100
Entry Wire Line
	2600 1550 2700 1650
Entry Wire Line
	2600 1650 2700 1750
Wire Wire Line
	3100 1650 2700 1650
Wire Wire Line
	2700 1750 3100 1750
Text Label 2700 1650 0    50   ~ 0
red
Text Label 2700 1750 0    50   ~ 0
black
Entry Wire Line
	3100 3150 3200 3250
Entry Wire Line
	3100 3250 3200 3350
Text Label 3000 3250 0    50   ~ 0
red
Text Label 2950 3150 0    50   ~ 0
black
Entry Wire Line
	2300 1250 2400 1350
Entry Wire Line
	2300 1350 2400 1450
Entry Wire Line
	2300 1600 2400 1700
Entry Wire Line
	2300 1800 2400 1900
Wire Wire Line
	2300 1250 1100 1250
Wire Wire Line
	1100 1250 1100 1400
Wire Wire Line
	1500 1400 1500 1350
Wire Wire Line
	1500 1350 2300 1350
Wire Wire Line
	2300 1600 1150 1600
Wire Wire Line
	1150 1600 1150 1800
Wire Wire Line
	2300 1800 1450 1800
Entry Wire Line
	2300 2700 2400 2800
Entry Wire Line
	2300 2600 2400 2700
Entry Wire Line
	2300 2500 2400 2600
Entry Wire Line
	2300 2400 2400 2500
Entry Wire Line
	2300 2300 2400 2400
Entry Wire Line
	2300 2200 2400 2300
Wire Wire Line
	2300 2200 1700 2200
Wire Wire Line
	1700 2300 2300 2300
Wire Wire Line
	2300 2400 1700 2400
Wire Wire Line
	1700 2500 2300 2500
Wire Wire Line
	2300 2600 1700 2600
Wire Wire Line
	1700 2700 2300 2700
Entry Wire Line
	2300 3300 2400 3400
Entry Wire Line
	2300 3400 2400 3500
Entry Wire Line
	2300 4050 2400 4150
Entry Wire Line
	2300 4150 2400 4250
Entry Wire Line
	2300 4250 2400 4350
Entry Wire Line
	2300 4350 2400 4450
Entry Wire Line
	2300 4650 2400 4750
Wire Wire Line
	2300 3300 1700 3300
Wire Wire Line
	1700 3400 2300 3400
Wire Wire Line
	1700 4050 2300 4050
Wire Wire Line
	2300 4150 1700 4150
Wire Wire Line
	1700 4250 2300 4250
Wire Wire Line
	2300 4350 1700 4350
Wire Wire Line
	2300 4650 1350 4650
Wire Wire Line
	1350 4650 1350 4800
Wire Wire Line
	1750 4800 2300 4800
Entry Wire Line
	2300 4800 2400 4900
Entry Wire Line
	2400 3050 2500 3150
Entry Wire Line
	2400 3150 2500 3250
Wire Wire Line
	2500 3150 3100 3150
Wire Wire Line
	2500 3250 3100 3250
Text Label 1750 1250 0    50   ~ 0
yellow+orange
Text Label 1800 1350 0    50   ~ 0
violet+green
Text Label 1800 1600 0    50   ~ 0
green+brown
Text Label 1850 1800 0    50   ~ 0
green+white
Text Label 2100 2200 0    50   ~ 0
green
Text Label 2100 2300 0    50   ~ 0
white
Text Label 2100 2400 0    50   ~ 0
red
Text Label 2100 2500 0    50   ~ 0
black
Text Label 2100 2600 0    50   ~ 0
blue
Text Label 2050 2700 0    50   ~ 0
yellow
Text Label 1850 4650 0    50   ~ 0
white+brown
Text Label 1900 4800 0    50   ~ 0
white+blue
Text Label 1950 3300 0    50   ~ 0
white+red
Text Label 1850 3400 0    50   ~ 0
white+black
Text Label 2500 3150 0    50   ~ 0
blue+red
Text Label 2500 3250 0    50   ~ 0
brown
Text Label 2050 4050 0    50   ~ 0
brown
Text Label 2050 4150 0    50   ~ 0
violet
Text Label 1900 4250 0    50   ~ 0
black+red
Text Label 2100 4350 0    50   ~ 0
pink
Wire Bus Line
	3200 2300 2600 2300
Text Notes 3400 5050 0    100  ~ 0
Аквариум
Wire Notes Line
	4250 1100 13700 1100
Text Notes 13100 15200 0    100  ~ 0
Тамбур
$Comp
L sw:SW_Reed SW?
U 1 1 5E17D356
P 5450 6200
F 0 "SW?" H 5450 6300 50  0000 C CNN
F 1 "Концевик железной двери" H 5500 6100 50  0000 C CNN
F 2 "" H 5450 6200 50  0001 C CNN
F 3 "~" H 5450 6200 50  0001 C CNN
	1    5450 6200
	1    0    0    -1  
$EndComp
$Comp
L sw:SW_Reed SW?
U 1 1 5E17D73B
P 10450 1650
F 0 "SW?" H 10450 1750 50  0000 C CNN
F 1 "Концевик тамбурной двери" H 10500 1550 50  0000 C CNN
F 2 "" H 10450 1650 50  0001 C CNN
F 3 "~" H 10450 1650 50  0001 C CNN
	1    10450 1650
	1    0    0    -1  
$EndComp
$Comp
L sw:SW_SPST SW?
U 1 1 5E17DC84
P 12000 6400
F 0 "SW?" H 12000 6500 50  0000 C CNN
F 1 "Выключатель света в аквариуме" H 12000 6300 50  0000 C CNN
F 2 "" H 12000 6400 50  0001 C CNN
F 3 "~" H 12000 6400 50  0001 C CNN
	1    12000 6400
	1    0    0    -1  
$EndComp
$Comp
L device:Lamp LA?
U 1 1 5E17FAFA
P 5450 2250
F 0 "LA?" V 5578 2296 50  0000 L CNN
F 1 "Lamp" V 5650 2250 50  0000 L CNN
F 2 "" V 5450 2350 50  0001 C CNN
F 3 "~" V 5450 2350 50  0001 C CNN
	1    5450 2250
	0    1    1    0   
$EndComp
Entry Wire Line
	4700 1500 4800 1600
Entry Wire Line
	4700 1650 4800 1750
Wire Wire Line
	5700 1600 5700 2250
Wire Wire Line
	5700 2250 5650 2250
Wire Wire Line
	5100 1750 4800 1750
Text Label 4800 1600 0    50   ~ 0
L
Text Label 4800 1750 0    50   ~ 0
N
Entry Wire Line
	6100 1450 6200 1550
Entry Wire Line
	6100 1600 6200 1700
Wire Wire Line
	6100 1450 5200 1450
Wire Wire Line
	5200 1450 5200 1600
Wire Wire Line
	5200 1600 4800 1600
Wire Wire Line
	6100 1600 5700 1600
Connection ~ 5700 1600
$Comp
L sw:SW_SPST SW?
U 1 1 5E17EE22
P 5450 1600
F 0 "SW?" H 5450 1500 50  0000 C CNN
F 1 "Выключатель света в тамбуре" H 5400 1900 50  0000 C CNN
F 2 "" H 5450 1600 50  0001 C CNN
F 3 "~" H 5450 1600 50  0001 C CNN
	1    5450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1600 5700 1600
Wire Wire Line
	5250 1600 5200 1600
Connection ~ 5200 1600
Wire Wire Line
	5250 2250 5100 2250
Wire Wire Line
	5100 2250 5100 1750
Text Label 6050 1450 0    50   ~ 0
L
Text Label 6050 1600 0    50   ~ 0
N
Entry Wire Line
	4600 3550 4500 3650
Entry Wire Line
	4600 3650 4500 3750
Entry Wire Line
	4600 3900 4500 4000
Entry Wire Line
	4600 4100 4500 4200
Wire Wire Line
	4600 3550 5200 3550
Wire Wire Line
	5200 3650 4600 3650
Wire Wire Line
	4600 3900 5200 3900
Wire Wire Line
	4600 4100 5200 4100
Entry Wire Line
	4600 3200 4500 3300
Entry Wire Line
	4600 3100 4500 3200
Entry Wire Line
	4600 3000 4500 3100
Entry Wire Line
	4600 2900 4500 3000
Entry Wire Line
	4600 2800 4500 2900
Entry Wire Line
	4600 2700 4500 2800
Wire Wire Line
	4600 2700 5200 2700
Wire Wire Line
	5200 2800 4600 2800
Wire Wire Line
	4600 2900 5200 2900
Wire Wire Line
	5200 3000 4600 3000
Wire Wire Line
	4600 3100 5200 3100
Wire Wire Line
	5200 3200 4600 3200
Entry Wire Line
	4600 4700 4500 4800
Entry Wire Line
	4600 4800 4500 4900
Entry Wire Line
	4600 5050 4500 5150
Entry Wire Line
	4600 5150 4500 5250
Entry Wire Line
	4600 5250 4500 5350
Entry Wire Line
	4600 5350 4500 5450
Entry Wire Line
	4600 5650 4500 5750
Wire Wire Line
	4600 4700 5200 4700
Wire Wire Line
	5200 4800 4600 4800
Wire Wire Line
	5200 5050 4600 5050
Wire Wire Line
	4600 5150 5200 5150
Wire Wire Line
	5200 5250 4600 5250
Wire Wire Line
	4600 5350 5200 5350
Wire Wire Line
	4600 5650 5200 5650
Wire Wire Line
	5200 5800 4600 5800
Entry Wire Line
	4600 5800 4500 5900
Entry Wire Line
	4500 4350 4600 4450
Entry Wire Line
	4500 4450 4600 4550
Wire Wire Line
	4600 4450 5200 4450
Wire Wire Line
	4600 4550 5200 4550
Text Label 5150 3550 2    50   ~ 0
yellow+orange
Text Label 5100 3650 2    50   ~ 0
violet+green
Text Label 5100 3900 2    50   ~ 0
green+brown
Text Label 5050 4100 2    50   ~ 0
green+white
Text Label 4800 2700 2    50   ~ 0
green
Text Label 4800 2800 2    50   ~ 0
white
Text Label 4800 2900 2    50   ~ 0
red
Text Label 4800 3000 2    50   ~ 0
black
Text Label 4800 3100 2    50   ~ 0
blue
Text Label 4850 3200 2    50   ~ 0
yellow
Text Label 5050 5650 2    50   ~ 0
white+brown
Text Label 5000 5800 2    50   ~ 0
white+blue
Text Label 4950 4700 2    50   ~ 0
white+red
Text Label 5050 4800 2    50   ~ 0
white+black
Text Label 4600 4450 0    50   ~ 0
blue+red
Text Label 4600 4550 0    50   ~ 0
brown
Text Label 4850 5050 2    50   ~ 0
brown
Text Label 4850 5150 2    50   ~ 0
violet
Text Label 5000 5250 2    50   ~ 0
black+red
Text Label 4800 5350 2    50   ~ 0
pink
Wire Bus Line
	2400 1200 4500 1200
Wire Notes Line
	4250 1100 4250 15250
Wire Notes Line
	16350 1200 21550 1200
Wire Notes Line
	21550 1200 21550 3250
Wire Notes Line
	21550 3250 16350 3250
Wire Notes Line
	16350 3250 16350 1200
Text Notes 20700 3200 0    100  ~ 0
Серверная
Wire Notes Line
	16350 3750 22150 3750
Wire Notes Line
	22150 3750 22150 6450
Wire Notes Line
	22150 6450 16350 6450
Wire Notes Line
	16350 3750 16350 6450
Text Notes 21250 6400 0    100  ~ 0
Openspace
$Sheet
S 17100 4200 550  700 
U 5E187307
F0 "Домофон" 50
F1 "intercom.sch" 50
F2 "1" I L 17100 4300 50 
F3 "2" I L 17100 4400 50 
F4 "3" I L 17100 4500 50 
F5 "4" I L 17100 4600 50 
F6 "5" I L 17100 4700 50 
F7 "6" I L 17100 4800 50 
$EndSheet
$Sheet
S 19800 3850 800  2050
U 5E188298
F0 "Pauk" 50
F1 "pauk.sch" 50
F2 "+12" I L 19800 3950 50 
F3 "GND" I L 19800 4050 50 
F4 "A" I L 19800 4200 50 
F5 "B" I L 19800 4300 50 
F6 "1_IO" I R 20600 3950 50 
F7 "1_PWR" I R 20600 4050 50 
F8 "2_IO" I R 20600 4200 50 
F9 "2_PWR" I R 20600 4300 50 
F10 "3_IO" I R 20600 4450 50 
F11 "3_PWR" I R 20600 4550 50 
F12 "4_IO" I R 20600 4700 50 
F13 "4_PWR" I R 20600 4800 50 
F14 "5_IO" I R 20600 4950 50 
F15 "5_PWR" I R 20600 5050 50 
F16 "6_IO" I R 20600 5200 50 
F17 "6_PWR" I R 20600 5300 50 
F18 "7_IO" I R 20600 5450 50 
F19 "7_PWR" I R 20600 5550 50 
F20 "8_IO" I R 20600 5700 50 
F21 "8_PWR" I R 20600 5800 50 
$EndSheet
Wire Bus Line
	6250 3200 6250 2450
Wire Bus Line
	6250 2450 7500 2450
Wire Bus Line
	7500 2450 7500 900 
Wire Bus Line
	7500 900  16050 900 
Wire Bus Line
	16050 900  16050 3850
Wire Bus Line
	16050 3850 16600 3850
Entry Wire Line
	16600 4400 16700 4500
Entry Wire Line
	16600 4300 16700 4400
Entry Wire Line
	16600 4200 16700 4300
Entry Wire Line
	16600 4500 16700 4600
Entry Wire Line
	16600 4600 16700 4700
Entry Wire Line
	16600 4700 16700 4800
Wire Wire Line
	17100 4300 16700 4300
Wire Wire Line
	16700 4400 17100 4400
Wire Wire Line
	17100 4500 16700 4500
Wire Wire Line
	16700 4600 17100 4600
Wire Wire Line
	17100 4700 16700 4700
Wire Wire Line
	16700 4800 17100 4800
$Sheet
S 21050 3850 750  1600
U 5E1AFC9A
F0 "Мигало" 50
F1 "ledbox.sch" 50
F2 "LED_COM" I L 21050 3950 50 
F3 "LED_RED" I L 21050 4100 50 
F4 "LED_WHITE" I L 21050 4200 50 
F5 "LED_BLUE" I L 21050 4300 50 
F6 "LED_YELLOW" I L 21050 4400 50 
F7 "LED_GREEN" I L 21050 4500 50 
F8 "BUTTON_P" I L 21050 4650 50 
F9 "BUTTON_N" I L 21050 4750 50 
$EndSheet
Wire Wire Line
	21050 3950 20850 3950
Wire Wire Line
	20850 3950 20850 4050
Wire Wire Line
	20850 4050 20600 4050
Wire Wire Line
	20600 3950 20700 3950
Wire Wire Line
	20700 3950 20700 4100
Wire Wire Line
	20700 4100 21050 4100
Wire Wire Line
	20600 4200 21050 4200
Wire Wire Line
	20600 4450 20700 4450
Wire Wire Line
	20700 4450 20700 4300
Wire Wire Line
	20700 4300 21050 4300
Wire Wire Line
	20600 4700 20750 4700
Wire Wire Line
	20750 4700 20750 4400
Wire Wire Line
	20750 4400 21050 4400
Wire Wire Line
	21050 4500 20800 4500
Wire Wire Line
	20800 4500 20800 4950
Wire Wire Line
	20800 4950 20600 4950
Wire Wire Line
	20600 5200 20850 5200
Wire Wire Line
	20850 5200 20850 4650
Wire Wire Line
	20850 4650 21050 4650
Wire Wire Line
	21050 4750 20900 4750
Wire Wire Line
	20900 4750 20900 5300
Wire Wire Line
	20900 5300 20600 5300
$Comp
L device:Lamp LA?
U 1 1 5E1D4AEC
P 21350 5700
F 0 "LA?" V 21450 5800 50  0000 L CNN
F 1 "Красная лампа" V 21250 5800 50  0000 L CNN
F 2 "" V 21350 5800 50  0001 C CNN
F 3 "~" V 21350 5800 50  0001 C CNN
	1    21350 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	21150 5700 20600 5700
Wire Wire Line
	21550 5700 21750 5700
Wire Wire Line
	21750 5700 21750 5900
Wire Wire Line
	21750 5900 21000 5900
Wire Wire Line
	21000 5900 21000 5800
Wire Wire Line
	21000 5800 20600 5800
Wire Bus Line
	19200 3600 16150 3600
Wire Bus Line
	16150 3600 16150 800 
Wire Bus Line
	16150 800  9300 800 
Entry Wire Line
	19200 3950 19300 4050
Entry Wire Line
	19200 3850 19300 3950
Entry Wire Line
	19200 4100 19300 4200
Entry Wire Line
	19200 4200 19300 4300
Wire Wire Line
	19800 3950 19300 3950
Wire Wire Line
	19300 4050 19800 4050
Wire Wire Line
	19800 4200 19300 4200
Wire Wire Line
	19300 4300 19800 4300
Text Label 19300 3950 0    50   ~ 0
red
Text Label 19300 4050 0    50   ~ 0
black
$Sheet
S 17400 2350 600  350 
U 5E214242
F0 "Power adapter" 50
F1 "power_adapter.sch" 50
F2 "+12" O L 17400 2450 50 
F3 "GND" U L 17400 2550 50 
F4 "L" I R 18000 2450 50 
F5 "N" I R 18000 2550 50 
$EndSheet
Wire Wire Line
	18400 1500 18100 1500
Wire Wire Line
	18100 1600 18400 1600
Wire Wire Line
	18300 1850 18400 1850
Wire Wire Line
	18100 1750 18200 1750
Wire Wire Line
	18200 1750 18200 1800
Wire Wire Line
	18250 1850 18100 1850
Wire Wire Line
	18300 1800 18300 1850
Wire Wire Line
	18250 1750 18250 1850
Wire Wire Line
	18250 1750 18400 1750
Wire Wire Line
	18200 1800 18300 1800
$Sheet
S 17400 1350 700  700 
U 5E1FC792
F0 "PI power" 50
F1 "pipower.sch" 50
F2 "+12" I L 17400 1500 50 
F3 "GND" U L 17400 1600 50 
F4 "A" T L 17400 1750 50 
F5 "B" T L 17400 1850 50 
F6 "+5" O R 18100 1500 50 
F7 "TX" O R 18100 1750 50 
F8 "RX" I R 18100 1850 50 
F9 "GND_PI" U R 18100 1600 50 
$EndSheet
$Sheet
S 18400 1400 550  650 
U 5E1FC374
F0 "Raspberry pi 3" 50
F1 "rpi3.sch" 50
F2 "+5" I L 18400 1500 50 
F3 "GND" U L 18400 1600 50 
F4 "TX" O L 18400 1750 50 
F5 "RX" I L 18400 1850 50 
$EndSheet
Wire Wire Line
	17400 2550 17150 2550
Wire Wire Line
	17150 2550 17150 1600
Wire Wire Line
	17200 1500 17200 2450
Wire Wire Line
	17200 2450 17400 2450
Entry Wire Line
	16650 1500 16750 1600
Entry Wire Line
	16650 1400 16750 1500
Entry Wire Line
	16650 1650 16750 1750
Entry Wire Line
	16650 1750 16750 1850
Wire Wire Line
	16750 1600 17150 1600
Text Label 16750 1500 0    50   ~ 0
red
Text Label 16750 1600 0    50   ~ 0
black
Connection ~ 17150 1600
Wire Wire Line
	17200 1500 16750 1500
Wire Wire Line
	17150 1600 17400 1600
Wire Wire Line
	17400 1500 17200 1500
Connection ~ 17200 1500
Wire Wire Line
	16750 1750 17400 1750
Wire Wire Line
	16750 1850 17400 1850
Wire Bus Line
	16650 700  9400 700 
Entry Wire Line
	7500 4500 7600 4600
Entry Wire Line
	7500 4600 7600 4700
Entry Wire Line
	7500 4700 7600 4800
Entry Wire Line
	7500 4800 7600 4900
Wire Wire Line
	7500 4500 6900 4500
Wire Wire Line
	6900 4600 7500 4600
Wire Wire Line
	7500 4700 6900 4700
Wire Wire Line
	7500 4800 6900 4800
Entry Wire Line
	7500 4400 7600 4500
Entry Wire Line
	7500 4300 7600 4400
Entry Wire Line
	7500 4200 7600 4300
Entry Wire Line
	7500 4100 7600 4200
Entry Wire Line
	7500 4000 7600 4100
Entry Wire Line
	7500 3900 7600 4000
Wire Wire Line
	7500 3900 6900 3900
Wire Wire Line
	6900 4000 7500 4000
Wire Wire Line
	7500 4100 6900 4100
Wire Wire Line
	6900 4200 7500 4200
Wire Wire Line
	7500 4300 6900 4300
Wire Wire Line
	6900 4400 7500 4400
Entry Wire Line
	7500 5100 7600 5200
Entry Wire Line
	7500 5200 7600 5300
Entry Wire Line
	7500 5300 7600 5400
Entry Wire Line
	7500 5400 7600 5500
Entry Wire Line
	7500 5500 7600 5600
Entry Wire Line
	7500 5600 7600 5700
Entry Wire Line
	7500 5700 7600 5800
Wire Wire Line
	7500 5100 6900 5100
Wire Wire Line
	6900 5200 7500 5200
Wire Wire Line
	6900 5300 7500 5300
Wire Wire Line
	7500 5400 6900 5400
Wire Wire Line
	6900 5500 7500 5500
Wire Wire Line
	7500 5600 6900 5600
Wire Wire Line
	7500 5700 6900 5700
Wire Wire Line
	6900 5800 7500 5800
Entry Wire Line
	7500 5800 7600 5900
Entry Wire Line
	7500 4900 7600 5000
Entry Wire Line
	7600 5100 7500 5000
Wire Wire Line
	7500 4900 6900 4900
Wire Wire Line
	7500 5000 6900 5000
Text Label 6950 4500 0    50   ~ 0
yellow+orange
Text Label 7000 4600 0    50   ~ 0
violet+green
Text Label 7000 4700 0    50   ~ 0
green+brown
Text Label 7050 4800 0    50   ~ 0
green+white
Text Label 7300 3900 0    50   ~ 0
green
Text Label 7300 4000 0    50   ~ 0
white
Text Label 7300 4100 0    50   ~ 0
red
Text Label 7300 4200 0    50   ~ 0
black
Text Label 7300 4300 0    50   ~ 0
blue
Text Label 7250 4400 0    50   ~ 0
yellow
Text Label 7050 5700 0    50   ~ 0
white+brown
Text Label 7100 5800 0    50   ~ 0
white+blue
Text Label 7150 5100 0    50   ~ 0
white+red
Text Label 7050 5200 0    50   ~ 0
white+black
Text Label 7500 4900 2    50   ~ 0
blue+red
Text Label 7500 5000 2    50   ~ 0
brown
Text Label 7250 5300 0    50   ~ 0
brown
Text Label 7250 5400 0    50   ~ 0
violet
Text Label 7100 5500 0    50   ~ 0
black+red
Text Label 7300 5600 0    50   ~ 0
pink
Wire Bus Line
	6200 750  8600 750 
Wire Bus Line
	4700 650  8700 650 
Wire Bus Line
	7600 1200 9200 1200
$Comp
L device:CircuitBreaker_3P CB?
U 1 1 5E37DDB9
P 5600 7850
F 0 "CB?" H 5853 7896 50  0000 L CNN
F 1 "Вводной автомат" H 5853 7805 50  0000 L CNN
F 2 "" H 5900 7750 50  0001 C CNN
F 3 "~" H 5850 7850 50  0001 C CNN
	1    5600 7850
	1    0    0    -1  
$EndComp
Entry Wire Line
	5300 7300 5400 7400
Entry Wire Line
	5500 7300 5600 7400
Entry Wire Line
	5700 7300 5800 7400
Wire Wire Line
	5400 7400 5400 7550
Wire Wire Line
	5600 7400 5600 7550
Wire Wire Line
	5800 7400 5800 7550
Text Label 5400 7450 0    50   ~ 0
A
Text Label 5600 7450 0    50   ~ 0
B
Text Label 5800 7450 0    50   ~ 0
C
Entry Wire Line
	5050 7300 5150 7400
Entry Wire Line
	4850 7300 4950 7400
Text Label 4750 7300 0    50   ~ 0
Ввод
Text Label 5150 7450 0    50   ~ 0
N
Text Label 4950 7450 0    50   ~ 0
PE
$Sheet
S 6000 8300 650  950 
U 5E3D73F8
F0 "Счетчик" 50
F1 "meter.sch" 50
F2 "A_in" I L 6000 8400 50 
F3 "A_out" O L 6000 8500 50 
F4 "B_in" I L 6000 8650 50 
F5 "B_out" O L 6000 8750 50 
F6 "C_in" I L 6000 8900 50 
F7 "C_out" O L 6000 9000 50 
F8 "N" U L 6000 9150 50 
$EndSheet
Wire Wire Line
	5400 8150 5400 8400
Wire Wire Line
	5400 8400 6000 8400
Wire Wire Line
	5600 8150 5600 8650
Wire Wire Line
	5600 8650 6000 8650
Wire Wire Line
	5800 8150 5800 8900
Wire Wire Line
	5800 8900 6000 8900
Wire Wire Line
	5150 9150 6000 9150
Wire Wire Line
	5150 7400 5150 9150
Wire Wire Line
	6000 8500 5400 8500
Wire Wire Line
	5400 8500 5400 9650
Wire Wire Line
	5400 9650 6950 9650
Wire Wire Line
	6950 9650 6950 7300
Wire Wire Line
	6000 8750 5600 8750
Wire Wire Line
	5600 8750 5600 9600
Wire Wire Line
	6900 9600 6900 7350
Wire Wire Line
	5600 9600 6900 9600
Wire Wire Line
	6000 9000 5800 9000
Wire Wire Line
	5800 9000 5800 9550
Wire Wire Line
	5800 9550 6850 9550
Wire Wire Line
	6850 9550 6850 7400
Wire Wire Line
	5150 9150 5150 10200
Wire Wire Line
	5150 10200 7050 10200
Connection ~ 5150 9150
Wire Wire Line
	4950 7400 4950 10250
$Comp
L device:CircuitBreaker_2P CB?
U 1 1 5E475859
P 8150 7800
F 0 "CB?" H 8302 7846 50  0000 L CNN
F 1 "Розетки" H 8302 7755 50  0000 L CNN
F 2 "" H 8050 7800 50  0001 C CNN
F 3 "~" H 8050 7800 50  0001 C CNN
	1    8150 7800
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E47629A
P 9850 7800
F 0 "CB?" H 9903 7846 50  0000 L CNN
F 1 "ПС+Серверная" H 9903 7755 50  0000 L CNN
F 2 "" H 9850 7800 50  0001 C CNN
F 3 "~" H 9850 7800 50  0001 C CNN
	1    9850 7800
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E4831FC
P 10650 7800
F 0 "CB?" H 10702 7846 50  0000 L CNN
F 1 "Освещение 1" H 10702 7755 50  0000 L CNN
F 2 "" H 10650 7800 50  0001 C CNN
F 3 "~" H 10650 7800 50  0001 C CNN
	1    10650 7800
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E483655
P 11250 7800
F 0 "CB?" H 11302 7846 50  0000 L CNN
F 1 "Освещение 2" H 11302 7755 50  0000 L CNN
F 2 "" H 11250 7800 50  0001 C CNN
F 3 "~" H 11250 7800 50  0001 C CNN
	1    11250 7800
	1    0    0    -1  
$EndComp
$Comp
L relay:DIPxx-2Axx-21x K?
U 1 1 5E4C3DF4
P 8150 8750
F 0 "K?" H 8630 8750 50  0000 L CNN
F 1 "DIPxx-2Axx-21x" H 8630 8705 50  0001 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 8650 8700 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 8150 8750 50  0001 C CNN
	1    8150 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 7500 7050 10200
Wire Wire Line
	7050 10200 7450 10200
Wire Wire Line
	8250 8100 8250 8350
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E47530D
P 9400 7800
F 0 "CB?" H 9453 7846 50  0000 L CNN
F 1 "ОС" H 9453 7755 50  0000 L CNN
F 2 "" H 9400 7800 50  0001 C CNN
F 3 "~" H 9400 7800 50  0001 C CNN
	1    9400 7800
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E5323C5
P 8900 8750
F 0 "CB?" H 8952 8796 50  0000 L CNN
F 1 "Bypass" H 8952 8705 50  0000 L CNN
F 2 "" H 8900 8750 50  0001 C CNN
F 3 "~" H 8900 8750 50  0001 C CNN
	1    8900 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 7350 11250 7350
Wire Wire Line
	6850 7400 8250 7400
Wire Wire Line
	7050 7500 8050 7500
Wire Wire Line
	8050 8100 7550 8100
Wire Wire Line
	8900 8350 8250 8350
Connection ~ 8250 8350
Wire Wire Line
	8250 8350 8250 8450
Wire Wire Line
	8900 8450 8900 8350
Wire Wire Line
	8900 9050 8900 9150
Wire Wire Line
	8250 9150 8250 9050
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E6D598F
P 8750 9600
F 0 "CB?" H 8802 9646 50  0000 L CNN
F 1 "Правые" H 8802 9555 50  0000 L CNN
F 2 "" H 8750 9600 50  0001 C CNN
F 3 "~" H 8750 9600 50  0001 C CNN
	1    8750 9600
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E710602
P 8250 9600
F 0 "CB?" H 8302 9646 50  0000 L CNN
F 1 "Левые" H 8302 9555 50  0000 L CNN
F 2 "" H 8250 9600 50  0001 C CNN
F 3 "~" H 8250 9600 50  0001 C CNN
	1    8250 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 9150 8250 9150
Wire Wire Line
	8250 9150 8250 9250
Connection ~ 8250 9150
Wire Wire Line
	8750 9300 8750 9250
Wire Wire Line
	8750 9250 8250 9250
Connection ~ 8250 9250
Wire Wire Line
	8250 9250 8250 9300
Wire Bus Line
	8250 10550 8250 10850
Entry Wire Line
	8150 10550 8250 10450
Entry Wire Line
	8050 10550 8150 10450
Entry Wire Line
	7900 10550 8000 10450
Wire Wire Line
	8250 10450 8250 9900
Wire Wire Line
	8150 10450 8150 10000
Wire Wire Line
	8150 10000 7550 10000
Wire Wire Line
	7550 8100 7550 10000
Wire Wire Line
	8000 10450 8000 10250
Wire Wire Line
	8000 10250 8500 10250
Text Label 8250 10450 0    50   ~ 0
L
Text Label 8150 10450 0    50   ~ 0
N
Text Label 8000 10450 0    50   ~ 0
PE
Connection ~ 7050 10200
Entry Wire Line
	7200 9400 7300 9300
Entry Wire Line
	7200 9500 7300 9400
Wire Wire Line
	7850 9050 7850 9300
Wire Wire Line
	7850 9300 7300 9300
Wire Wire Line
	7300 9400 7450 9400
Wire Wire Line
	7450 9400 7450 10200
Connection ~ 7450 10200
Wire Wire Line
	7450 10200 9300 10200
Text Label 7300 9300 0    50   ~ 0
L
Text Label 7300 9400 0    50   ~ 0
N
Wire Bus Line
	8750 10550 8750 10850
Entry Wire Line
	8650 10550 8750 10450
Entry Wire Line
	8550 10550 8650 10450
Entry Wire Line
	8400 10550 8500 10450
Wire Wire Line
	8750 10450 8750 9900
Wire Wire Line
	8650 10450 8650 10000
Text Label 8750 10450 0    50   ~ 0
L
Text Label 8650 10450 0    50   ~ 0
N
Text Label 8500 10450 0    50   ~ 0
PE
Wire Wire Line
	8500 10450 8500 10250
Connection ~ 8500 10250
Wire Wire Line
	8500 10250 9150 10250
Wire Wire Line
	8650 10000 8150 10000
Connection ~ 8150 10000
Wire Bus Line
	9400 10550 9400 10850
Entry Wire Line
	9300 10550 9400 10450
Entry Wire Line
	9200 10550 9300 10450
Entry Wire Line
	9050 10550 9150 10450
Wire Wire Line
	9300 10450 9300 10200
Text Label 9400 10450 0    50   ~ 0
L
Text Label 9300 10450 0    50   ~ 0
N
Text Label 9150 10450 0    50   ~ 0
PE
Wire Wire Line
	9150 10450 9150 10250
Connection ~ 9150 10250
Wire Wire Line
	9150 10250 9600 10250
Wire Wire Line
	9400 8100 9400 10450
Connection ~ 9300 10200
Wire Wire Line
	9300 10200 9750 10200
Wire Bus Line
	9850 10550 9850 10850
Entry Wire Line
	9750 10550 9850 10450
Entry Wire Line
	9650 10550 9750 10450
Entry Wire Line
	9500 10550 9600 10450
Text Label 9850 10450 0    50   ~ 0
L
Text Label 9750 10450 0    50   ~ 0
N
Text Label 9600 10450 0    50   ~ 0
PE
Wire Wire Line
	9850 8100 9850 10450
Wire Wire Line
	9600 10450 9600 10250
Connection ~ 9600 10250
Wire Wire Line
	9750 10450 9750 10200
Connection ~ 9750 10200
Wire Bus Line
	10650 10550 10650 10850
Entry Wire Line
	10550 10550 10650 10450
Entry Wire Line
	10450 10550 10550 10450
Entry Wire Line
	10300 10550 10400 10450
Text Label 10650 10450 0    50   ~ 0
L
Text Label 10550 10450 0    50   ~ 0
N
Text Label 10400 10450 0    50   ~ 0
PE
Wire Wire Line
	10650 8100 10650 10450
Wire Wire Line
	10550 10450 10550 10200
Wire Wire Line
	10400 10450 10400 10250
Wire Bus Line
	11250 10550 11250 10850
Entry Wire Line
	11150 10550 11250 10450
Entry Wire Line
	11050 10550 11150 10450
Entry Wire Line
	10900 10550 11000 10450
Text Label 11250 10450 0    50   ~ 0
L
Text Label 11150 10450 0    50   ~ 0
N
Text Label 11000 10450 0    50   ~ 0
PE
Wire Wire Line
	11250 8100 11250 8150
Wire Wire Line
	11150 10450 11150 10200
Wire Wire Line
	11000 10450 11000 10250
Text Label 11800 10450 0    50   ~ 0
N
Text Label 11650 10450 0    50   ~ 0
PE
Wire Wire Line
	11650 10450 11650 10250
Wire Wire Line
	11800 10450 11800 10200
Wire Bus Line
	11900 10550 11900 10850
Entry Wire Line
	11550 10550 11650 10450
Entry Wire Line
	11700 10550 11800 10450
Text Label 11900 10450 0    50   ~ 0
L
Entry Wire Line
	11800 10550 11900 10450
$Comp
L device:CircuitBreaker_1P CB?
U 1 1 5E49D12D
P 11900 7800
F 0 "CB?" H 11952 7846 50  0000 L CNN
F 1 "СКУД 230В" H 11952 7755 50  0000 L CNN
F 2 "" H 11900 7800 50  0001 C CNN
F 3 "~" H 11900 7800 50  0001 C CNN
	1    11900 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 8250 7850 8450
Wire Wire Line
	11900 8100 11900 8250
Wire Wire Line
	11900 8250 7850 8250
Connection ~ 11650 10250
Wire Wire Line
	11650 10250 12100 10250
Connection ~ 11800 10200
Wire Wire Line
	11800 10200 12000 10200
Connection ~ 11900 8250
Wire Wire Line
	11900 8250 11900 8750
Wire Notes Line
	13600 7050 13600 10950
Wire Notes Line
	4550 10950 4550 7050
Text Notes 12100 10900 0    100  ~ 0
ВРУ-1
Wire Wire Line
	4950 10250 8000 10250
Connection ~ 8000 10250
Wire Notes Line
	4250 15250 13700 15250
Wire Notes Line
	13700 1100 13700 15250
$Sheet
S 7550 11600 1500 3150
U 5EC3760C
F0 "Endpoint++" 50
F1 "endpointpp.sch" 50
F2 "+12_0" B L 7550 11700 50 
F3 "GND_0" U L 7550 11800 50 
F4 "A_0" T L 7550 11900 50 
F5 "B_0" T L 7550 12000 50 
F6 "+12_1" B L 7550 12150 50 
F7 "GND_1" U L 7550 12250 50 
F8 "A_1" T L 7550 12350 50 
F9 "B_1" T L 7550 12450 50 
F10 "+12_PWR" B L 7550 12600 50 
F11 "GND_PWR" U L 7550 12700 50 
F12 "+5_LPWR" O L 7550 12850 50 
F13 "GND_LPWR" U L 7550 12950 50 
F14 "RELAY1_NC" U L 7550 13150 50 
F15 "RELAY1_NO" U L 7550 13250 50 
F16 "RELAY1_COM" U L 7550 13350 50 
F17 "RELAY2_NC" U L 7550 13500 50 
F18 "RELAY2_NO" U L 7550 13600 50 
F19 "RELAY2_COM" U L 7550 13700 50 
F20 "RELAY3_NC" U L 7550 13850 50 
F21 "RELAY3_NO" U L 7550 13950 50 
F22 "RELAY3_COM" U L 7550 14050 50 
F23 "IO_1" B R 9050 11700 50 
F24 "PWR_1_GND" U R 9050 11800 50 
F25 "IO_2" B R 9050 11950 50 
F26 "PWR_2_GND" U R 9050 12050 50 
F27 "IO_3" B R 9050 12200 50 
F28 "PWR_3_GND" U R 9050 12300 50 
F29 "IO_4" B R 9050 12450 50 
F30 "PWR_4_GND" U R 9050 12550 50 
F31 "IO_5" B R 9050 12700 50 
F32 "PWR_5_+12" O R 9050 12800 50 
F33 "IO_6" B R 9050 12950 50 
F34 "PWR_6_+12" O R 9050 13050 50 
F35 "IO_7" B R 9050 13200 50 
F36 "PWR_7_+12" O R 9050 13300 50 
F37 "IO_8" B R 9050 13450 50 
F38 "PWR_8_+12" O R 9050 13550 50 
F39 "IO_13" B R 9050 13700 50 
F40 "PWR_13_GND" U R 9050 13800 50 
F41 "IO_14" B R 9050 13950 50 
F42 "PWR_14_GND" U R 9050 14050 50 
F43 "IO_15" B R 9050 14200 50 
F44 "PWR_15_GND" U R 9050 14300 50 
F45 "IO_16" B R 9050 14450 50 
F46 "PWR_16_GND" U R 9050 14550 50 
$EndSheet
Wire Bus Line
	7200 11200 5550 11200
Wire Bus Line
	5550 11200 5550 13800
Wire Bus Line
	5550 13800 6750 13800
Entry Wire Line
	6750 13850 6850 13950
Entry Wire Line
	6750 13950 6850 14050
Wire Wire Line
	7550 13950 6850 13950
Wire Wire Line
	6850 14050 7550 14050
Text Label 6850 13950 0    50   ~ 0
L
Text Label 6850 14050 0    50   ~ 0
N
Text Notes 5750 13950 0    50   ~ 0
Управление контактором
Wire Bus Line
	8700 6850 12550 6850
Wire Bus Line
	12550 6850 12550 9650
Wire Bus Line
	12550 9650 12300 9650
Wire Bus Line
	8700 650  8700 6850
Entry Wire Line
	12300 9750 12200 9850
Entry Wire Line
	12300 9900 12200 10000
Wire Wire Line
	12050 10200 12050 10000
Wire Wire Line
	12050 10000 12200 10000
Connection ~ 12050 10200
Wire Wire Line
	12050 10200 12000 10200
Wire Wire Line
	12200 9850 11900 9850
Connection ~ 11900 9850
Wire Wire Line
	11900 9850 11900 10450
Text Label 12150 9850 0    50   ~ 0
L
Text Label 12150 10000 0    50   ~ 0
N
Wire Bus Line
	8600 6950 12850 6950
Wire Bus Line
	12850 6950 12850 11300
Wire Bus Line
	12850 11300 5650 11300
Wire Bus Line
	5650 11300 5650 13450
Wire Bus Line
	5650 13450 6750 13450
Wire Bus Line
	8600 750  8600 6950
Entry Wire Line
	6750 13500 6850 13600
Entry Wire Line
	6750 13600 6850 13700
Wire Wire Line
	7550 13600 6850 13600
Wire Wire Line
	6850 13700 7550 13700
Text Label 6850 13600 0    50   ~ 0
L
Text Label 6850 13700 0    50   ~ 0
N
Text Notes 6100 13600 0    50   ~ 0
Свет в тамбуре
Wire Bus Line
	12300 8600 12800 8600
Wire Bus Line
	3800 550  8800 550 
Wire Bus Line
	8800 550  8800 6750
Wire Bus Line
	8800 6750 12750 6750
Wire Bus Line
	12750 8200 12300 8200
Wire Bus Line
	12750 6750 12750 8200
Wire Bus Line
	12300 9300 12900 9300
Wire Bus Line
	12900 9300 12900 11350
Wire Bus Line
	12900 11350 5750 11350
Wire Bus Line
	5750 11350 5750 13100
Wire Bus Line
	5750 13100 6750 13100
Entry Wire Line
	12300 9000 12200 9100
Entry Wire Line
	12300 9150 12200 9250
Text Label 12150 9100 0    50   ~ 0
L
Text Label 12150 9250 0    50   ~ 0
N
Wire Wire Line
	12200 9100 11900 9100
Connection ~ 11900 9100
Wire Wire Line
	11900 9100 11900 9850
Entry Wire Line
	12300 8250 12200 8350
Entry Wire Line
	12300 8400 12200 8500
Text Label 12150 8350 0    50   ~ 0
L
Text Label 12150 8500 0    50   ~ 0
N
Entry Wire Line
	12300 8650 12200 8750
Entry Wire Line
	12300 8800 12200 8900
Text Label 12150 8900 0    50   ~ 0
N
Entry Wire Line
	12800 6150 12700 6250
Entry Wire Line
	12800 6300 12700 6400
Text Label 12650 6250 0    50   ~ 0
L
Text Label 12650 6400 0    50   ~ 0
N
Wire Wire Line
	12200 6400 12700 6400
Wire Wire Line
	11800 6400 11750 6400
Wire Wire Line
	11750 6400 11750 6250
Wire Wire Line
	11750 6250 12700 6250
Text Label 12150 8750 0    50   ~ 0
L
Wire Wire Line
	12200 8750 11900 8750
Connection ~ 11900 8750
Wire Wire Line
	11900 8750 11900 9100
Wire Wire Line
	12200 8900 12050 8900
Wire Wire Line
	12050 8900 12050 8350
Wire Wire Line
	12050 8350 12200 8350
Wire Wire Line
	12200 8500 12000 8500
Wire Wire Line
	12000 8500 12000 10200
Connection ~ 12000 10200
Wire Wire Line
	12050 10200 12100 10200
Wire Wire Line
	12200 9250 12050 9250
Wire Wire Line
	12050 9250 12050 8900
Connection ~ 12050 8900
Entry Wire Line
	3800 3700 3700 3800
Entry Wire Line
	3800 4100 3700 4200
Text Label 3650 3800 0    50   ~ 0
L
Text Label 3650 4200 0    50   ~ 0
N
Wire Wire Line
	3200 3800 3700 3800
Wire Wire Line
	3200 4200 3700 4200
Entry Wire Line
	9500 1550 9600 1650
Entry Wire Line
	9500 1400 9600 1500
Wire Wire Line
	9600 1650 10250 1650
Wire Wire Line
	9600 1500 10800 1500
Wire Wire Line
	10800 1500 10800 1650
Wire Wire Line
	10800 1650 10650 1650
Text Label 9600 1500 0    50   ~ 0
green
Text Label 9600 1650 0    50   ~ 0
yellow
Wire Bus Line
	9200 5850 13150 5850
Wire Bus Line
	13150 5850 13150 11550
Wire Bus Line
	9200 1200 9200 5850
Wire Bus Line
	9300 5750 13250 5750
Wire Bus Line
	9300 800  9300 5750
Wire Bus Line
	9400 5650 13350 5650
Wire Bus Line
	9400 700  9400 5650
Wire Bus Line
	9500 5550 13450 5550
Wire Bus Line
	13450 5550 13450 11600
Wire Notes Line
	4550 7050 13600 7050
Wire Notes Line
	4550 10950 13600 10950
Connection ~ 11000 10250
Wire Wire Line
	11000 10250 11650 10250
Connection ~ 11150 10200
Wire Wire Line
	11150 10200 11800 10200
Entry Wire Line
	10150 10550 10250 10450
Entry Wire Line
	10050 10550 10150 10450
Entry Wire Line
	9900 10550 10000 10450
Text Label 10250 10450 0    50   ~ 0
L
Text Label 10150 10450 0    50   ~ 0
N
Text Label 10000 10450 0    50   ~ 0
PE
Connection ~ 10400 10250
Wire Wire Line
	10400 10250 11000 10250
Connection ~ 10550 10200
Wire Wire Line
	10550 10200 11150 10200
Wire Wire Line
	9600 10250 10000 10250
Wire Wire Line
	9750 10200 10150 10200
Wire Wire Line
	10250 10450 10250 8100
Wire Wire Line
	10250 8100 9850 8100
Connection ~ 9850 8100
Wire Wire Line
	10150 10450 10150 10200
Connection ~ 10150 10200
Wire Wire Line
	10150 10200 10550 10200
Wire Wire Line
	10000 10450 10000 10250
Connection ~ 10000 10250
Wire Wire Line
	10000 10250 10400 10250
Wire Bus Line
	10250 11150 14050 11150
Wire Bus Line
	14050 11150 14050 3100
Wire Bus Line
	10250 10550 10250 11150
$Comp
L connector:Conn_WallSocket_Earth J?
U 1 1 5F46BC2E
P 19250 2550
F 0 "J?" H 19256 2884 50  0000 C CNN
F 1 "Conn_WallSocket_Earth" H 19256 2884 50  0001 C CNN
F 2 "" H 18950 2650 50  0001 C CNN
F 3 "~" H 18950 2650 50  0001 C CNN
	1    19250 2550
	-1   0    0    -1  
$EndComp
Wire Bus Line
	14050 3100 19800 3100
Entry Wire Line
	19800 2450 19700 2350
Entry Wire Line
	19800 2650 19700 2550
Entry Wire Line
	19800 2850 19700 2750
Wire Wire Line
	19700 2350 19450 2350
Wire Wire Line
	19450 2550 19700 2550
Wire Wire Line
	19700 2750 19450 2750
Text Label 19650 2350 0    50   ~ 0
L
Text Label 19650 2550 0    50   ~ 0
N
Text Label 19650 2750 0    50   ~ 0
PE
$Comp
L connector:Conn_WallPlug P?
U 1 1 5F521195
P 18500 2450
F 0 "P?" H 18290 2450 50  0000 R CNN
F 1 "Conn_WallPlug" H 18290 2405 50  0001 R CNN
F 2 "" H 18900 2450 50  0001 C CNN
F 3 "~" H 18900 2450 50  0001 C CNN
	1    18500 2450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	18000 2550 18300 2550
Wire Wire Line
	18300 2350 18250 2350
Wire Wire Line
	18250 2350 18250 2450
Wire Wire Line
	18250 2450 18000 2450
Wire Bus Line
	13150 11550 9650 11550
Wire Bus Line
	13250 14950 5200 14950
Wire Bus Line
	5200 14950 5200 12050
Wire Bus Line
	5200 12050 6750 12050
Wire Bus Line
	13250 5750 13250 14950
Wire Bus Line
	13350 15050 5100 15050
Wire Bus Line
	5100 15050 5100 11600
Wire Bus Line
	5100 11600 6750 11600
Wire Bus Line
	13350 5650 13350 15050
Entry Wire Line
	6750 11600 6850 11700
Entry Wire Line
	6750 12050 6850 12150
Entry Wire Line
	6750 11700 6850 11800
Entry Wire Line
	6750 11800 6850 11900
Entry Wire Line
	6750 11900 6850 12000
Entry Wire Line
	6750 12150 6850 12250
Entry Wire Line
	6750 12250 6850 12350
Entry Wire Line
	6750 12350 6850 12450
Wire Wire Line
	7550 11700 6850 11700
Wire Wire Line
	6850 11800 7550 11800
Wire Wire Line
	7550 11900 6850 11900
Wire Wire Line
	6850 12000 7550 12000
Wire Wire Line
	7550 12150 6850 12150
Wire Wire Line
	6850 12250 7550 12250
Wire Wire Line
	7550 12350 6850 12350
Wire Wire Line
	6850 12450 7550 12450
Text Label 6850 11700 0    50   ~ 0
red
Text Label 6850 11800 0    50   ~ 0
black
Text Label 6850 12150 0    50   ~ 0
red
Text Label 6850 12250 0    50   ~ 0
black
Entry Wire Line
	6750 13150 6850 13250
Entry Wire Line
	6750 13250 6850 13350
Wire Wire Line
	7550 13250 6850 13250
Wire Wire Line
	6850 13350 7550 13350
Text Label 6850 13250 0    50   ~ 0
L
Text Label 6850 13350 0    50   ~ 0
N
Text Notes 6000 13250 0    50   ~ 0
Свет в аквариуме
Entry Wire Line
	9650 11600 9550 11700
Entry Wire Line
	9650 11700 9550 11800
Entry Wire Line
	9650 12600 9550 12700
Entry Wire Line
	9650 12700 9550 12800
Entry Wire Line
	9650 13850 9550 13950
Entry Wire Line
	9650 13950 9550 14050
Entry Wire Line
	9650 14100 9550 14200
Entry Wire Line
	9650 14200 9550 14300
Wire Wire Line
	9550 13950 9050 13950
Wire Wire Line
	9550 14050 9050 14050
Wire Wire Line
	9050 14200 9550 14200
Wire Wire Line
	9550 14300 9050 14300
Wire Bus Line
	13450 11600 9700 11600
Entry Wire Line
	9700 14350 9600 14450
Entry Wire Line
	9700 14450 9600 14550
Wire Wire Line
	9600 14450 9050 14450
Wire Wire Line
	9050 14550 9600 14550
Text Label 9350 14450 0    50   ~ 0
yellow
Text Label 9350 14550 0    50   ~ 0
green
Wire Wire Line
	9550 12700 9050 12700
Wire Wire Line
	9050 12800 9550 12800
Wire Wire Line
	9550 11700 9050 11700
Wire Wire Line
	9050 11800 9550 11800
Text Notes 9750 11750 0    50   ~ 0
Управление электромагнитным замком
Text Notes 9750 12750 0    50   ~ 0
Управление вывеской
Text Notes 9800 14000 0    50   ~ 0
Дверь в аквариум
Text Notes 9800 14250 0    50   ~ 0
Железная дверь
Text Notes 9800 14500 0    50   ~ 0
Тамбурная дверь
Text Label 16750 1750 0    50   ~ 0
yellow
Text Label 16750 1850 0    50   ~ 0
green
Text Label 19300 4200 0    50   ~ 0
yellow
Text Label 19300 4300 0    50   ~ 0
green
Wire Wire Line
	10650 7500 10650 7300
Connection ~ 10650 7300
Wire Wire Line
	10650 7300 12000 7300
Wire Wire Line
	9850 7500 9850 7300
Connection ~ 9850 7300
Wire Wire Line
	9850 7300 10650 7300
Wire Wire Line
	11250 7500 11250 7350
Connection ~ 11250 7350
Wire Wire Line
	11250 7350 12000 7350
Wire Wire Line
	8250 7500 8250 7400
Connection ~ 8250 7400
Wire Wire Line
	8250 7400 9400 7400
Wire Wire Line
	11900 7500 11650 7500
Wire Wire Line
	11650 7500 11650 8150
Wire Wire Line
	11650 8150 11250 8150
Connection ~ 11250 8150
Wire Wire Line
	11250 8150 11250 10450
Wire Wire Line
	6950 7300 9850 7300
Wire Wire Line
	9400 7500 9400 7400
Wire Bus Line
	9500 1400 9500 5550
Wire Bus Line
	6200 750  6200 1700
Wire Bus Line
	2600 1450 2600 2300
Wire Bus Line
	3200 2300 3200 3400
Wire Bus Line
	4700 650  4700 1800
Wire Bus Line
	7900 10550 8250 10550
Wire Bus Line
	7200 9350 7200 11200
Wire Bus Line
	8400 10550 8750 10550
Wire Bus Line
	9050 10550 9400 10550
Wire Bus Line
	9500 10550 9850 10550
Wire Bus Line
	10300 10550 10650 10550
Wire Bus Line
	10900 10550 11250 10550
Wire Bus Line
	11550 10550 11900 10550
Wire Bus Line
	6750 13800 6750 14050
Wire Bus Line
	12300 9650 12300 10000
Wire Bus Line
	6750 13450 6750 13650
Wire Bus Line
	12300 8950 12300 9300
Wire Bus Line
	12300 8200 12300 8450
Wire Bus Line
	12300 8600 12300 8850
Wire Bus Line
	12800 6100 12800 8600
Wire Bus Line
	3800 550  3800 4300
Wire Bus Line
	9900 10550 10250 10550
Wire Bus Line
	6750 13100 6750 13300
Wire Bus Line
	9700 11600 9700 14550
Wire Bus Line
	6750 12050 6750 12400
Wire Bus Line
	6750 11600 6750 11950
Wire Bus Line
	19800 2300 19800 3100
Wire Bus Line
	16650 700  16650 1900
Wire Bus Line
	19200 3600 19200 4350
Wire Bus Line
	16600 3850 16600 4950
Wire Bus Line
	4750 7300 5850 7300
Wire Bus Line
	9650 11550 9650 14300
Wire Bus Line
	2400 1200 2400 4950
Wire Bus Line
	4500 1200 4500 6000
Wire Bus Line
	7600 1200 7600 5950
Connection ~ 9400 7400
Wire Wire Line
	9400 7400 12000 7400
$EndSCHEMATC
