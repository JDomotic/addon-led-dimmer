EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L Connector:Conn_01x05_Male J4
U 1 1 5BFADEEA
P 9950 6000
F 0 "J4" V 10000 6350 50  0000 C CNN
F 1 "Conn_01x05_Male" V 9800 6000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 9950 6000 50  0001 C CNN
F 3 "~" H 9950 6000 50  0001 C CNN
	1    9950 6000
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5BFAE268
P 10150 5650
F 0 "#PWR0107" H 10150 5500 50  0001 C CNN
F 1 "+3.3V" H 10000 5800 50  0000 L CNN
F 2 "" H 10150 5650 50  0001 C CNN
F 3 "" H 10150 5650 50  0001 C CNN
	1    10150 5650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5BFAE2DD
P 9950 5650
F 0 "#PWR0108" H 9950 5400 50  0001 C CNN
F 1 "GND" V 9955 5522 50  0000 R CNN
F 2 "" H 9950 5650 50  0001 C CNN
F 3 "" H 9950 5650 50  0001 C CNN
	1    9950 5650
	1    0    0    1   
$EndComp
Text Notes 3200 3100 0    50   ~ 0
Power 12V -> 3.3v\n\n
$Comp
L power:GND #PWR07
U 1 1 5C059B77
P 7450 4100
F 0 "#PWR07" H 7450 3850 50  0001 C CNN
F 1 "GND" H 7455 3927 50  0000 C CNN
F 2 "" H 7450 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0001 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5C059FEC
P 9450 3900
F 0 "#PWR06" H 9450 3750 50  0001 C CNN
F 1 "+3.3V" H 9465 4073 50  0000 C CNN
F 2 "" H 9450 3900 50  0001 C CNN
F 3 "" H 9450 3900 50  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J3
U 1 1 5C1EDF1F
P 10050 4850
F 0 "J3" V 10100 5200 50  0000 C CNN
F 1 "Conn_01x05_Male RIGHT" V 9900 4850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 10050 4850 50  0001 C CNN
F 3 "~" H 10050 4850 50  0001 C CNN
	1    10050 4850
	0    1    -1   0   
$EndComp
Wire Wire Line
	9950 5800 9950 5650
Wire Wire Line
	10150 5650 10150 5800
NoConn ~ 9850 5800
$Comp
L power:+3.3V #PWR0102
U 1 1 5C2D6C6B
P 10250 4500
F 0 "#PWR0102" H 10250 4350 50  0001 C CNN
F 1 "+3.3V" H 10100 4650 50  0000 L CNN
F 2 "" H 10250 4500 50  0001 C CNN
F 3 "" H 10250 4500 50  0001 C CNN
	1    10250 4500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C2D6C71
P 10050 4500
F 0 "#PWR0103" H 10050 4250 50  0001 C CNN
F 1 "GND" V 10055 4372 50  0000 R CNN
F 2 "" H 10050 4500 50  0001 C CNN
F 3 "" H 10050 4500 50  0001 C CNN
	1    10050 4500
	1    0    0    1   
$EndComp
Wire Wire Line
	10050 4650 10050 4500
Wire Wire Line
	10250 4500 10250 4650
Text GLabel 9850 4650 1    50   Input ~ 0
TxD
Text GLabel 8550 4600 3    50   Input ~ 0
TxD
$Comp
L Transistor_FET:2N7000 Q6
U 1 1 5C2D7339
P 8400 6800
F 0 "Q6" V 8650 6800 50  0000 C CNN
F 1 "PMV16XNR " V 8741 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8600 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 8400 6800 50  0001 L CNN
F 4 "C110920" V 8400 6800 50  0001 C CNN "Vendor"
	1    8400 6800
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q5
U 1 1 5C2D765A
P 8950 6800
F 0 "Q5" V 9200 6800 50  0000 C CNN
F 1 "PMV16XNR " V 9291 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9150 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 8950 6800 50  0001 L CNN
F 4 "C110920" V 8950 6800 50  0001 C CNN "Vendor"
	1    8950 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 6600 8400 6450
Wire Wire Line
	8400 6450 8850 6450
$Comp
L Transistor_FET:2N7000 Q4
U 1 1 5C2D7FD7
P 9500 6800
F 0 "Q4" V 9750 6800 50  0000 C CNN
F 1 "PMV16XNR " V 9841 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9700 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 9500 6800 50  0001 L CNN
F 4 "C110920" V 9500 6800 50  0001 C CNN "Vendor"
	1    9500 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 6600 9500 6450
Wire Wire Line
	9500 6450 9050 6450
$Comp
L power:GND #PWR0105
U 1 1 5C2D8404
P 8200 6900
F 0 "#PWR0105" H 8200 6650 50  0001 C CNN
F 1 "GND" H 8205 6727 50  0000 C CNN
F 2 "" H 8200 6900 50  0001 C CNN
F 3 "" H 8200 6900 50  0001 C CNN
	1    8200 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C2D8468
P 8750 6900
F 0 "#PWR0106" H 8750 6650 50  0001 C CNN
F 1 "GND" H 8755 6727 50  0000 C CNN
F 2 "" H 8750 6900 50  0001 C CNN
F 3 "" H 8750 6900 50  0001 C CNN
	1    8750 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5C2D84B6
P 9300 6900
F 0 "#PWR0109" H 9300 6650 50  0001 C CNN
F 1 "GND" H 9305 6727 50  0000 C CNN
F 2 "" H 9300 6900 50  0001 C CNN
F 3 "" H 9300 6900 50  0001 C CNN
	1    9300 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 6900 9700 7450
Wire Wire Line
	8600 6900 8600 7450
Wire Wire Line
	9250 7650 9250 7450
Wire Wire Line
	9250 7450 9700 7450
Wire Wire Line
	9150 6900 9150 7650
Wire Wire Line
	9050 7450 9050 7650
Wire Wire Line
	8600 7450 9050 7450
$Comp
L power:+12V #PWR0110
U 1 1 5C2DDA53
P 4550 3400
F 0 "#PWR0110" H 4550 3250 50  0001 C CNN
F 1 "+12V" H 4565 3573 50  0000 C CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5C2DDB2B
P 4350 3400
F 0 "#PWR0111" H 4350 3150 50  0001 C CNN
F 1 "GND" H 4355 3227 50  0000 C CNN
F 2 "" H 4350 3400 50  0001 C CNN
F 3 "" H 4350 3400 50  0001 C CNN
	1    4350 3400
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C2DDBF4
P 4500 3650
F 0 "J1" V 4700 3550 50  0000 L CNN
F 1 "RGB_VIN" V 4600 3450 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 4500 3650 50  0001 C CNN
F 3 "~" H 4500 3650 50  0001 C CNN
F 4 "C8269" V 4500 3650 50  0001 C CNN "Vendor"
	1    4500 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3400 4400 3400
Wire Wire Line
	4400 3400 4400 3450
Wire Wire Line
	4500 3450 4500 3400
Wire Wire Line
	4500 3400 4550 3400
$Comp
L power:+12V #PWR0112
U 1 1 5C2DEC57
P 9350 7650
F 0 "#PWR0112" H 9350 7500 50  0001 C CNN
F 1 "+12V" V 9365 7778 50  0000 L CNN
F 2 "" H 9350 7650 50  0001 C CNN
F 3 "" H 9350 7650 50  0001 C CNN
	1    9350 7650
	0    1    1    0   
$EndComp
Wire Notes Line
	7900 6400 7900 8100
Wire Notes Line
	10100 8100 10100 6400
Text Notes 8150 7950 0    50   ~ 0
RGB Strip 1\n
$Comp
L Transistor_FET:2N7000 Q3
U 1 1 5C2E2F21
P 4250 6800
F 0 "Q3" V 4500 6800 50  0000 C CNN
F 1 "PMV16XNR " V 4591 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4450 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 4250 6800 50  0001 L CNN
F 4 "C110920" V 4250 6800 50  0001 C CNN "Vendor"
	1    4250 6800
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5C2E2F28
P 4800 6800
F 0 "Q2" V 5050 6800 50  0000 C CNN
F 1 "PMV16XNR " V 5141 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 4800 6800 50  0001 L CNN
F 4 "C110920" V 4800 6800 50  0001 C CNN "Vendor"
	1    4800 6800
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5C2E2F31
P 5350 6800
F 0 "Q1" V 5600 6800 50  0000 C CNN
F 1 "PMV16XNR " V 5691 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5550 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 5350 6800 50  0001 L CNN
F 4 "C110920" V 5350 6800 50  0001 C CNN "Vendor"
	1    5350 6800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C2E2F3B
P 4050 6900
F 0 "#PWR0113" H 4050 6650 50  0001 C CNN
F 1 "GND" H 4055 6727 50  0000 C CNN
F 2 "" H 4050 6900 50  0001 C CNN
F 3 "" H 4050 6900 50  0001 C CNN
	1    4050 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5C2E2F41
P 4600 6900
F 0 "#PWR0114" H 4600 6650 50  0001 C CNN
F 1 "GND" H 4605 6727 50  0000 C CNN
F 2 "" H 4600 6900 50  0001 C CNN
F 3 "" H 4600 6900 50  0001 C CNN
	1    4600 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5C2E2F47
P 5150 6900
F 0 "#PWR0115" H 5150 6650 50  0001 C CNN
F 1 "GND" H 5155 6727 50  0000 C CNN
F 2 "" H 5150 6900 50  0001 C CNN
F 3 "" H 5150 6900 50  0001 C CNN
	1    5150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6900 5550 7450
Wire Wire Line
	4450 6900 4450 7450
Wire Wire Line
	5100 7650 5100 7450
Wire Wire Line
	5100 7450 5550 7450
Wire Wire Line
	5000 6900 5000 7650
Wire Wire Line
	4900 7450 4900 7650
Wire Wire Line
	4450 7450 4900 7450
$Comp
L power:+12V #PWR0116
U 1 1 5C2E2F5B
P 5200 7650
F 0 "#PWR0116" H 5200 7500 50  0001 C CNN
F 1 "+12V" V 5215 7778 50  0000 L CNN
F 2 "" H 5200 7650 50  0001 C CNN
F 3 "" H 5200 7650 50  0001 C CNN
	1    5200 7650
	0    1    1    0   
$EndComp
Text Notes 4000 7950 0    50   ~ 0
RGB Strip 3\n
$Comp
L Connector:Screw_Terminal_01x04 J6
U 1 1 5C30E63F
P 9250 7850
F 0 "J6" V 9350 7750 50  0000 L CNN
F 1 "RGB_strip_1" V 9450 7600 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4_1x04_P5.00mm_Horizontal" H 9250 7850 50  0001 C CNN
F 3 "~" H 9250 7850 50  0001 C CNN
F 4 "C8269*2" V 9250 7850 50  0001 C CNN "Vendor"
	1    9250 7850
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 5C30EA7B
P 5100 7850
F 0 "J5" V 5200 7750 50  0000 L CNN
F 1 "RGB_strip_3" V 5300 7600 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4_1x04_P5.00mm_Horizontal" H 5100 7850 50  0001 C CNN
F 3 "~" H 5100 7850 50  0001 C CNN
F 4 "C8269*2" V 5100 7850 50  0001 C CNN "Vendor"
	1    5100 7850
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q12
U 1 1 5C34BF6A
P 7350 6800
F 0 "Q12" V 7600 6800 50  0000 C CNN
F 1 "PMV16XNR " V 7691 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7550 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 7350 6800 50  0001 L CNN
F 4 "C110920" V 7350 6800 50  0001 C CNN "Vendor"
	1    7350 6800
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q11
U 1 1 5C34BF70
P 6800 6800
F 0 "Q11" V 7050 6800 50  0000 C CNN
F 1 "PMV16XNR " V 7141 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7000 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 6800 6800 50  0001 L CNN
F 4 "C110920" V 6800 6800 50  0001 C CNN "Vendor"
	1    6800 6800
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q10
U 1 1 5C34BF78
P 6250 6800
F 0 "Q10" V 6500 6800 50  0000 C CNN
F 1 "PMV16XNR " V 6591 6800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6450 6725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub/Collateral/NTR2101P-D.PDF" H 6250 6800 50  0001 L CNN
F 4 "C110920" V 6250 6800 50  0001 C CNN "Vendor"
	1    6250 6800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C34BF80
P 6050 6900
F 0 "#PWR01" H 6050 6650 50  0001 C CNN
F 1 "GND" H 6055 6727 50  0000 C CNN
F 2 "" H 6050 6900 50  0001 C CNN
F 3 "" H 6050 6900 50  0001 C CNN
	1    6050 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C34BF86
P 6600 6900
F 0 "#PWR02" H 6600 6650 50  0001 C CNN
F 1 "GND" H 6605 6727 50  0000 C CNN
F 2 "" H 6600 6900 50  0001 C CNN
F 3 "" H 6600 6900 50  0001 C CNN
	1    6600 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C34BF8C
P 7150 6900
F 0 "#PWR03" H 7150 6650 50  0001 C CNN
F 1 "GND" H 7155 6727 50  0000 C CNN
F 2 "" H 7150 6900 50  0001 C CNN
F 3 "" H 7150 6900 50  0001 C CNN
	1    7150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 6900 7550 7450
Wire Wire Line
	6450 6900 6450 7450
Wire Wire Line
	7100 7650 7100 7450
Wire Wire Line
	7100 7450 7550 7450
Wire Wire Line
	7000 6900 7000 7650
Wire Wire Line
	6900 7450 6900 7650
Wire Wire Line
	6450 7450 6900 7450
$Comp
L power:+12V #PWR04
U 1 1 5C34BF99
P 7200 7650
F 0 "#PWR04" H 7200 7500 50  0001 C CNN
F 1 "+12V" V 7215 7778 50  0000 L CNN
F 2 "" H 7200 7650 50  0001 C CNN
F 3 "" H 7200 7650 50  0001 C CNN
	1    7200 7650
	0    1    1    0   
$EndComp
Wire Notes Line
	5900 6400 5900 8100
Text Notes 6000 7950 0    50   ~ 0
RGB Strip 2\n
$Comp
L Connector:Screw_Terminal_01x04 J9
U 1 1 5C34BFA3
P 7100 7850
F 0 "J9" V 7200 7750 50  0000 L CNN
F 1 "RGB_strip_2" V 7300 7600 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4_1x04_P5.00mm_Horizontal" H 7100 7850 50  0001 C CNN
F 3 "~" H 7100 7850 50  0001 C CNN
F 4 "C8269*2" V 7100 7850 50  0001 C CNN "Vendor"
	1    7100 7850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5C396B10
P 4500 4850
F 0 "#PWR0125" H 4500 4600 50  0001 C CNN
F 1 "GND" H 4505 4677 50  0000 C CNN
F 2 "" H 4500 4850 50  0001 C CNN
F 3 "" H 4500 4850 50  0001 C CNN
	1    4500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5C3AE7A9
P 3650 4700
F 0 "C1" H 3350 4750 50  0000 L CNN
F 1 "680uF" H 3300 4650 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 3688 4550 50  0001 C CNN
F 3 "~" H 3650 4700 50  0001 C CNN
F 4 "C59427" H 3650 4700 50  0001 C CNN "Vendor"
	1    3650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4350 4000 4350
$Comp
L power:+12V #PWR0126
U 1 1 5C3B2146
P 3650 4350
F 0 "#PWR0126" H 3650 4200 50  0001 C CNN
F 1 "+12V" H 3665 4523 50  0000 C CNN
F 2 "" H 3650 4350 50  0001 C CNN
F 3 "" H 3650 4350 50  0001 C CNN
	1    3650 4350
	1    0    0    -1  
$EndComp
Connection ~ 3650 4350
$Comp
L Device:L L1
U 1 1 5C3B5D64
P 5350 4550
F 0 "L1" V 5250 4550 50  0000 C CNN
F 1 "100uH" V 5450 4550 50  0000 C CNN
F 2 "Inductor_SMD:L_6.3x6.3_H3" H 5350 4550 50  0001 C CNN
F 3 "~" H 5350 4550 50  0001 C CNN
F 4 "C10122" V 5350 4550 50  0001 C CNN "Vendor"
	1    5350 4550
	0    1    1    0   
$EndComp
$Comp
L Diode:1N5820 D1
U 1 1 5C3B60E6
P 5100 4700
F 0 "D1" V 5100 4550 50  0000 L CNN
F 1 "1N5817" V 5200 4350 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5100 4525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 5100 4700 50  0001 C CNN
F 4 "C169165" V 5100 4700 50  0001 C CNN "Vendor"
	1    5100 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4550 5100 4550
Wire Wire Line
	5100 4550 5200 4550
Connection ~ 5100 4550
Wire Wire Line
	4500 4850 4500 4750
Wire Wire Line
	5500 4550 5650 4550
$Comp
L Device:CP C2
U 1 1 5C3CBE90
P 5650 4700
F 0 "C2" H 5800 4550 50  0000 L CNN
F 1 "120uF" H 5800 4650 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 5688 4550 50  0001 C CNN
F 3 "~" H 5650 4700 50  0001 C CNN
F 4 "C251018" H 5650 4700 50  0001 C CNN "Vendor"
	1    5650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4550 5650 4350
Wire Wire Line
	5650 4350 5000 4350
Connection ~ 5650 4550
$Comp
L power:+3.3V #PWR0130
U 1 1 5C3CFF48
P 5650 4550
F 0 "#PWR0130" H 5650 4400 50  0001 C CNN
F 1 "+3.3V" V 5665 4678 50  0000 L CNN
F 2 "" H 5650 4550 50  0001 C CNN
F 3 "" H 5650 4550 50  0001 C CNN
	1    5650 4550
	0    1    1    0   
$EndComp
Wire Notes Line
	3100 5300 6150 5300
Wire Notes Line
	6150 5300 6150 2850
Wire Notes Line
	3100 2850 6150 2850
Wire Notes Line
	3100 2850 3100 5300
$Comp
L Regulator_Switching:LM2596S-3.3 U2
U 1 1 5C37E5D2
P 4500 4450
F 0 "U2" H 4500 4817 50  0000 C CNN
F 1 "LM2594M-3.3" H 4500 4726 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4550 4200 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 4500 4450 50  0001 C CNN
F 4 "C316691" H 4500 4450 50  0001 C CNN "Vendor"
	1    4500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4550 4000 4850
Wire Notes Line
	3900 6400 3900 8100
Wire Wire Line
	7350 6600 7350 6200
Wire Wire Line
	6800 6600 6800 6100
Wire Wire Line
	6250 6000 6250 6600
Wire Wire Line
	5350 5900 5350 6600
Wire Wire Line
	4800 6600 4800 5800
Wire Wire Line
	4250 6600 4250 5700
Wire Wire Line
	8850 4600 8850 4900
Wire Wire Line
	8950 4600 8950 4900
Wire Wire Line
	9050 4600 9050 4900
Wire Wire Line
	8350 4600 8350 4900
Wire Wire Line
	6800 6100 8350 6100
Wire Wire Line
	8250 4600 8250 4900
Wire Wire Line
	6250 6000 8250 6000
Wire Wire Line
	4250 5700 7750 5700
Wire Wire Line
	4800 5800 7850 5800
Wire Wire Line
	5350 5900 7950 5900
Wire Wire Line
	9350 4000 9450 4000
Wire Wire Line
	9650 4000 9650 2800
$Comp
L Device:C C7
U 1 1 5C0C060E
P 8600 2800
F 0 "C7" H 8715 2846 50  0000 L CNN
F 1 "0.1uf" H 8715 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8638 2650 50  0001 C CNN
F 3 "~" H 8600 2800 50  0001 C CNN
	1    8600 2800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 2800 9650 2800
Wire Wire Line
	7550 4000 7450 4000
Wire Wire Line
	7300 4000 7300 2800
Wire Wire Line
	7300 2800 8450 2800
$Comp
L ATiny1614:ATTINY1614-SSFR U1
U 1 1 5C2EE801
P 8050 4000
F 0 "U1" V 7383 4400 50  0000 C CNN
F 1 "ATTINY414" V 7474 4400 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" V 7350 4400 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8303-8-bit-AVR-Microcontroller-tinyAVR-ATtiny1634_Datasheet.pdf" H 8050 4000 50  0001 C CNN
F 4 "C189365" V 8050 4000 50  0001 C CNN "Vendor"
	1    8050 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	9450 3900 9450 4000
Connection ~ 9450 4000
Wire Wire Line
	9450 4000 9650 4000
Wire Wire Line
	7450 4100 7450 4000
Connection ~ 7450 4000
Wire Wire Line
	7450 4000 7300 4000
Wire Notes Line
	3900 6400 10100 6400
Wire Notes Line
	3900 8100 10100 8100
NoConn ~ 10150 4650
NoConn ~ 10050 5800
NoConn ~ 9750 5800
Text GLabel 8450 4600 3    50   Input ~ 0
RxD
Wire Wire Line
	7350 6200 8750 6200
Wire Wire Line
	8750 4600 8750 4900
$Comp
L Device:R R1
U 1 1 5C33A52D
P 6400 5050
F 0 "R1" V 6300 5050 50  0000 C CNN
F 1 "10K" V 6500 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 5050 50  0001 C CNN
F 3 "~" H 6400 5050 50  0001 C CNN
F 4 "C103904" V 6400 5050 50  0001 C CNN "Vendor"
	1    6400 5050
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5C33C57D
P 6250 5050
F 0 "#PWR05" H 6250 4900 50  0001 C CNN
F 1 "+3.3V" H 6265 5223 50  0000 C CNN
F 2 "" H 6250 5050 50  0001 C CNN
F 3 "" H 6250 5050 50  0001 C CNN
	1    6250 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4600 7750 4800
Wire Wire Line
	7850 4600 7850 4750
Wire Wire Line
	7950 4600 7950 4700
Wire Wire Line
	3650 4350 3650 4550
Wire Wire Line
	4000 4850 4500 4850
Connection ~ 4000 4850
Connection ~ 4500 4850
Wire Wire Line
	4000 4850 3650 4850
Wire Wire Line
	4500 4850 5100 4850
Connection ~ 5100 4850
Wire Wire Line
	5100 4850 5650 4850
Text GLabel 9950 4650 1    50   Input ~ 0
RxD
$Comp
L Device:R R2
U 1 1 5C354CFD
P 7750 5050
F 0 "R2" H 7650 4900 50  0000 L CNN
F 1 "1K" H 7650 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7680 5050 50  0001 C CNN
F 3 "~" H 7750 5050 50  0001 C CNN
F 4 "C95781" H 7750 5050 50  0001 C CNN "Vendor"
	1    7750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5200 7750 5700
$Comp
L Device:R R3
U 1 1 5C3550B7
P 7850 5050
F 0 "R3" H 7750 4900 50  0000 L CNN
F 1 "1K" H 7750 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7780 5050 50  0001 C CNN
F 3 "~" H 7850 5050 50  0001 C CNN
F 4 "C95781" H 7850 5050 50  0001 C CNN "Vendor"
	1    7850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5200 7850 5800
$Comp
L Device:R R4
U 1 1 5C3550FD
P 7950 5050
F 0 "R4" H 7850 4900 50  0000 L CNN
F 1 "1K" H 7850 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7880 5050 50  0001 C CNN
F 3 "~" H 7950 5050 50  0001 C CNN
F 4 "C95781" H 7950 5050 50  0001 C CNN "Vendor"
	1    7950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5200 7950 5900
$Comp
L Device:R R5
U 1 1 5C355145
P 8250 5050
F 0 "R5" H 8150 4900 50  0000 L CNN
F 1 "1K" H 8150 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8180 5050 50  0001 C CNN
F 3 "~" H 8250 5050 50  0001 C CNN
F 4 "C95781" H 8250 5050 50  0001 C CNN "Vendor"
	1    8250 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5200 8250 6000
$Comp
L Device:R R6
U 1 1 5C355197
P 8350 5050
F 0 "R6" H 8250 4900 50  0000 L CNN
F 1 "1K" H 8250 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8280 5050 50  0001 C CNN
F 3 "~" H 8350 5050 50  0001 C CNN
F 4 "C95781" H 8350 5050 50  0001 C CNN "Vendor"
	1    8350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5200 8350 6100
$Comp
L Device:R R7
U 1 1 5C355253
P 8750 5050
F 0 "R7" H 8650 4900 50  0000 L CNN
F 1 "1K" H 8650 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8680 5050 50  0001 C CNN
F 3 "~" H 8750 5050 50  0001 C CNN
F 4 "C95781" H 8750 5050 50  0001 C CNN "Vendor"
	1    8750 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5200 8750 6200
$Comp
L Device:R R8
U 1 1 5C3552B9
P 8850 5050
F 0 "R8" H 8750 4900 50  0000 L CNN
F 1 "1K" H 8750 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8780 5050 50  0001 C CNN
F 3 "~" H 8850 5050 50  0001 C CNN
F 4 "C95781" H 8850 5050 50  0001 C CNN "Vendor"
	1    8850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5200 8850 6450
$Comp
L Device:R R9
U 1 1 5C35530D
P 8950 5050
F 0 "R9" H 8850 4900 50  0000 L CNN
F 1 "1K" H 8850 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8880 5050 50  0001 C CNN
F 3 "~" H 8950 5050 50  0001 C CNN
F 4 "C95781" H 8950 5050 50  0001 C CNN "Vendor"
	1    8950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5200 8950 6600
$Comp
L Device:R R10
U 1 1 5C35535F
P 9050 5050
F 0 "R10" H 8950 4900 50  0000 L CNN
F 1 "1K" H 8950 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8980 5050 50  0001 C CNN
F 3 "~" H 9050 5050 50  0001 C CNN
F 4 "C95781" H 9050 5050 50  0001 C CNN "Vendor"
	1    9050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5200 9050 6450
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5C35FAF2
P 6550 4250
F 0 "J2" V 6610 4391 50  0000 L CNN
F 1 "Programm header" V 6701 4391 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 6550 4250 50  0001 C CNN
F 3 "~" H 6550 4250 50  0001 C CNN
	1    6550 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 4600 8050 4650
Wire Wire Line
	8050 4650 6650 4650
Wire Wire Line
	6650 4650 6650 4450
Wire Wire Line
	6550 4450 6550 4700
Wire Wire Line
	6550 4700 7950 4700
Connection ~ 7950 4700
Wire Wire Line
	7950 4700 7950 4900
Wire Wire Line
	7850 4750 6450 4750
Wire Wire Line
	6450 4750 6450 4450
Connection ~ 7850 4750
Wire Wire Line
	7850 4750 7850 4900
Wire Wire Line
	6350 4450 6350 4800
Wire Wire Line
	6350 4800 7750 4800
Connection ~ 7750 4800
Wire Wire Line
	7750 4800 7750 4900
Wire Wire Line
	6650 4650 6650 5050
Wire Wire Line
	6650 5050 6550 5050
Connection ~ 6650 4650
$EndSCHEMATC