EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 12
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
Text Label 1850 1250 0    50   ~ 0
yellow+red
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
Text Label 2500 3250 0    50   ~ 0
blue+red
Text Label 2500 3150 0    50   ~ 0
dark_brown
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
	4250 1100 14450 1100
Text Notes 13100 15200 0    100  ~ 0
Тамбур
$Comp
L sw:SW_Reed SW4
U 1 1 5E17D356
P 5050 6750
F 0 "SW4" H 5050 6850 50  0000 C CNN
F 1 "Концевик железной двери" H 5100 6650 50  0000 C CNN
F 2 "" H 5050 6750 50  0001 C CNN
F 3 "~" H 5050 6750 50  0001 C CNN
	1    5050 6750
	1    0    0    -1  
$EndComp
$Comp
L sw:SW_Reed SW5
U 1 1 5E17D73B
P 10450 1650
F 0 "SW5" H 10450 1750 50  0000 C CNN
F 1 "Концевик тамбурной двери" H 10500 1550 50  0000 C CNN
F 2 "" H 10450 1650 50  0001 C CNN
F 3 "~" H 10450 1650 50  0001 C CNN
	1    10450 1650
	1    0    0    -1  
$EndComp
$Comp
L sw:SW_SPST SW6
U 1 1 5E17DC84
P 12500 6400
F 0 "SW6" H 12500 6500 50  0000 C CNN
F 1 "Выключатель света в аквариуме" H 12500 6300 50  0000 C CNN
F 2 "" H 12500 6400 50  0001 C CNN
F 3 "~" H 12500 6400 50  0001 C CNN
	1    12500 6400
	1    0    0    -1  
$EndComp
$Comp
L device:Lamp LA2
U 1 1 5E17FAFA
P 5450 2100
F 0 "LA2" V 5578 2146 50  0000 L CNN
F 1 "Lamp" V 5650 2100 50  0000 L CNN
F 2 "" V 5450 2200 50  0001 C CNN
F 3 "~" V 5450 2200 50  0001 C CNN
	1    5450 2100
	0    1    1    0   
$EndComp
Entry Wire Line
	4700 1500 4800 1600
Entry Wire Line
	4700 1650 4800 1750
Wire Wire Line
	5700 1600 5700 2100
Wire Wire Line
	5700 2100 5650 2100
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
L sw:SW_SPST SW3
U 1 1 5E17EE22
P 5450 1600
F 0 "SW3" H 5450 1500 50  0000 C CNN
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
	5250 2100 5100 2100
Wire Wire Line
	5100 2100 5100 1750
Text Label 6050 1450 0    50   ~ 0
L
Text Label 6050 1600 0    50   ~ 0
N
Entry Wire Line
	4600 3550 4500 3650
Entry Wire Line
	4600 3650 4500 3750
Entry Wire Line
	4600 3800 4500 3900
Entry Wire Line
	4600 3900 4500 4000
Entry Wire Line
	4600 3000 4500 3100
Entry Wire Line
	4600 2900 4500 3000
Entry Wire Line
	4600 2800 4500 2900
Entry Wire Line
	4600 2700 4500 2800
Entry Wire Line
	6250 2250 6150 2350
Entry Wire Line
	6250 2950 6150 3050
Text Label 5050 3550 2    50   ~ 0
yellow+red
Text Label 5100 3650 2    50   ~ 0
violet+green
Text Label 6700 2550 2    50   ~ 0
green+white
Text Label 6500 2950 2    50   ~ 0
green
Text Label 6500 2850 2    50   ~ 0
white
Text Label 4800 2700 2    50   ~ 0
red
Text Label 4800 2800 2    50   ~ 0
black
Text Label 4800 2900 2    50   ~ 0
blue
Text Label 4850 3000 2    50   ~ 0
yellow
Text Label 6700 2250 2    50   ~ 0
white+brown
Text Label 6650 2350 2    50   ~ 0
white+blue
Text Label 4600 3900 0    50   ~ 0
blue+red
Text Label 4600 3800 0    50   ~ 0
dark_brown
Text Label 4850 4100 2    50   ~ 0
brown
Text Label 4850 4300 2    50   ~ 0
violet
Text Label 5000 4400 2    50   ~ 0
black+red
Text Label 4800 4200 2    50   ~ 0
pink
Wire Bus Line
	2400 1200 4500 1200
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
F2 "video" I L 17100 4300 50 
F3 "GND" I L 17100 4400 50 
F4 "V+" I L 17100 4500 50 
F5 "audio" I L 17100 4600 50 
$EndSheet
Wire Bus Line
	5850 1750 7500 1750
Wire Bus Line
	7500 1750 7500 900 
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
Wire Wire Line
	17100 4300 16700 4300
Wire Wire Line
	16700 4400 17100 4400
Wire Wire Line
	17100 4500 16700 4500
Wire Wire Line
	16700 4600 17100 4600
Wire Bus Line
	19200 3600 16150 3600
Wire Bus Line
	16150 3600 16150 800 
Wire Bus Line
	16150 800  9300 800 
Entry Wire Line
	19200 3850 19300 3950
Wire Wire Line
	19800 3950 19300 3950
Text Label 19300 3950 0    50   ~ 0
red
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
	5850 4700 5950 4800
Entry Wire Line
	5850 4800 5950 4900
Wire Wire Line
	5250 4700 5850 4700
Wire Wire Line
	5850 4800 5250 4800
Entry Wire Line
	8300 2650 8400 2750
Entry Wire Line
	8300 2550 8400 2650
Entry Wire Line
	5850 4100 5950 4200
Entry Wire Line
	5850 4200 5950 4300
Entry Wire Line
	8300 2250 8400 2350
Entry Wire Line
	8300 2350 8400 2450
Entry Wire Line
	5850 5000 5950 5100
Wire Wire Line
	5850 4900 5250 4900
Text Label 5450 5500 0    50   ~ 0
yellow+red
Text Label 5350 4700 0    50   ~ 0
violet+green
Text Label 5350 4800 0    50   ~ 0
green+brown
Text Label 5400 4400 0    50   ~ 0
green+white
Text Label 5650 3550 0    50   ~ 0
green
Text Label 5700 5300 0    50   ~ 0
red
Text Label 8100 2650 0    50   ~ 0
black
Text Label 5650 3800 0    50   ~ 0
blue
Text Label 5600 3900 0    50   ~ 0
yellow
Text Label 7850 2250 0    50   ~ 0
white+brown
Text Label 7900 2350 0    50   ~ 0
white+blue
Text Label 5500 4100 0    50   ~ 0
white+red
Text Label 5400 4200 0    50   ~ 0
white+black
Text Label 5600 4300 0    50   ~ 0
violet
Text Label 5450 5600 0    50   ~ 0
black+red
Text Label 5700 3650 0    50   ~ 0
pink
Wire Bus Line
	6200 750  8600 750 
Wire Bus Line
	4700 650  8700 650 
Wire Wire Line
	3400 9650 3400 7300
Wire Wire Line
	3350 9600 3350 7350
Wire Wire Line
	3300 9550 3300 7400
$Comp
L device:CircuitBreaker_2P CB2
U 1 1 5E475859
P 4750 7850
F 0 "CB2" H 4902 7896 50  0000 L CNN
F 1 "Розетки левые" H 4902 7805 50  0000 L CNN
F 2 "" H 4650 7850 50  0001 C CNN
F 3 "~" H 4650 7850 50  0001 C CNN
	1    4750 7850
	1    0    0    -1  
$EndComp
$Comp
L relay:DIPxx-2Axx-21x K1
U 1 1 5E4C3DF4
P 4750 9500
F 0 "K1" H 5230 9500 50  0000 L CNN
F 1 "DIPxx-2Axx-21x" H 5230 9455 50  0001 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 5250 9450 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4750 9500 50  0001 C CNN
	1    4750 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7500 3500 10200
$Comp
L device:CircuitBreaker_1P CB5
U 1 1 5E5323C5
P 5500 9500
F 0 "CB5" H 5552 9546 50  0000 L CNN
F 1 "Bypass" H 5552 9455 50  0000 L CNN
F 2 "" H 5500 9500 50  0001 C CNN
F 3 "~" H 5500 9500 50  0001 C CNN
	1    5500 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7500 4650 7500
Wire Wire Line
	5500 9100 5150 9100
Connection ~ 4850 9100
Wire Wire Line
	4850 9100 4850 9200
Wire Wire Line
	5500 9200 5500 9100
Wire Wire Line
	5500 9800 5500 9900
Wire Wire Line
	4850 9900 4850 9800
Wire Wire Line
	5500 9900 5150 9900
Wire Bus Line
	4850 10550 4850 10850
Entry Wire Line
	4750 10550 4850 10450
Entry Wire Line
	4650 10550 4750 10450
Entry Wire Line
	4500 10550 4600 10450
Wire Wire Line
	4750 10450 4750 10000
Wire Wire Line
	4600 10450 4600 10250
Text Label 4850 10450 0    50   ~ 0
L
Text Label 4750 10450 0    50   ~ 0
N
Text Label 4600 10450 0    50   ~ 0
PE
Entry Wire Line
	3600 8350 3700 8250
Entry Wire Line
	3600 9100 3700 9000
Wire Bus Line
	7100 10550 7100 10850
Entry Wire Line
	7000 10550 7100 10450
Entry Wire Line
	6900 10550 7000 10450
Entry Wire Line
	6750 10550 6850 10450
Text Label 7100 10450 0    50   ~ 0
L
Text Label 7000 10450 0    50   ~ 0
N
Text Label 6850 10450 0    50   ~ 0
PE
Wire Wire Line
	6850 10450 6850 10250
Wire Wire Line
	4450 9000 4450 9200
Wire Notes Line
	14300 7050 14300 11200
Wire Notes Line
	1150 11200 1150 7050
Text Notes 12100 10900 0    100  ~ 0
ВРУ-1
Wire Notes Line
	14450 1100 14450 15850
Wire Bus Line
	5450 14150 6750 14150
Entry Wire Line
	6750 14200 6850 14300
Entry Wire Line
	6750 14300 6850 14400
Text Label 6850 14300 0    50   ~ 0
L
Text Label 6850 14400 0    50   ~ 0
N
Text Notes 5700 14300 0    50   ~ 0
Контактор левых розеток
Wire Bus Line
	8700 6850 13050 6850
Wire Bus Line
	8700 650  8700 6850
Wire Bus Line
	8600 6950 13550 6950
Wire Bus Line
	13550 6950 13550 11300
Wire Bus Line
	13550 11300 5650 11300
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
	3800 550  8800 550 
Wire Bus Line
	8800 550  8800 6750
Wire Bus Line
	8800 6750 13250 6750
Wire Bus Line
	13600 9300 13600 11350
Wire Bus Line
	13600 11350 5750 11350
Wire Bus Line
	5750 11350 5750 13100
Wire Bus Line
	5750 13100 6750 13100
Entry Wire Line
	13300 6150 13200 6250
Entry Wire Line
	13300 6300 13200 6400
Text Label 13150 6250 0    50   ~ 0
L
Text Label 13150 6400 0    50   ~ 0
N
Wire Wire Line
	12700 6400 13200 6400
Wire Wire Line
	12300 6400 12250 6400
Wire Wire Line
	12250 6400 12250 6250
Wire Wire Line
	12250 6250 13200 6250
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
	9200 5850 13800 5850
Wire Bus Line
	13800 5850 13800 11550
Wire Bus Line
	9200 1850 9200 5850
Wire Bus Line
	9300 5750 13900 5750
Wire Bus Line
	9300 800  9300 5750
Wire Bus Line
	9400 5650 14000 5650
Wire Bus Line
	9400 700  9400 5650
Wire Bus Line
	9500 5550 14100 5550
Wire Bus Line
	14100 5550 14100 9300
Wire Notes Line
	1150 7050 14300 7050
Wire Notes Line
	1150 11200 14300 11200
Wire Bus Line
	14950 11150 14950 3100
$Comp
L connector:Conn_WallSocket_Earth J1
U 1 1 5F46BC2E
P 19250 2550
F 0 "J1" H 19256 2884 50  0000 C CNN
F 1 "Conn_WallSocket_Earth" H 19256 2884 50  0001 C CNN
F 2 "" H 18950 2650 50  0001 C CNN
F 3 "~" H 18950 2650 50  0001 C CNN
	1    19250 2550
	-1   0    0    -1  
$EndComp
Wire Bus Line
	14950 3100 19800 3100
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
L connector:Conn_WallPlug P1
U 1 1 5F521195
P 18500 2450
F 0 "P1" H 18290 2450 50  0000 R CNN
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
	13900 15700 5200 15700
Wire Bus Line
	5200 15700 5200 12050
Wire Bus Line
	5200 12050 6750 12050
Wire Bus Line
	13900 5750 13900 15700
Wire Bus Line
	14000 15750 5100 15750
Wire Bus Line
	5100 15750 5100 11600
Wire Bus Line
	5100 11600 6750 11600
Wire Bus Line
	14000 5650 14000 15750
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
	7550 12150 7200 12150
Wire Wire Line
	6850 12250 7250 12250
Wire Wire Line
	7550 12350 7300 12350
Wire Wire Line
	6850 12450 7350 12450
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
Wire Bus Line
	14100 11600 9800 11600
Entry Wire Line
	9800 15250 9700 15350
Entry Wire Line
	9800 15350 9700 15450
Wire Wire Line
	9700 15350 9050 15350
Wire Wire Line
	9050 15450 9700 15450
Text Label 9350 15350 0    50   ~ 0
yellow
Text Label 9400 15450 0    50   ~ 0
green
Text Notes 9850 11750 0    50   ~ 0
Управление электромагнитным замком
Text Notes 10600 12750 0    50   ~ 0
Управление вывеской
Text Notes 9850 14900 0    50   ~ 0
Дверь в аквариум
Text Notes 9850 15100 0    50   ~ 0
Железная дверь
Text Notes 9850 15400 0    50   ~ 0
Тамбурная дверь
Text Label 16750 1750 0    50   ~ 0
yellow
Text Label 16750 1850 0    50   ~ 0
green
Entry Wire Line
	4500 5400 4600 5300
Entry Wire Line
	4500 5500 4600 5400
Entry Wire Line
	4500 6650 4600 6750
Entry Wire Line
	4500 6450 4600 6550
Wire Wire Line
	4600 6550 5250 6550
Wire Wire Line
	5250 6550 5250 6750
Wire Wire Line
	4850 6750 4600 6750
Text Label 4600 6550 0    50   ~ 0
yellow
Text Label 4600 6750 0    50   ~ 0
blue
Text Label 4600 5300 0    50   ~ 0
yellow
Text Label 4600 5400 0    50   ~ 0
blue
Wire Bus Line
	9650 11400 6650 11400
Entry Wire Line
	6650 12550 6750 12650
Entry Wire Line
	6650 12650 6750 12750
Entry Wire Line
	6650 12750 6750 12850
Entry Wire Line
	6650 12850 6750 12950
Wire Wire Line
	6750 12650 7200 12650
Wire Wire Line
	7200 12650 7200 12150
Connection ~ 7200 12150
Wire Wire Line
	7200 12150 6850 12150
Wire Wire Line
	6750 12750 7250 12750
Wire Wire Line
	7250 12750 7250 12250
Connection ~ 7250 12250
Wire Wire Line
	7250 12250 7550 12250
Wire Wire Line
	6750 12850 7300 12850
Wire Wire Line
	7300 12850 7300 12350
Connection ~ 7300 12350
Wire Wire Line
	7300 12350 6850 12350
Wire Wire Line
	6750 12950 7350 12950
Wire Wire Line
	7350 12950 7350 12450
Connection ~ 7350 12450
Wire Wire Line
	7350 12450 7550 12450
Wire Wire Line
	9050 15100 9550 15100
Wire Wire Line
	9550 14950 9050 14950
Wire Wire Line
	9550 14850 9050 14850
Wire Wire Line
	9050 11800 9550 11800
Wire Wire Line
	9550 11700 9050 11700
Connection ~ 9650 11550
Wire Bus Line
	9650 11550 9650 11400
Entry Wire Line
	9650 15000 9550 15100
Entry Wire Line
	9650 14850 9550 14950
Entry Wire Line
	9650 12700 9750 12800
Entry Wire Line
	9650 12600 9750 12700
Entry Wire Line
	9650 11700 9550 11800
Entry Wire Line
	9650 11600 9550 11700
Wire Bus Line
	13800 11550 12600 11550
Wire Wire Line
	9550 15200 9050 15200
Entry Wire Line
	9650 15100 9550 15200
Wire Wire Line
	12500 12850 11900 12850
Wire Wire Line
	11900 12950 12500 12950
Wire Wire Line
	11900 13050 12500 13050
Wire Wire Line
	11900 13150 12500 13150
Text Label 9550 13450 2    50   ~ 0
yellow+red
Text Label 12500 12850 2    50   ~ 0
violet+green
Text Label 7200 12950 2    50   ~ 0
green+white
Text Label 9500 14950 2    50   ~ 0
green
Text Label 9550 11700 2    50   ~ 0
white
Text Label 9500 15200 2    50   ~ 0
red
Text Label 9550 11800 2    50   ~ 0
black
Text Label 9900 12700 0    50   ~ 0
blue
Text Label 9900 12800 0    50   ~ 0
yellow
Text Label 9550 11950 2    50   ~ 0
white+brown
Text Label 9550 12050 2    50   ~ 0
white+blue
Text Label 7150 12650 2    50   ~ 0
white+red
Text Label 7200 12750 2    50   ~ 0
white+black
Text Label 12150 13050 0    50   ~ 0
blue+red
Text Label 12100 13150 0    50   ~ 0
dark_brown
Text Label 9500 15100 2    50   ~ 0
brown
Text Label 6950 12850 2    50   ~ 0
violet
Text Label 9550 13550 2    50   ~ 0
black+red
Wire Bus Line
	9650 5450 14200 5450
Wire Bus Line
	14200 5450 14200 11700
Wire Bus Line
	14200 11700 11650 11700
Wire Bus Line
	11650 11700 11650 13150
Wire Bus Line
	11650 13150 10750 13150
Entry Wire Line
	10650 13200 10750 13300
Entry Wire Line
	10650 13300 10750 13400
Wire Wire Line
	10650 13200 9050 13200
Wire Wire Line
	9050 13300 10650 13300
Entry Wire Line
	10650 13700 10750 13800
Entry Wire Line
	10650 13950 10750 14050
$Comp
L device:R R2
U 1 1 5EFB2F94
P 10250 13950
F 0 "R2" V 10150 14100 50  0000 C CNN
F 1 "10k" V 10350 13950 50  0000 C CNN
F 2 "" V 10180 13950 50  0001 C CNN
F 3 "~" H 10250 13950 50  0001 C CNN
	1    10250 13950
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 13700 10100 13700
Wire Wire Line
	9050 13950 10100 13950
Wire Wire Line
	10400 13950 10650 13950
Text Label 10450 13700 0    50   ~ 0
green
Text Label 10400 13950 0    50   ~ 0
yellow
Text Label 10500 13200 0    50   ~ 0
red
Text Label 10450 13300 0    50   ~ 0
black
Text Notes 10800 13750 0    50   ~ 0
Кнопка панели
Text Notes 10800 14050 0    50   ~ 0
Ключ панели
Text Notes 10800 13350 0    50   ~ 0
Индикатор панели
Text Label 9500 14850 2    50   ~ 0
pink
Entry Wire Line
	9550 13550 9650 13450
Entry Wire Line
	9550 13450 9650 13350
Text Notes 10150 13500 0    50   ~ 0
ЭМ замок
Text Label 6050 11600 0    50   ~ 0
C3(серверная)
Text Label 16100 700  0    50   ~ 0
C3(серверная)
Text Label 6850 11900 0    50   ~ 0
yellow
Text Label 6850 12000 0    50   ~ 0
green
Text Label 6850 12350 0    50   ~ 0
yellow
Text Label 6850 12450 0    50   ~ 0
green
Text Notes 9850 12000 0    50   ~ 0
Кнопка выхода
Text Label 12500 12950 2    50   ~ 0
green+brown
Connection ~ 12600 11550
Wire Bus Line
	12600 11550 9650 11550
Entry Wire Line
	12500 12850 12600 12950
Entry Wire Line
	12500 12950 12600 13050
Entry Wire Line
	12500 13050 12600 13150
Entry Wire Line
	12500 13150 12600 13250
NoConn ~ 11900 12850
NoConn ~ 11900 12950
NoConn ~ 11900 13050
NoConn ~ 11900 13150
Entry Wire Line
	5850 3100 5750 3000
Entry Wire Line
	5850 3000 5750 2900
Entry Wire Line
	5850 2900 5750 2800
Entry Wire Line
	5850 2800 5750 2700
Entry Wire Line
	5850 5300 5950 5400
Entry Wire Line
	5950 5500 5850 5400
Entry Wire Line
	5850 3550 5950 3650
Entry Wire Line
	5850 3650 5950 3750
Entry Wire Line
	9550 11950 9650 11850
Entry Wire Line
	9650 11950 9550 12050
Entry Wire Line
	5850 3800 5950 3900
Entry Wire Line
	5850 3900 5950 4000
Text Label 5450 5000 0    50   ~ 0
dark_brown
Text Label 5850 4900 2    50   ~ 0
blue+red
Entry Wire Line
	5850 4900 5950 5000
Wire Wire Line
	5850 5000 5250 5000
Entry Wire Line
	4600 4100 4500 4200
Entry Wire Line
	4600 4200 4500 4300
Entry Wire Line
	4600 4300 4500 4400
Entry Wire Line
	4600 4400 4500 4500
Entry Wire Line
	5850 4300 5950 4400
Entry Wire Line
	5850 4400 5950 4500
NoConn ~ 5250 4700
NoConn ~ 5250 4800
NoConn ~ 5250 4900
NoConn ~ 5250 5000
Entry Wire Line
	6250 2550 6150 2650
Wire Wire Line
	4600 2700 5750 2700
Wire Wire Line
	4600 2800 5750 2800
Wire Wire Line
	4600 2900 5750 2900
Wire Wire Line
	4600 3000 5750 3000
Wire Wire Line
	4600 3550 5850 3550
Wire Wire Line
	4600 3650 5850 3650
Wire Wire Line
	4600 3800 5850 3800
Wire Wire Line
	4600 3900 5850 3900
Wire Wire Line
	4600 4100 5850 4100
Wire Wire Line
	4600 4200 5850 4200
Wire Wire Line
	4600 4300 5850 4300
Wire Wire Line
	4600 4400 5850 4400
Wire Bus Line
	5950 1850 8400 1850
Text Label 5600 5400 0    50   ~ 0
brown
Wire Wire Line
	5850 5300 4600 5300
Wire Wire Line
	4600 5400 5850 5400
Connection ~ 8400 1850
Wire Bus Line
	8400 1850 9200 1850
Wire Bus Line
	6100 2400 4500 2400
Wire Bus Line
	4500 1200 4500 2400
Connection ~ 4500 2400
Text Notes 6200 6300 0    50   ~ 0
К блоку питания домофона
Entry Wire Line
	6150 3700 6250 3800
Entry Wire Line
	6150 3600 6250 3700
Entry Wire Line
	6150 3850 6250 3950
Entry Wire Line
	6150 3950 6250 4050
Text Label 6250 3700 0    50   ~ 0
red
Text Label 6250 3800 0    50   ~ 0
yellow
Text Label 6250 3950 0    50   ~ 0
blue
Text Label 6250 4050 0    50   ~ 0
black
Wire Bus Line
	6150 2000 6100 2000
Wire Bus Line
	6100 2000 6100 2400
Entry Wire Line
	6250 2350 6150 2450
Text Label 5700 2700 2    50   ~ 0
red
Text Label 5700 2800 2    50   ~ 0
black
Text Label 5700 2900 2    50   ~ 0
blue
Text Label 5700 3000 2    50   ~ 0
yellow
Text Label 16700 4300 0    50   ~ 0
black
Text Label 16700 4400 0    50   ~ 0
red
Text Label 16700 4500 0    50   ~ 0
yellow
Text Label 16700 4600 0    50   ~ 0
blue
Entry Wire Line
	9650 2200 9750 2300
Entry Wire Line
	9650 2100 9750 2200
Entry Wire Line
	9650 2300 9750 2400
Entry Wire Line
	9650 2400 9750 2500
Wire Wire Line
	9750 2200 10300 2200
Wire Wire Line
	10300 2300 9750 2300
Wire Wire Line
	9750 2400 10300 2400
Wire Wire Line
	10300 2500 9750 2500
Text Label 9750 2500 0    50   ~ 0
black
Text Label 9750 2400 0    50   ~ 0
red
Text Label 9750 2200 0    50   ~ 0
green
Text Label 9750 2300 0    50   ~ 0
yellow
$Sheet
S 10300 2150 600  700 
U 61A4A270
F0 "Sheet61A4A26F" 50
F1 "intro_panel.sch" 50
F2 "button" I L 10300 2200 50 
F3 "key" I L 10300 2300 50 
F4 "led" I L 10300 2400 50 
F5 "com" I L 10300 2500 50 
$EndSheet
Text Label 4600 6250 0    50   ~ 0
black
Text Label 4600 6000 0    50   ~ 0
red
Wire Wire Line
	4850 6250 4600 6250
Wire Wire Line
	5200 6250 5150 6250
Wire Wire Line
	5200 6000 5200 6250
Wire Wire Line
	4600 6000 5200 6000
Entry Wire Line
	4600 6000 4500 5900
Entry Wire Line
	4500 6150 4600 6250
$Comp
L device:Electromagnetic_Actor L2
U 1 1 61C1A7F6
P 4950 6250
F 0 "L2" V 4800 6300 50  0000 C CNN
F 1 "Электромеханический замок двери" V 5100 6550 50  0000 C CNN
F 2 "" V 4925 6350 50  0001 C CNN
F 3 "~" V 4925 6350 50  0001 C CNN
	1    4950 6250
	0    1    1    0   
$EndComp
Entry Wire Line
	4500 5600 4600 5500
Entry Wire Line
	4500 5700 4600 5600
Entry Wire Line
	5850 5500 5950 5600
Entry Wire Line
	5950 5700 5850 5600
Wire Wire Line
	5850 5500 4600 5500
Wire Wire Line
	4600 5600 5850 5600
Text Label 4600 5500 0    50   ~ 0
red
Text Label 4600 5600 0    50   ~ 0
black
Wire Wire Line
	9550 13550 9150 13550
Wire Wire Line
	9050 13450 9100 13450
Wire Wire Line
	9150 13550 9150 13600
Connection ~ 9150 13550
Wire Wire Line
	9150 13550 9050 13550
Wire Wire Line
	9100 13450 9100 13650
Wire Wire Line
	9100 13650 9950 13650
Connection ~ 9100 13450
Wire Wire Line
	9100 13450 9550 13450
$Comp
L device:D D6
U 1 1 621A1D75
P 9950 13500
F 0 "D6" V 9900 13600 50  0000 C CNN
F 1 "D" V 10050 13600 50  0000 C CNN
F 2 "" H 9950 13500 50  0001 C CNN
F 3 "~" H 9950 13500 50  0001 C CNN
	1    9950 13500
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 13600 9850 13600
Wire Wire Line
	10650 13700 10400 13700
$Comp
L device:R R1
U 1 1 5EFB21E1
P 10250 13700
F 0 "R1" V 10150 13850 50  0000 C CNN
F 1 "10k" V 10350 13700 50  0000 C CNN
F 2 "" V 10180 13700 50  0001 C CNN
F 3 "~" H 10250 13700 50  0001 C CNN
	1    10250 13700
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 13350 9950 13350
Wire Wire Line
	9850 13350 9850 13600
Wire Wire Line
	6250 3800 6550 3800
Text Label 6700 2050 2    50   ~ 0
white+red
Text Label 6700 1950 2    50   ~ 0
white+black
Wire Wire Line
	6250 3700 6850 3700
NoConn ~ 6550 3800
Text Label 8100 2550 0    50   ~ 0
white
Entry Wire Line
	6250 2650 6150 2750
Text Label 6750 2650 2    50   ~ 0
green+brown
Entry Wire Line
	6250 2850 6150 2950
Wire Wire Line
	6250 2250 8300 2250
Wire Wire Line
	6250 2350 8300 2350
Entry Wire Line
	6150 2150 6250 2050
Entry Wire Line
	6150 2050 6250 1950
Wire Wire Line
	6250 1950 6750 1950
Wire Wire Line
	6750 2050 6250 2050
NoConn ~ 6750 1950
NoConn ~ 6750 2050
Wire Wire Line
	8300 2550 6250 2550
Wire Wire Line
	6250 2650 6850 2650
Wire Wire Line
	6850 2650 6850 3700
Wire Wire Line
	6900 2650 8300 2650
Wire Wire Line
	6250 4050 6900 4050
Wire Wire Line
	6900 2650 6900 4050
Wire Wire Line
	6250 3950 6550 3950
NoConn ~ 6550 3950
Text Notes 6850 2050 0    50   ~ 0
iButton
Wire Wire Line
	6250 2950 7150 2950
Wire Wire Line
	6250 2850 7150 2850
Text Notes 7200 2950 0    50   ~ 0
Сигнал открытия двери
Text Notes 6100 3050 1    50   ~ 0
из аквариума
Text Notes 6100 4200 1    50   ~ 0
от БП домофона
Text Notes 8500 2700 1    50   ~ 0
в щиток
Entry Wire Line
	6750 14500 6850 14600
Entry Wire Line
	6750 14600 6850 14700
Text Label 6850 14600 0    50   ~ 0
L
Text Label 6850 14700 0    50   ~ 0
N
Text Notes 5700 14600 0    50   ~ 0
Контактор правых розеток
$Sheet
S 7550 11600 1500 4000
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
F31 "IO_5" B L 7550 14300 50 
F32 "PWR_5_+12" O L 7550 14400 50 
F33 "IO_6" B L 7550 14600 50 
F34 "PWR_6_+12" O L 7550 14700 50 
F35 "IO_7" B R 9050 13200 50 
F36 "PWR_7_+12" O R 9050 13300 50 
F37 "IO_8" B R 9050 13450 50 
F38 "PWR_8_+12" O R 9050 13550 50 
F39 "IO_13" B R 9050 14600 50 
F40 "PWR_13_GND" U R 9050 14700 50 
F41 "IO_14" B R 9050 14850 50 
F42 "PWR_14_GND" U R 9050 14950 50 
F43 "IO_15" B R 9050 15100 50 
F44 "PWR_15_GND" U R 9050 15200 50 
F45 "IO_16" B R 9050 15350 50 
F46 "PWR_16_GND" U R 9050 15450 50 
F47 "IO_9" I R 9050 13700 50 
F48 "PWR_9_" I R 9050 13800 50 
F49 "IO_11" I R 9050 13950 50 
F50 "PWR_11_" I R 9050 14050 50 
F51 "IO_12" I R 9050 14200 50 
F52 "PWR_12_" I R 9050 14300 50 
$EndSheet
Wire Bus Line
	5400 14450 6750 14450
Wire Wire Line
	10500 12700 9750 12700
Wire Wire Line
	10500 12800 9750 12800
NoConn ~ 10500 12700
NoConn ~ 10500 12800
Wire Wire Line
	9550 11950 9050 11950
Wire Wire Line
	9050 12050 9550 12050
Wire Wire Line
	6850 14600 7550 14600
Wire Wire Line
	6850 14300 7550 14300
Wire Wire Line
	7550 14400 6850 14400
Wire Bus Line
	5400 11100 5400 14450
Wire Bus Line
	5450 11050 5450 14150
Entry Wire Line
	9650 14750 9550 14850
Text Notes 4800 10900 1    50   ~ 0
Левые\nрозетки
Text Notes 7050 10900 1    50   ~ 0
Правые\nрозетки
Connection ~ 12550 8900
Wire Wire Line
	12550 9250 12550 8900
Wire Wire Line
	12700 9250 12550 9250
Connection ~ 12500 10200
Wire Wire Line
	12500 8500 12500 10200
Wire Wire Line
	12700 8500 12500 8500
Wire Wire Line
	12550 8350 12700 8350
Wire Wire Line
	12550 8900 12550 8350
Wire Wire Line
	12700 8900 12550 8900
Wire Wire Line
	12700 8750 12400 8750
Text Label 12650 8750 0    50   ~ 0
L
Text Label 12650 8900 0    50   ~ 0
N
Entry Wire Line
	12800 8800 12700 8900
Entry Wire Line
	12800 8650 12700 8750
Text Label 12650 8500 0    50   ~ 0
N
Text Label 12650 8350 0    50   ~ 0
L
Entry Wire Line
	12800 8400 12700 8500
Entry Wire Line
	12800 8250 12700 8350
Wire Wire Line
	12700 9100 12400 9100
Text Label 12650 9250 0    50   ~ 0
N
Text Label 12650 9100 0    50   ~ 0
L
Entry Wire Line
	12800 9150 12700 9250
Entry Wire Line
	12800 9000 12700 9100
Wire Bus Line
	12800 9300 13600 9300
Wire Bus Line
	13250 6750 13250 8200
Wire Bus Line
	13250 8200 12800 8200
Wire Bus Line
	12800 8600 13300 8600
Text Label 12650 10000 0    50   ~ 0
N
Text Label 12650 9850 0    50   ~ 0
L
Wire Wire Line
	12700 9850 12400 9850
Wire Wire Line
	12550 10200 12500 10200
Wire Wire Line
	12550 10000 12700 10000
Wire Wire Line
	12550 10200 12550 10000
Entry Wire Line
	12800 9900 12700 10000
Entry Wire Line
	12800 9750 12700 9850
Wire Bus Line
	13050 9650 12800 9650
Wire Bus Line
	13050 6850 13050 9650
Connection ~ 13600 9300
Wire Bus Line
	13600 9300 14100 9300
Connection ~ 14100 9300
Wire Bus Line
	14100 9300 14100 11600
$Comp
L device:CircuitBreaker_1P CB7
U 1 1 5E47629A
P 10350 7800
F 0 "CB7" H 10403 7846 50  0000 L CNN
F 1 "ПС+Серверная" H 10403 7755 50  0000 L CNN
F 2 "" H 10350 7800 50  0001 C CNN
F 3 "~" H 10350 7800 50  0001 C CNN
	1    10350 7800
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB8
U 1 1 5E4831FC
P 11150 7800
F 0 "CB8" H 11202 7846 50  0000 L CNN
F 1 "Освещение 1" H 11202 7755 50  0000 L CNN
F 2 "" H 11150 7800 50  0001 C CNN
F 3 "~" H 11150 7800 50  0001 C CNN
	1    11150 7800
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB9
U 1 1 5E483655
P 11750 7800
F 0 "CB9" H 11802 7846 50  0000 L CNN
F 1 "Освещение 2" H 11802 7755 50  0000 L CNN
F 2 "" H 11750 7800 50  0001 C CNN
F 3 "~" H 11750 7800 50  0001 C CNN
	1    11750 7800
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB6
U 1 1 5E47530D
P 9900 7800
F 0 "CB6" H 9953 7846 50  0000 L CNN
F 1 "Домофон" H 9953 7755 50  0000 L CNN
F 2 "" H 9900 7800 50  0001 C CNN
F 3 "~" H 9900 7800 50  0001 C CNN
	1    9900 7800
	1    0    0    -1  
$EndComp
Wire Bus Line
	9900 10550 9900 10850
Entry Wire Line
	9800 10550 9900 10450
Entry Wire Line
	9700 10550 9800 10450
Entry Wire Line
	9550 10550 9650 10450
Wire Wire Line
	9800 10450 9800 10200
Text Label 9900 10450 0    50   ~ 0
L
Text Label 9800 10450 0    50   ~ 0
N
Text Label 9650 10450 0    50   ~ 0
PE
Wire Wire Line
	9650 10450 9650 10250
Connection ~ 9650 10250
Wire Wire Line
	9650 10250 10100 10250
Wire Wire Line
	9900 8100 9900 10450
Connection ~ 9800 10200
Wire Wire Line
	9800 10200 10250 10200
Wire Bus Line
	10350 10550 10350 10850
Entry Wire Line
	10250 10550 10350 10450
Entry Wire Line
	10150 10550 10250 10450
Entry Wire Line
	10000 10550 10100 10450
Text Label 10350 10450 0    50   ~ 0
L
Text Label 10250 10450 0    50   ~ 0
N
Text Label 10100 10450 0    50   ~ 0
PE
Wire Wire Line
	10350 8100 10350 10450
Wire Wire Line
	10100 10450 10100 10250
Connection ~ 10100 10250
Wire Wire Line
	10250 10450 10250 10200
Connection ~ 10250 10200
Wire Bus Line
	11150 10550 11150 10850
Entry Wire Line
	11050 10550 11150 10450
Entry Wire Line
	10950 10550 11050 10450
Entry Wire Line
	10800 10550 10900 10450
Text Label 11150 10450 0    50   ~ 0
L
Text Label 11050 10450 0    50   ~ 0
N
Text Label 10900 10450 0    50   ~ 0
PE
Wire Wire Line
	11150 8100 11150 10450
Wire Wire Line
	11050 10450 11050 10200
Wire Wire Line
	10900 10450 10900 10250
Wire Bus Line
	11750 10550 11750 10850
Entry Wire Line
	11650 10550 11750 10450
Entry Wire Line
	11550 10550 11650 10450
Entry Wire Line
	11400 10550 11500 10450
Text Label 11750 10450 0    50   ~ 0
L
Text Label 11650 10450 0    50   ~ 0
N
Text Label 11500 10450 0    50   ~ 0
PE
Wire Wire Line
	11650 10450 11650 10200
Wire Wire Line
	11500 10450 11500 10250
$Comp
L device:CircuitBreaker_1P CB10
U 1 1 5E49D12D
P 12400 7800
F 0 "CB10" H 12452 7846 50  0000 L CNN
F 1 "Автоматика" H 12452 7755 50  0000 L CNN
F 2 "" H 12400 7800 50  0001 C CNN
F 3 "~" H 12400 7800 50  0001 C CNN
	1    12400 7800
	1    0    0    -1  
$EndComp
Connection ~ 11650 10200
Entry Wire Line
	10650 10550 10750 10450
Entry Wire Line
	10550 10550 10650 10450
Entry Wire Line
	10400 10550 10500 10450
Text Label 10750 10450 0    50   ~ 0
L
Text Label 10650 10450 0    50   ~ 0
N
Text Label 10500 10450 0    50   ~ 0
PE
Connection ~ 10900 10250
Wire Wire Line
	10900 10250 11500 10250
Connection ~ 11050 10200
Wire Wire Line
	11050 10200 11650 10200
Wire Wire Line
	10100 10250 10500 10250
Wire Wire Line
	10250 10200 10650 10200
Wire Wire Line
	10750 10450 10750 8100
Wire Wire Line
	10750 8100 10350 8100
Connection ~ 10350 8100
Wire Wire Line
	10650 10450 10650 10200
Connection ~ 10650 10200
Wire Wire Line
	10650 10200 11050 10200
Wire Wire Line
	10500 10450 10500 10250
Connection ~ 10500 10250
Wire Wire Line
	10500 10250 10900 10250
Wire Bus Line
	10750 10550 10750 11150
Wire Wire Line
	11150 7500 11150 7300
Connection ~ 11150 7300
Wire Wire Line
	11150 7300 11750 7300
Wire Wire Line
	10350 7500 10350 7300
Connection ~ 10350 7300
Wire Wire Line
	10350 7300 11150 7300
Text Notes 9850 11000 1    50   ~ 0
БП\nдомофона
Wire Wire Line
	11750 8100 11750 10450
Wire Wire Line
	11750 7500 11750 7300
Connection ~ 11750 7300
Wire Wire Line
	11750 7300 12400 7300
Wire Wire Line
	9900 7500 9900 7300
Connection ~ 9900 7300
Wire Wire Line
	9900 7300 10350 7300
Wire Wire Line
	12400 7500 12400 7300
Connection ~ 12400 7300
Wire Wire Line
	12400 7300 12500 7300
Text Notes 10300 11100 1    50   ~ 0
БП\nпожарной\nсигнализации
Wire Bus Line
	10250 11150 10750 11150
Wire Bus Line
	10750 11150 14950 11150
Connection ~ 10750 11150
Wire Wire Line
	12400 8100 12400 8250
Connection ~ 12400 8750
Wire Wire Line
	12400 8750 12400 9100
Connection ~ 12400 9100
Wire Wire Line
	12400 9100 12400 9850
Wire Wire Line
	12550 10200 13000 10200
Connection ~ 12550 10200
Wire Notes Line
	4250 5250 1000 5250
Wire Notes Line
	1000 5250 1000 15850
Wire Notes Line
	1000 15850 14450 15850
Wire Notes Line
	4250 1100 4250 5250
$Comp
L device:CircuitBreaker_3P CB1
U 1 1 5E37DDB9
P 2150 7850
F 0 "CB1" H 2403 7896 50  0000 L CNN
F 1 "Вводной автомат" H 2403 7805 50  0000 L CNN
F 2 "" H 2450 7750 50  0001 C CNN
F 3 "~" H 2400 7850 50  0001 C CNN
	1    2150 7850
	1    0    0    -1  
$EndComp
Entry Wire Line
	1850 7300 1950 7400
Entry Wire Line
	2050 7300 2150 7400
Entry Wire Line
	2250 7300 2350 7400
Wire Wire Line
	1950 7400 1950 7550
Wire Wire Line
	2150 7400 2150 7550
Wire Wire Line
	2350 7400 2350 7550
Text Label 1950 7450 0    50   ~ 0
A
Text Label 2150 7450 0    50   ~ 0
B
Text Label 2350 7450 0    50   ~ 0
C
Entry Wire Line
	1600 7300 1700 7400
Entry Wire Line
	1400 7300 1500 7400
Text Label 1300 7300 0    50   ~ 0
Ввод
Text Label 1700 7450 0    50   ~ 0
N
Text Label 1500 7450 0    50   ~ 0
PE
$Sheet
S 2550 8300 650  950 
U 5E3D73F8
F0 "Счетчик" 50
F1 "meter.sch" 50
F2 "A_in" I L 2550 8400 50 
F3 "A_out" O L 2550 8500 50 
F4 "B_in" I L 2550 8650 50 
F5 "B_out" O L 2550 8750 50 
F6 "C_in" I L 2550 8900 50 
F7 "C_out" O L 2550 9000 50 
F8 "N" U L 2550 9150 50 
$EndSheet
Wire Wire Line
	1950 8150 1950 8400
Wire Wire Line
	1950 8400 2550 8400
Wire Wire Line
	2150 8150 2150 8650
Wire Wire Line
	2150 8650 2550 8650
Wire Wire Line
	2350 8150 2350 8900
Wire Wire Line
	2350 8900 2550 8900
Wire Wire Line
	1700 9150 2550 9150
Wire Wire Line
	1700 7400 1700 9150
Wire Wire Line
	2550 8500 1950 8500
Wire Wire Line
	1950 8500 1950 9650
Wire Wire Line
	1950 9650 3400 9650
Wire Wire Line
	2550 8750 2150 8750
Wire Wire Line
	2150 8750 2150 9600
Wire Wire Line
	2150 9600 3350 9600
Wire Wire Line
	2550 9000 2350 9000
Wire Wire Line
	2350 9000 2350 9550
Wire Wire Line
	2350 9550 3300 9550
Wire Wire Line
	1700 9150 1700 10200
Wire Wire Line
	1700 10200 3500 10200
Connection ~ 1700 9150
Wire Wire Line
	1500 7400 1500 10250
Wire Wire Line
	3400 7300 9900 7300
Connection ~ 3500 10200
Wire Wire Line
	4650 7500 4650 7550
Wire Wire Line
	5150 9200 5150 9100
Connection ~ 5150 9100
Wire Wire Line
	5150 9100 4850 9100
Wire Wire Line
	5150 9800 5150 9900
Connection ~ 5150 9900
Wire Wire Line
	5150 9900 4850 9900
Wire Wire Line
	4850 9900 4850 10450
Connection ~ 4850 9900
Wire Wire Line
	4450 9800 4450 10200
$Comp
L relay:DIPxx-1Cxx-51x K2
U 1 1 62F8D47F
P 4150 8650
F 0 "K2" H 3750 8950 50  0000 L CNN
F 1 "DIPxx-1Cxx-51x" H 4580 8605 50  0001 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 4600 8600 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 4150 8650 50  0001 C CNN
	1    4150 8650
	1    0    0    -1  
$EndComp
Connection ~ 4600 10250
Wire Wire Line
	1500 10250 4600 10250
Wire Wire Line
	4650 8150 4650 9150
Wire Wire Line
	4650 9150 4150 9150
Wire Wire Line
	4150 9150 4150 10000
Wire Wire Line
	4150 10000 4750 10000
Wire Wire Line
	4350 8950 4350 9000
Wire Wire Line
	4350 9000 4450 9000
Connection ~ 4450 10200
Wire Wire Line
	4450 10200 9800 10200
Wire Wire Line
	3500 10200 4450 10200
Wire Wire Line
	3300 7400 7100 7400
Wire Wire Line
	3350 7350 4850 7350
Wire Wire Line
	4850 8150 4850 9100
Wire Wire Line
	4850 7550 4850 7350
Connection ~ 4850 7350
Wire Wire Line
	4850 7350 12500 7350
Wire Wire Line
	3700 8250 3950 8250
Wire Wire Line
	3950 8250 3950 8350
Wire Wire Line
	3700 9000 3950 9000
Wire Wire Line
	3950 9000 3950 8950
Wire Bus Line
	5450 11050 3600 11050
$Comp
L device:CircuitBreaker_2P CB3
U 1 1 63599FCD
P 7000 7850
F 0 "CB3" H 7152 7896 50  0000 L CNN
F 1 "Розетки правые" H 7152 7805 50  0000 L CNN
F 2 "" H 6900 7850 50  0001 C CNN
F 3 "~" H 6900 7850 50  0001 C CNN
	1    7000 7850
	1    0    0    -1  
$EndComp
$Comp
L relay:DIPxx-2Axx-21x K4
U 1 1 63599FD3
P 7000 9550
F 0 "K4" H 7480 9550 50  0000 L CNN
F 1 "DIPxx-2Axx-21x" H 7480 9505 50  0001 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 7500 9500 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 7000 9550 50  0001 C CNN
	1    7000 9550
	1    0    0    -1  
$EndComp
$Comp
L device:CircuitBreaker_1P CB4
U 1 1 63599FD9
P 7750 9550
F 0 "CB4" H 7802 9596 50  0000 L CNN
F 1 "Bypass" H 7802 9505 50  0000 L CNN
F 2 "" H 7750 9550 50  0001 C CNN
F 3 "~" H 7750 9550 50  0001 C CNN
	1    7750 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 9150 7400 9150
Connection ~ 7100 9150
Wire Wire Line
	7100 9150 7100 9250
Wire Wire Line
	7750 9250 7750 9150
Wire Wire Line
	7750 9850 7750 9950
Wire Wire Line
	7750 9950 7400 9950
Wire Wire Line
	7000 10450 7000 10050
Entry Wire Line
	5850 8400 5950 8300
Entry Wire Line
	5850 9150 5950 9050
Wire Wire Line
	6700 9050 6700 9250
Wire Wire Line
	7400 9250 7400 9150
Connection ~ 7400 9150
Wire Wire Line
	7400 9150 7100 9150
Wire Wire Line
	7400 9850 7400 9950
Connection ~ 7400 9950
Wire Wire Line
	7400 9950 7100 9950
Connection ~ 7100 9950
$Comp
L relay:DIPxx-1Cxx-51x K3
U 1 1 63599FF3
P 6400 8700
F 0 "K3" H 6000 9000 50  0000 L CNN
F 1 "DIPxx-1Cxx-51x" H 6830 8655 50  0001 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 6850 8650 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 6400 8700 50  0001 C CNN
	1    6400 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 8150 6900 9200
Wire Wire Line
	6900 9200 6400 9200
Wire Wire Line
	6400 9200 6400 10050
Wire Wire Line
	6400 10050 7000 10050
Wire Wire Line
	6600 9000 6600 9050
Wire Wire Line
	6600 9050 6700 9050
Wire Wire Line
	7100 8150 7100 9150
Wire Wire Line
	5950 8300 6200 8300
Wire Wire Line
	6200 8300 6200 8400
Wire Wire Line
	5950 9050 6200 9050
Wire Wire Line
	6200 9050 6200 9000
Wire Wire Line
	6900 7500 4650 7500
Connection ~ 4650 7500
Wire Wire Line
	7100 7550 7100 7400
Connection ~ 7100 7400
Wire Wire Line
	7100 7400 12500 7400
Wire Wire Line
	6900 7550 6900 7500
Wire Wire Line
	4600 10250 6850 10250
Connection ~ 6850 10250
Wire Wire Line
	6850 10250 9650 10250
Wire Wire Line
	7100 9950 7100 10450
Wire Wire Line
	7100 9850 7100 9950
Wire Bus Line
	5850 11100 5400 11100
Wire Wire Line
	4450 8350 4450 8250
Wire Wire Line
	4450 8250 6700 8250
Wire Wire Line
	6700 8250 6700 8400
Wire Wire Line
	6700 8250 12400 8250
Connection ~ 6700 8250
Connection ~ 12400 8250
Wire Wire Line
	12400 8250 12400 8750
Wire Wire Line
	11650 10200 12500 10200
NoConn ~ 7150 2850
NoConn ~ 7150 2950
Text Label 19300 4300 0    50   ~ 0
green
Text Label 19300 4200 0    50   ~ 0
yellow
Text Label 19300 4050 0    50   ~ 0
black
Wire Wire Line
	19300 4050 19800 4050
Entry Wire Line
	19200 4200 19300 4300
Entry Wire Line
	19200 4100 19300 4200
Entry Wire Line
	19200 3950 19300 4050
Wire Wire Line
	19800 4200 19300 4200
Wire Wire Line
	19300 4300 19800 4300
Wire Wire Line
	6850 14700 7550 14700
Wire Bus Line
	5850 8400 5850 11100
Wire Bus Line
	9500 1400 9500 5550
Wire Bus Line
	3600 8350 3600 11050
Wire Bus Line
	6200 750  6200 1700
Wire Bus Line
	2600 1450 2600 2300
Wire Bus Line
	3200 2300 3200 3400
Wire Bus Line
	4700 650  4700 1800
Wire Bus Line
	4500 10550 4850 10550
Wire Bus Line
	6750 10550 7100 10550
Wire Bus Line
	6750 14150 6750 14400
Wire Bus Line
	6750 13450 6750 13650
Wire Bus Line
	13300 6100 13300 8600
Wire Bus Line
	3800 550  3800 4300
Wire Bus Line
	6750 13100 6750 13300
Wire Bus Line
	9800 11600 9800 15450
Wire Bus Line
	6750 14450 6750 14700
Wire Bus Line
	12800 8600 12800 8850
Wire Bus Line
	12800 8200 12800 8450
Wire Bus Line
	12800 8950 12800 9300
Wire Bus Line
	12800 9650 12800 10000
Wire Bus Line
	9550 10550 9900 10550
Wire Bus Line
	10000 10550 10350 10550
Wire Bus Line
	10800 10550 11150 10550
Wire Bus Line
	11400 10550 11750 10550
Wire Bus Line
	10400 10550 10750 10550
Wire Bus Line
	9650 2100 9650 5450
Wire Bus Line
	6150 3550 6150 6300
Wire Bus Line
	12600 11550 12600 13350
Wire Bus Line
	10750 13150 10750 14100
Wire Bus Line
	6650 11400 6650 12950
Wire Bus Line
	6750 12050 6750 12400
Wire Bus Line
	6750 11600 6750 11950
Wire Bus Line
	19800 2300 19800 3100
Wire Bus Line
	16650 700  16650 1900
Wire Bus Line
	16600 3850 16600 4950
Wire Bus Line
	8400 1850 8400 2800
Wire Bus Line
	5850 1750 5850 3400
Wire Bus Line
	6150 2000 6150 3350
Wire Bus Line
	1300 7300 2400 7300
Wire Bus Line
	19200 3600 19200 4350
Wire Bus Line
	9650 11550 9650 15150
Wire Bus Line
	4500 5400 4500 6900
Wire Bus Line
	4500 2400 4500 4550
Wire Bus Line
	5950 1850 5950 5950
Wire Bus Line
	2400 1200 2400 4950
$EndSCHEMATC
