EESchema Schematic File Version 2
LIBS:conn
LIBS:stmbl_3.4-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 15
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SI8621 U?
U 1 1 56590991
P 4050 1950
F 0 "U?" H 4600 1250 60  0000 C CNN
F 1 "SI8621" H 4050 1300 60  0000 C CNN
F 2 "" H 4050 1950 60  0000 C CNN
F 3 "" H 4050 1950 60  0000 C CNN
	1    4050 1950
	1    0    0    -1  
$EndComp
$Sheet
S 6000 1800 1000 1400
U 565909D0
F0 "f1" 60
F1 "f1.sch" 60
F2 "CH1N" I R 7000 1900 60 
F3 "CH2N" I R 7000 2100 60 
F4 "CH3N" I R 7000 2300 60 
F5 "CH1" I R 7000 2000 60 
F6 "CH2" I R 7000 2200 60 
F7 "CH3" I R 7000 2400 60 
F8 "HV_TX" I L 6000 2000 60 
F9 "HV_RX" I L 6000 1900 60 
F10 "A_15V" I L 6000 2300 60 
F11 "A_HV" I L 6000 2750 60 
F12 "A_U" I L 6000 3100 60 
F13 "A_V" I L 6000 3000 60 
F14 "A_W" I L 6000 2900 60 
F15 "A_T_HV" I R 7000 2900 60 
F16 "A_T_MOT" I L 6000 2200 60 
F17 "HV_EN" I R 7000 2600 60 
F18 "HV_FLT" I R 7000 2700 60 
F19 "BKIN" I L 6000 2100 60 
F20 "A_IU" I L 6000 2400 60 
F21 "A_IV" I L 6000 2500 60 
F22 "A_IW" I L 6000 2600 60 
$EndSheet
$Sheet
S 3400 3400 750  500 
U 565909D4
F0 "viper" 60
F1 "viper.sch" 60
$EndSheet
$Sheet
S 6000 3400 1000 550 
U 56590A3E
F0 "back-emf" 60
F1 "hv_sense.sch" 60
F2 "U" I R 7000 3500 60 
F3 "U_" I L 6000 3500 60 
F4 "V" I R 7000 3600 60 
F5 "V_" I L 6000 3600 60 
F6 "W" I R 7000 3700 60 
F7 "W_" I L 6000 3700 60 
F8 "HV" I R 7000 3850 60 
F9 "HV_" I L 6000 3850 60 
$EndSheet
$Sheet
S 7400 1800 800  2400
U 56590A75
F0 "driver" 60
F1 "hv_drive.sch" 60
F2 "W" I L 7400 3700 60 
F3 "V" I L 7400 3600 60 
F4 "U" I L 7400 3500 60 
F5 "V+" I L 7400 3850 60 
F6 "Vth" I L 7400 2900 60 
F7 "HU" I L 7400 1900 60 
F8 "LU" I L 7400 2000 60 
F9 "HV" I L 7400 2100 60 
F10 "LV" I L 7400 2200 60 
F11 "HW" I L 7400 2300 60 
F12 "LW" I L 7400 2400 60 
F13 "en" I L 7400 2600 60 
F14 "itirp" I L 7400 2800 60 
F15 "CUL" I R 8200 3900 60 
F16 "CVL" I R 8200 3800 60 
F17 "CWL" I R 8200 3700 60 
F18 "CUH" I R 8200 3600 60 
F19 "CVH" I R 8200 3500 60 
F20 "CWH" I R 8200 3400 60 
$EndSheet
Wire Wire Line
	7000 1900 7400 1900
Wire Wire Line
	7000 2000 7400 2000
Wire Wire Line
	7000 2100 7400 2100
Wire Wire Line
	7000 2200 7400 2200
Wire Wire Line
	7000 2300 7400 2300
Wire Wire Line
	7000 2400 7400 2400
Wire Wire Line
	7000 2600 7400 2600
Wire Wire Line
	7000 2700 7200 2700
Wire Wire Line
	7200 2700 7200 2600
Connection ~ 7200 2600
Wire Wire Line
	7000 2900 7400 2900
Wire Wire Line
	7000 3500 7400 3500
Wire Wire Line
	7000 3600 7400 3600
Wire Wire Line
	7000 3700 7400 3700
Wire Wire Line
	7000 3850 7400 3850
Wire Wire Line
	6000 3100 5900 3100
Wire Wire Line
	5900 3100 5900 3500
Wire Wire Line
	5900 3500 6000 3500
Wire Wire Line
	6000 3600 5800 3600
Wire Wire Line
	5800 3600 5800 3000
Wire Wire Line
	5800 3000 6000 3000
Wire Wire Line
	6000 2900 5700 2900
Wire Wire Line
	5700 2900 5700 3700
Wire Wire Line
	5700 3700 6000 3700
Wire Wire Line
	6000 3850 5550 3850
Wire Wire Line
	5550 3850 5550 2750
Wire Wire Line
	5550 2750 6000 2750
Text HLabel 3100 2100 0    60   Input ~ 0
TX
Text HLabel 3100 1800 0    60   Input ~ 0
RX
$Comp
L GND #PWR?
U 1 1 566A2E2E
P 3700 2800
F 0 "#PWR?" H 3700 2550 50  0001 C CNN
F 1 "GND" H 3700 2650 50  0000 C CNN
F 2 "" H 3700 2800 60  0000 C CNN
F 3 "" H 3700 2800 60  0000 C CNN
	1    3700 2800
	1    0    0    -1  
$EndComp
$Comp
L GNDPWR #PWR?
U 1 1 566A2FC8
P 4400 2800
F 0 "#PWR?" H 4400 2600 50  0001 C CNN
F 1 "GNDPWR" H 4400 2670 50  0000 C CNN
F 2 "" H 4400 2750 60  0000 C CNN
F 3 "" H 4400 2750 60  0000 C CNN
	1    4400 2800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 566A3162
P 3700 1050
F 0 "#PWR?" H 3700 900 50  0001 C CNN
F 1 "+3.3V" H 3700 1190 50  0000 C CNN
F 2 "" H 3700 1050 60  0000 C CNN
F 3 "" H 3700 1050 60  0000 C CNN
	1    3700 1050
	1    0    0    -1  
$EndComp
$Comp
L +3.3VP #PWR?
U 1 1 566A32FC
P 4400 1050
F 0 "#PWR?" H 4550 1000 50  0001 C CNN
F 1 "+3.3VP" H 4400 1150 50  0000 C CNN
F 2 "" H 4400 1050 60  0000 C CNN
F 3 "" H 4400 1050 60  0000 C CNN
	1    4400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1050 4400 1250
Wire Wire Line
	3700 1050 3700 1250
Wire Wire Line
	3100 1800 3200 1800
Wire Wire Line
	3100 2100 3200 2100
Wire Wire Line
	3700 2800 3700 2700
Wire Wire Line
	4400 2800 4400 2700
Wire Wire Line
	4900 1800 5500 1800
Wire Wire Line
	5500 1800 5500 1900
Wire Wire Line
	5500 1900 6000 1900
Wire Wire Line
	6000 2000 5500 2000
Wire Wire Line
	5500 2000 5500 2100
Wire Wire Line
	5500 2100 4900 2100
$Comp
L R R?
U 1 1 566A39B6
P 5400 1550
F 0 "R?" V 5480 1550 50  0000 C CNN
F 1 "R" V 5400 1550 50  0000 C CNN
F 2 "" V 5330 1550 30  0000 C CNN
F 3 "" H 5400 1550 30  0000 C CNN
	1    5400 1550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 566A3B64
P 3450 1150
F 0 "C?" H 3475 1250 50  0000 L CNN
F 1 "100n" H 3475 1050 50  0000 L CNN
F 2 "" H 3488 1000 30  0000 C CNN
F 3 "" H 3450 1150 60  0000 C CNN
	1    3450 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 1150 3700 1150
Connection ~ 3700 1150
$Comp
L C C?
U 1 1 566A4471
P 4650 1150
F 0 "C?" H 4675 1250 50  0000 L CNN
F 1 "100n" H 4675 1050 50  0000 L CNN
F 2 "" H 4688 1000 30  0000 C CNN
F 3 "" H 4650 1150 60  0000 C CNN
	1    4650 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 1150 4400 1150
Connection ~ 4400 1150
$Comp
L GND #PWR?
U 1 1 566A4897
P 3200 1150
F 0 "#PWR?" H 3200 900 50  0001 C CNN
F 1 "GND" H 3200 1000 50  0000 C CNN
F 2 "" H 3200 1150 60  0000 C CNN
F 3 "" H 3200 1150 60  0000 C CNN
	1    3200 1150
	0    1    1    0   
$EndComp
$Comp
L GNDPWR #PWR?
U 1 1 566A4A42
P 4900 1150
F 0 "#PWR?" H 4900 950 50  0001 C CNN
F 1 "GNDPWR" H 4900 1020 50  0000 C CNN
F 2 "" H 4900 1100 60  0000 C CNN
F 3 "" H 4900 1100 60  0000 C CNN
	1    4900 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 1150 4900 1150
Wire Wire Line
	3200 1150 3300 1150
$Comp
L C C?
U 1 1 566A5119
P 5400 1050
F 0 "C?" H 5425 1150 50  0000 L CNN
F 1 "100n" H 5425 950 50  0000 L CNN
F 2 "" H 5438 900 30  0000 C CNN
F 3 "" H 5400 1050 60  0000 C CNN
	1    5400 1050
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 566A56D0
P 5600 1050
F 0 "R?" V 5680 1050 50  0000 C CNN
F 1 "R" V 5600 1050 50  0000 C CNN
F 2 "" V 5530 1050 30  0000 C CNN
F 3 "" H 5600 1050 30  0000 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 566A5921
P 5750 1050
F 0 "R?" V 5830 1050 50  0000 C CNN
F 1 "R" V 5750 1050 50  0000 C CNN
F 2 "" V 5680 1050 30  0000 C CNN
F 3 "" H 5750 1050 30  0000 C CNN
	1    5750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1200 5400 1400
Wire Wire Line
	5400 1700 5400 1800
Connection ~ 5400 1800
Wire Wire Line
	5400 1300 5750 1300
Wire Wire Line
	5750 1200 5750 2100
Wire Wire Line
	5600 1200 5600 1300
Connection ~ 5600 1300
Connection ~ 5400 1300
Wire Wire Line
	5400 700  5400 900 
Wire Wire Line
	5400 800  5600 800 
Wire Wire Line
	5600 800  5600 900 
$Comp
L GNDPWR #PWR?
U 1 1 566A62B0
P 5400 700
F 0 "#PWR?" H 5400 500 50  0001 C CNN
F 1 "GNDPWR" H 5400 570 50  0000 C CNN
F 2 "" H 5400 650 60  0000 C CNN
F 3 "" H 5400 650 60  0000 C CNN
	1    5400 700 
	-1   0    0    1   
$EndComp
Connection ~ 5400 800 
$Comp
L +3.3VP #PWR?
U 1 1 566A65B7
P 5750 700
F 0 "#PWR?" H 5900 650 50  0001 C CNN
F 1 "+3.3VP" H 5750 800 50  0000 C CNN
F 2 "" H 5750 700 60  0000 C CNN
F 3 "" H 5750 700 60  0000 C CNN
	1    5750 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 700  5750 900 
Wire Wire Line
	5750 2100 6000 2100
Connection ~ 5750 1300
$Comp
L +15V #PWR?
U 1 1 56695890
P 5900 2300
F 0 "#PWR?" H 5900 2150 50  0001 C CNN
F 1 "+15V" H 5900 2440 50  0000 C CNN
F 2 "" H 5900 2300 60  0000 C CNN
F 3 "" H 5900 2300 60  0000 C CNN
	1    5900 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 2300 6000 2300
$Sheet
S 8450 3350 750  600 
U 566962E3
F0 "cur sense" 60
F1 "cur.sch" 60
F2 "VH" I L 8450 3500 60 
F3 "VL" I L 8450 3800 60 
F4 "V" I R 9200 3650 60 
F5 "WH" I L 8450 3400 60 
F6 "WL" I L 8450 3700 60 
F7 "W" I R 9200 3750 60 
F8 "UH" I L 8450 3600 60 
F9 "UL" I L 8450 3900 60 
F10 "U" I R 9200 3550 60 
$EndSheet
Wire Wire Line
	8200 3900 8450 3900
Wire Wire Line
	8200 3800 8450 3800
Wire Wire Line
	8200 3700 8450 3700
Wire Wire Line
	8200 3600 8450 3600
Wire Wire Line
	8200 3500 8450 3500
Wire Wire Line
	8200 3400 8450 3400
Wire Wire Line
	9200 3750 9300 3750
Wire Wire Line
	9300 3750 9300 4350
Wire Wire Line
	9300 4350 5450 4350
Wire Wire Line
	5450 4350 5450 2600
Wire Wire Line
	5450 2600 6000 2600
Wire Wire Line
	6000 2500 5350 2500
Wire Wire Line
	5350 2500 5350 4450
Wire Wire Line
	5350 4450 9400 4450
Wire Wire Line
	9400 4450 9400 3650
Wire Wire Line
	9400 3650 9200 3650
Wire Wire Line
	9200 3550 9500 3550
Wire Wire Line
	9500 3550 9500 4550
Wire Wire Line
	9500 4550 5250 4550
Wire Wire Line
	5250 4550 5250 2400
Wire Wire Line
	5250 2400 6000 2400
$EndSCHEMATC
