EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:win
LIBS:hr911105_rj45
LIBS:ip4220cz6
LIBS:74xgxx
LIBS:tm-kicad-lib
LIBS:mt9700
LIBS:lm75
LIBS:SY8113B
LIBS:rv-8803
LIBS:solderbridge
LIBS:vocore-breakout-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "VoCore2-Breakout / I2C system peripherals"
Date ""
Rev ""
Comp "(C) by Electronic Eel"
Comment1 "CC-BY-4.0"
Comment2 "https://git.io/fpKW4"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Battery_Cell BT1
U 1 1 5BB7C97E
P 2550 2400
F 0 "BT1" H 2650 2500 50  0000 L CNN
F 1 "CR2032" H 2650 2400 50  0000 L CNN
F 2 "modules:SMTU2032-LF-CoinCell" V 2550 2460 50  0001 C CNN
F 3 "" V 2550 2460 50  0001 C CNN
	1    2550 2400
	1    0    0    -1  
$EndComp
$Comp
L LM75 U7
U 1 1 5BB7CE5E
P 3300 6150
F 0 "U7" H 3400 6050 43  0000 C CNN
F 1 "TCN75A" H 3200 5800 43  0000 C CNN
F 2 "modules:MSOP-8-wide" H 3300 6150 43  0001 C CNN
F 3 "" H 3300 6150 43  0000 C CNN
	1    3300 6150
	-1   0    0    -1  
$EndComp
NoConn ~ 3600 6300
$Comp
L +3.3V #PWR058
U 1 1 5BB7D03A
P 2150 5300
F 0 "#PWR058" H 2150 5150 50  0001 C CNN
F 1 "+3.3V" H 2150 5440 50  0000 C CNN
F 2 "" H 2150 5300 50  0001 C CNN
F 3 "" H 2150 5300 50  0001 C CNN
	1    2150 5300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 5BB7D060
P 3200 6700
F 0 "#PWR059" H 3200 6450 50  0001 C CNN
F 1 "GND" H 3200 6550 50  0000 C CNN
F 2 "" H 3200 6700 50  0001 C CNN
F 3 "" H 3200 6700 50  0001 C CNN
	1    3200 6700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR060
U 1 1 5BB7D086
P 2150 6350
F 0 "#PWR060" H 2150 6100 50  0001 C CNN
F 1 "GND" H 2150 6200 50  0000 C CNN
F 2 "" H 2150 6350 50  0001 C CNN
F 3 "" H 2150 6350 50  0001 C CNN
	1    2150 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR061
U 1 1 5BB7D0AC
P 2750 6400
F 0 "#PWR061" H 2750 6150 50  0001 C CNN
F 1 "GND" H 2750 6250 50  0000 C CNN
F 2 "" H 2750 6400 50  0001 C CNN
F 3 "" H 2750 6400 50  0001 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5BB7D0D2
P 2150 6100
F 0 "C16" H 2175 6200 50  0000 L CNN
F 1 "1µF" H 2175 6000 50  0000 L CNN
F 2 "modules:SMD0603-wide-C" H 2188 5950 50  0001 C CNN
F 3 "" H 2150 6100 50  0001 C CNN
	1    2150 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5650 2150 5950
Wire Wire Line
	2150 6250 2150 6350
Wire Wire Line
	2750 6250 2850 6250
Wire Wire Line
	2750 6050 2750 6400
Wire Wire Line
	2850 6150 2750 6150
Connection ~ 2750 6250
Wire Wire Line
	2850 6050 2750 6050
Connection ~ 2750 6150
Wire Wire Line
	3200 6650 3200 6700
$Comp
L R R18
U 1 1 5BB7D2C9
P 2150 5500
F 0 "R18" V 2230 5500 50  0000 C CNN
F 1 "100R" V 2150 5500 50  0000 C CNN
F 2 "modules:SMD0603-wide-R" V 2080 5500 50  0001 C CNN
F 3 "" H 2150 5500 50  0001 C CNN
	1    2150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5350 2150 5300
Wire Wire Line
	3200 5800 3200 5750
Wire Wire Line
	3200 5750 2150 5750
Connection ~ 2150 5750
Text HLabel 5450 4650 2    60   Input ~ 0
SYS_SCL
Text HLabel 5450 4900 2    60   Input ~ 0
SYS_SDA
Wire Wire Line
	4750 4650 5450 4650
Wire Wire Line
	4750 3400 4750 6100
Wire Wire Line
	4750 3400 3700 3400
Wire Wire Line
	4750 6100 3600 6100
Connection ~ 4750 4650
Wire Wire Line
	4550 4900 5450 4900
Wire Wire Line
	4550 6000 3600 6000
Connection ~ 4550 4900
$Comp
L R R20
U 1 1 5BB7D74F
P 4950 4350
F 0 "R20" V 5030 4350 50  0000 C CNN
F 1 "4.7K" V 4950 4350 50  0000 C CNN
F 2 "modules:SMD0603-wide-R" V 4880 4350 50  0001 C CNN
F 3 "" H 4950 4350 50  0001 C CNN
	1    4950 4350
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 5BB7D790
P 5200 4350
F 0 "R21" V 5280 4350 50  0000 C CNN
F 1 "4.7K" V 5200 4350 50  0000 C CNN
F 2 "modules:SMD0603-wide-R" V 5130 4350 50  0001 C CNN
F 3 "" H 5200 4350 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR062
U 1 1 5BB7D891
P 4950 4000
F 0 "#PWR062" H 4950 3850 50  0001 C CNN
F 1 "+3.3V" H 4950 4140 50  0000 C CNN
F 2 "" H 4950 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4000 4950 4200
Wire Wire Line
	4950 4100 5200 4100
Wire Wire Line
	5200 4100 5200 4200
Connection ~ 4950 4100
Wire Wire Line
	4950 4500 4950 4650
Connection ~ 4950 4650
Wire Wire Line
	5200 4500 5200 4900
Connection ~ 5200 4900
$Comp
L RV-8803 U6
U 1 1 5BE83C0D
P 3200 3700
F 0 "U6" H 3250 3900 60  0000 C CNN
F 1 "RV-8803" H 3500 4200 60  0000 C CNN
F 2 "modules:MicroCrystal-C7" H 3200 3700 60  0001 C CNN
F 3 "" H 3200 3700 60  0001 C CNN
	1    3200 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3700 3550 4550 3550
Wire Wire Line
	4550 3550 4550 6000
$Comp
L GND #PWR063
U 1 1 5BE83E2D
P 3200 4450
F 0 "#PWR063" H 3200 4200 50  0001 C CNN
F 1 "GND" H 3200 4300 50  0000 C CNN
F 2 "" H 3200 4450 50  0001 C CNN
F 3 "" H 3200 4450 50  0001 C CNN
	1    3200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4450 3200 4350
Wire Wire Line
	3700 4000 3750 4000
Wire Wire Line
	3750 4000 3750 4400
Wire Wire Line
	3750 4400 3200 4400
Connection ~ 3200 4400
NoConn ~ 3700 3850
$Comp
L R R19
U 1 1 5BE83F50
P 2450 4100
F 0 "R19" V 2530 4100 50  0000 C CNN
F 1 "10K" V 2450 4100 50  0000 C CNN
F 2 "modules:SMD0603-wide-R" V 2380 4100 50  0001 C CNN
F 3 "" H 2450 4100 50  0001 C CNN
	1    2450 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR064
U 1 1 5BE83F93
P 2450 4350
F 0 "#PWR064" H 2450 4100 50  0001 C CNN
F 1 "GND" H 2450 4200 50  0000 C CNN
F 2 "" H 2450 4350 50  0001 C CNN
F 3 "" H 2450 4350 50  0001 C CNN
	1    2450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4250 2450 4350
$Comp
L GND #PWR065
U 1 1 5BE84368
P 2550 2550
F 0 "#PWR065" H 2550 2300 50  0001 C CNN
F 1 "GND" H 2550 2400 50  0000 C CNN
F 2 "" H 2550 2550 50  0001 C CNN
F 3 "" H 2550 2550 50  0001 C CNN
	1    2550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2550 2550 2500
$Comp
L C C15
U 1 1 5BE84452
P 2350 3200
F 0 "C15" H 2375 3300 50  0000 L CNN
F 1 "100nF" H 2375 3100 50  0000 L CNN
F 2 "modules:SMD0603-wide-C" H 2388 3050 50  0001 C CNN
F 3 "" H 2350 3200 50  0001 C CNN
	1    2350 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR066
U 1 1 5BE84483
P 2350 3400
F 0 "#PWR066" H 2350 3150 50  0001 C CNN
F 1 "GND" H 2350 3250 50  0000 C CNN
F 2 "" H 2350 3400 50  0001 C CNN
F 3 "" H 2350 3400 50  0001 C CNN
	1    2350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3400 2350 3350
Wire Wire Line
	2350 3050 2350 2950
Text Label 2600 2950 0    60   ~ 0
Vdd_RTC
Wire Wire Line
	2550 2050 2900 2050
Wire Wire Line
	2550 2050 2550 2200
$Comp
L +3.3V #PWR067
U 1 1 5BE846F3
P 3950 1950
F 0 "#PWR067" H 3950 1800 50  0001 C CNN
F 1 "+3.3V" H 3950 2090 50  0000 C CNN
F 2 "" H 3950 1950 50  0001 C CNN
F 3 "" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2050 3950 1950
Wire Wire Line
	3500 2050 3950 2050
Text Notes 1800 4000 1    60   ~ 0
RTC-Calibration\nOutput
Wire Wire Line
	1900 3850 2700 3850
Wire Wire Line
	2450 3950 2450 3700
$Comp
L R R26
U 1 1 5BE84CDC
P 3200 2500
F 0 "R26" V 3280 2500 50  0000 C CNN
F 1 "100R" V 3200 2500 50  0000 C CNN
F 2 "modules:SMD0603-wide-R" V 3130 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3050 3200 2650
Text Notes 3500 2850 1    60   ~ 0
Slew-Rate \nlimiter + Filter
$Comp
L D_Schottky_x2_KCom_AAK D5
U 1 1 5BE85161
P 3200 2050
F 0 "D5" H 3250 1950 50  0000 C CNN
F 1 "BAS70-05" H 3200 2150 50  0000 C CNN
F 2 "modules:SOT-23" H 3200 2050 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2350 3200 2250
$Comp
L PWR_FLAG #FLG068
U 1 1 5BE88EC6
P 2200 2850
F 0 "#FLG068" H 2200 2925 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 3000 50  0000 C CNN
F 2 "" H 2200 2850 50  0001 C CNN
F 3 "" H 2200 2850 50  0001 C CNN
	1    2200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2950 3200 2950
Connection ~ 3200 2950
Wire Wire Line
	2200 2850 2200 2950
Connection ~ 2350 2950
Wire Wire Line
	2050 3700 2700 3700
$Comp
L TST J11
U 1 1 5BF1895B
P 1900 3850
F 0 "J11" H 1900 4150 40  0000 C CNN
F 1 "TST" H 1900 4090 40  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-TH_Small" H 1900 3850 60  0001 C CNN
F 3 "" H 1900 3850 60  0000 C CNN
	1    1900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3400 2050 3700
Connection ~ 2450 3700
Wire Wire Line
	4100 4900 4100 5050
Wire Wire Line
	4100 5050 3800 5050
Wire Wire Line
	3800 5150 4750 5150
Connection ~ 4750 5150
Wire Wire Line
	3800 5250 4550 5250
Connection ~ 4550 5250
$Comp
L GND #PWR069
U 1 1 5BF731C0
P 3950 5400
F 0 "#PWR069" H 3950 5150 50  0001 C CNN
F 1 "GND" H 3950 5250 50  0000 C CNN
F 2 "" H 3950 5400 50  0001 C CNN
F 3 "" H 3950 5400 50  0001 C CNN
	1    3950 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5350 3950 5350
Wire Wire Line
	3950 5350 3950 5400
$Comp
L Conn_01x02 J15
U 1 1 5BF73553
P 5750 5600
F 0 "J15" H 5750 5700 50  0000 C CNN
F 1 "Conn_01x02" H 5750 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5750 5600 50  0001 C CNN
F 3 "" H 5750 5600 50  0001 C CNN
	1    5750 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR070
U 1 1 5BF735B0
P 5450 5800
F 0 "#PWR070" H 5450 5550 50  0001 C CNN
F 1 "GND" H 5450 5650 50  0000 C CNN
F 2 "" H 5450 5800 50  0001 C CNN
F 3 "" H 5450 5800 50  0001 C CNN
	1    5450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5700 5550 5700
Wire Wire Line
	5450 5600 5550 5600
$Comp
L Conn_01x04 J14
U 1 1 5BF73EA1
P 3600 5150
F 0 "J14" H 3600 5350 50  0000 C CNN
F 1 "Conn_01x04" H 3600 4850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3600 5150 50  0001 C CNN
F 3 "" H 3600 5150 50  0001 C CNN
	1    3600 5150
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR071
U 1 1 5BF745A5
P 4100 4900
F 0 "#PWR071" H 4100 4750 50  0001 C CNN
F 1 "+3.3V" H 4100 5040 50  0000 C CNN
F 2 "" H 4100 4900 50  0001 C CNN
F 3 "" H 4100 4900 50  0001 C CNN
	1    4100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5700 5450 5800
$Comp
L +5V #PWR072
U 1 1 5BF746DD
P 5450 5500
F 0 "#PWR072" H 5450 5350 50  0001 C CNN
F 1 "+5V" H 5450 5640 50  0000 C CNN
F 2 "" H 5450 5500 50  0001 C CNN
F 3 "" H 5450 5500 50  0001 C CNN
	1    5450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5600 5450 5500
$Comp
L Solderbridge SB1
U 1 1 5BFAE86C
P 2050 3300
F 0 "SB1" H 2050 3400 39  0000 C CNN
F 1 "Solderbridge" H 2050 3200 39  0000 C CNN
F 2 "modules:Solderbridge" H 2050 3300 60  0001 C CNN
F 3 "" H 2050 3300 60  0000 C CNN
	1    2050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3200 2050 2950
Connection ~ 2200 2950
$EndSCHEMATC
