EESchema Schematic File Version 4
LIBS:electrical-cache
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 11
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
	4250 1100 8450 1100
Text Notes 7850 6350 0    100  ~ 0
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
P 7100 1400
F 0 "SW?" H 7100 1500 50  0000 C CNN
F 1 "Концевик тамбурной двери" H 7150 1300 50  0000 C CNN
F 2 "" H 7100 1400 50  0001 C CNN
F 3 "~" H 7100 1400 50  0001 C CNN
	1    7100 1400
	1    0    0    -1  
$EndComp
$Comp
L sw:SW_SPST SW?
U 1 1 5E17DC84
P 7700 5950
F 0 "SW?" H 7700 6050 50  0000 C CNN
F 1 "Выключатель света в аквариуме" H 7700 5850 50  0000 C CNN
F 2 "" H 7700 5950 50  0001 C CNN
F 3 "~" H 7700 5950 50  0001 C CNN
	1    7700 5950
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
	4250 6400 8450 6400
Wire Notes Line
	14850 1100 14850 6400
Wire Notes Line
	4250 1100 4250 6400
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
	6250 2450 7950 2450
Wire Bus Line
	7950 2450 7950 900 
Wire Bus Line
	7950 900  16050 900 
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
	16150 800  8900 800 
Wire Bus Line
	8900 800  8900 3050
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
	16650 700  9000 700 
Wire Bus Line
	9000 700  9000 3050
Entry Wire Line
	6800 4500 6900 4600
Entry Wire Line
	6800 4600 6900 4700
Entry Wire Line
	6800 4700 6900 4800
Entry Wire Line
	6800 4800 6900 4900
Wire Wire Line
	6800 4500 6200 4500
Wire Wire Line
	6200 4600 6800 4600
Wire Wire Line
	6800 4700 6200 4700
Wire Wire Line
	6800 4800 6200 4800
Entry Wire Line
	6800 4400 6900 4500
Entry Wire Line
	6800 4300 6900 4400
Entry Wire Line
	6800 4200 6900 4300
Entry Wire Line
	6800 4100 6900 4200
Entry Wire Line
	6800 4000 6900 4100
Entry Wire Line
	6800 3900 6900 4000
Wire Wire Line
	6800 3900 6200 3900
Wire Wire Line
	6200 4000 6800 4000
Wire Wire Line
	6800 4100 6200 4100
Wire Wire Line
	6200 4200 6800 4200
Wire Wire Line
	6800 4300 6200 4300
Wire Wire Line
	6200 4400 6800 4400
Entry Wire Line
	6800 5100 6900 5200
Entry Wire Line
	6800 5200 6900 5300
Entry Wire Line
	6800 5300 6900 5400
Entry Wire Line
	6800 5400 6900 5500
Entry Wire Line
	6800 5500 6900 5600
Entry Wire Line
	6800 5600 6900 5700
Entry Wire Line
	6800 5700 6900 5800
Wire Wire Line
	6800 5100 6200 5100
Wire Wire Line
	6200 5200 6800 5200
Wire Wire Line
	6200 5300 6800 5300
Wire Wire Line
	6800 5400 6200 5400
Wire Wire Line
	6200 5500 6800 5500
Wire Wire Line
	6800 5600 6200 5600
Wire Wire Line
	6800 5700 6200 5700
Wire Wire Line
	6200 5800 6800 5800
Entry Wire Line
	6800 5800 6900 5900
Entry Wire Line
	6800 4900 6900 5000
Entry Wire Line
	6900 5100 6800 5000
Wire Wire Line
	6800 4900 6200 4900
Wire Wire Line
	6800 5000 6200 5000
Text Label 6250 4500 0    50   ~ 0
yellow+orange
Text Label 6300 4600 0    50   ~ 0
violet+green
Text Label 6300 4700 0    50   ~ 0
green+brown
Text Label 6350 4800 0    50   ~ 0
green+white
Text Label 6600 3900 0    50   ~ 0
green
Text Label 6600 4000 0    50   ~ 0
white
Text Label 6600 4100 0    50   ~ 0
red
Text Label 6600 4200 0    50   ~ 0
black
Text Label 6600 4300 0    50   ~ 0
blue
Text Label 6550 4400 0    50   ~ 0
yellow
Text Label 6350 5700 0    50   ~ 0
white+brown
Text Label 6400 5800 0    50   ~ 0
white+blue
Text Label 6450 5100 0    50   ~ 0
white+red
Text Label 6350 5200 0    50   ~ 0
white+black
Text Label 6800 4900 2    50   ~ 0
blue+red
Text Label 6800 5000 2    50   ~ 0
brown
Text Label 6550 5300 0    50   ~ 0
brown
Text Label 6550 5400 0    50   ~ 0
violet
Text Label 6400 5500 0    50   ~ 0
black+red
Text Label 6600 5600 0    50   ~ 0
pink
Wire Notes Line
	8300 1250 14600 1250
Wire Notes Line
	14600 1250 14600 3800
Wire Notes Line
	14600 3800 8300 3800
Wire Notes Line
	8300 3800 8300 1250
Text Notes 14050 3750 0    100  ~ 0
ВРУ-1
Wire Bus Line
	6200 750  8600 750 
Wire Bus Line
	8600 750  8600 2150
Wire Bus Line
	4700 650  8700 650 
Wire Bus Line
	8700 650  8700 2150
Wire Bus Line
	6900 2650 8150 2650
Wire Bus Line
	8150 2650 8150 1200
Wire Bus Line
	8150 1200 8450 1200
Wire Bus Line
	8450 1200 8450 2150
Wire Bus Line
	6200 750  6200 1700
Wire Bus Line
	2600 1450 2600 2300
Wire Bus Line
	3200 2300 3200 3400
Wire Bus Line
	4700 650  4700 1800
Wire Bus Line
	19200 3600 19200 4350
Wire Bus Line
	16650 700  16650 1900
Wire Bus Line
	16600 3850 16600 4950
Wire Bus Line
	2400 1200 2400 4950
Wire Bus Line
	4500 1200 4500 6000
Wire Bus Line
	6900 2650 6900 5950
$EndSCHEMATC
