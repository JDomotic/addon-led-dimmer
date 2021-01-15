/*
 * GccApplication1.c
 *
 * Created: 20-1-2019 15:04:12
 * Author : atmel
 */				
#define F_CPU 10000000UL
#define BAUD_RATE 115200
#define USART0_BAUD_RATE ((float)F_CPU * 64) / (16 * (float)BAUD_RATE)

#define LED_OUTPUT_SCALE 10000UL

#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

// UART methods
int8_t USART_init();
uint8_t USART_read();
void USART_write(const uint8_t data);
void printString(const char myString[]);

const uint8_t gamme8[256] = {
	128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128, 128,
	129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129, 129,
	130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130, 130,
	131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131,
	132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132, 132,
	133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134,
	135, 135, 135, 135, 135, 135, 135, 135, 135, 135, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136,
	137, 137, 137, 137, 137, 137, 137, 137, 137, 137, 138, 138, 138, 138, 138, 138, 138, 138, 138, 138,
	139, 139, 139, 139, 139, 139, 140, 140, 140, 140, 140, 140, 141, 141, 141, 141, 141, 141, 141, 141,
	142, 142, 142, 142, 143, 143, 143, 143, 143, 144, 144, 144, 144, 144, 145, 145, 145, 145, 145, 145,
	146, 146, 146, 147, 147, 147, 148, 148, 148, 149, 149, 149, 150, 150, 150, 151, 151, 151, 152, 152,
	152, 153, 153, 153, 154, 154, 154, 155, 155, 155, 156, 156, 156, 157, 157, 158, 158, 159, 159, 160,
	160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175
};

typedef struct tick_value {uint8_t tick; uint8_t LEDS_PORTA; uint8_t LEDS_PORTB;} tick_value;
tick_value port_output_values_0[10] = {0};
tick_value port_output_values_1[10] = {0};
tick_value *port_output_values = port_output_values_0;
uint8_t current_port_values = 0;

uint8_t port_output_value_index = 0;
uint8_t current_tick = 0;

uint8_t wanted_led_output_values[12];
long led_output_values[9] = {0};
	
uint8_t uart_led_channel = 0;
bool recalculate_port_output_values = false;

///
/// Timer A for software PWM
///
ISR(TCA0_OVF_vect){
	current_tick++;

	//Set top based on gamma correction 
	TCA0_SINGLE_PER = gamme8[current_tick];
	
	if(current_tick == 0){
		port_output_value_index = 0;
		// Set correct output buffer
		if(current_port_values == 0){
			port_output_values = port_output_values_0;
		}else{
			port_output_values = port_output_values_1;
		}
	}
	
	if(current_tick == port_output_values[port_output_value_index].tick){
		PORTA_OUT = port_output_values[port_output_value_index].LEDS_PORTA; 
		PORTB_OUT = port_output_values[port_output_value_index].LEDS_PORTB;
		++port_output_value_index; 
	}

	// Clear interrupt flag
	TCA0_SINGLE_INTFLAGS = 0b00000001; 
} 

///
/// Timer B for UART package timeout check
///
ISR(TCB0_INT_vect){
	// Timeout between UART package occurs. Reset channel
	uart_led_channel = 0;
	// Disable
	TCB0_CTRLA = 0b00000010;
	// Clear interrupt flag
	TCB0_INTFLAGS = 0b00000001;
	// Write 'out of sync' package
	USART_write('O');
}

///
/// UART methods
///
ISR(USART0_RXC_vect){
	wanted_led_output_values[uart_led_channel] =  USART0.RXDATAL;
	
	// Update package is done, so reset the UART package channel to 0
	if(uart_led_channel == 12){
		uart_led_channel = 0;
		
		recalculate_port_output_values = true;
		
		// Disable package timeout timer
		TCB0.CNT = 0;
		TCB0_CTRLA = 0b00000010;
	} else{
		uart_led_channel++;
		
		// Enable package timeout timer.
		TCB0.CNT = 0;
		TCB0_CTRLA = 0b00000011;
	}
}

int8_t USART_init(){
	int8_t sigrow_val = SIGROW.OSC20ERR3V; // read signed error
	int32_t baud_reg_val = USART0_BAUD_RATE;
	baud_reg_val *= (1024 + sigrow_val); // sum resolution + error
	baud_reg_val /= 1024; // divide by resolution
	USART0.BAUD = (int16_t) baud_reg_val;
	
	// Enable receive interrupt 
	USART0.CTRLA = 0b10000000;
  
	USART0.CTRLB = 0 << USART_MPCM_bp       /* Multi-processor Communication Mode: disabled */
	| 0 << USART_ODME_bp     /* Open Drain Mode Enable: disabled */
	| 1 << USART_RXEN_bp     /* Receiver enable: enabled */
	| USART_RXMODE_NORMAL_gc /* Normal mode */
	| 0 << USART_SFDEN_bp    /* Start Frame Detection Enable: disabled */
	| 1 << USART_TXEN_bp;    /* Transmitter Enable: enabled */

	USART0.CTRLC = USART_CMODE_ASYNCHRONOUS_gc /* Asynchronous Mode */
	| USART_CHSIZE_8BIT_gc /* Character size: 8 bit */
	| USART_PMODE_DISABLED_gc /* No Parity */
	| USART_SBMODE_1BIT_gc; /* 1 stop bit */

	return 0;
}

uint8_t USART_read()
{
	while (!(USART0.STATUS & USART_RXCIF_bm));
	return USART0.RXDATAL;
}

void USART_write(const uint8_t data)
{
	while (!(USART0.STATUS & USART_DREIF_bm));
	USART0.TXDATAL = data;
}

void printString(const char myString[]) {
	uint8_t i = 0;
	while (myString[i]) {
		USART_write(myString[i]);
		i++;
	}
}


void calculate_steps(){
	uint8_t tmp;
	uint8_t steps[10];
	uint8_t output_values[9];
	
	tick_value *tmp_output;
	if(current_port_values == 0){
		tmp_output = port_output_values_1;
	}else{
		tmp_output = port_output_values_0;
	}
	
	// Copy led output values and convert them to uint8		
	steps[0] = 0;
	for(uint8_t i = 1; i < 10; i++){
		output_values[i-1] = ((led_output_values[i-1]) / LED_OUTPUT_SCALE);
		steps[i] = output_values[i-1];
	}
	
	// Sort steps
	for(uint8_t i = 1; i < 10; i++){
		for(uint8_t j = 1; j < (10-i-1); j++){
			if (steps[j] > steps[j + 1]){
				tmp = steps[j];
				steps[j] = steps[j + 1];
				steps[j + 1] = tmp;
			}
		}
	}
	
	tmp_output[0].tick = 0;
	tmp_output[0].LEDS_PORTB =	((output_values[1] > 0) << 1) | (output_values[2] > 0);
	tmp_output[0].LEDS_PORTA =	((output_values[0] > 0) << 7) |
								((output_values[5] > 0) << 6) | ((output_values[4] > 0) << 5) | ((output_values[3] > 0) << 4) |
								((output_values[8] > 0) << 3) | ((output_values[7] > 0) << 2) | ((output_values[6] > 0) << 1);
	
	uint8_t index = 0;

	for(uint8_t i = 1; i < 10; i++){
		// Skip if step is the same as previous one
		if(steps[i] != steps[i - 1]){
			index++;
			tmp_output[index].tick = steps[i];
			tmp_output[index].LEDS_PORTB =	((output_values[1] > steps[i]) << 1) | (output_values[2] > steps[i]);
			tmp_output[index].LEDS_PORTA =	((output_values[0] > steps[i]) << 7) |
											((output_values[5] > steps[i]) << 6) | ((output_values[4] > steps[i]) << 5) | ((output_values[3] > steps[i]) << 4) |
											((output_values[8] > steps[i]) << 3) | ((output_values[7] > steps[i]) << 2) | ((output_values[6] > steps[i]) << 1);
		}
	}
	
	// Set other values back to zero
	for(++index; index < 10; index++){
		tmp_output[index].tick = 0;
	}
	
	// Switch output buffer
	current_port_values = !current_port_values;
}


int main(void)
{
	///
	/// CPU clock settings
	///
	
	// Disable change protection
	CPU_CCP = 0xD8;
	
	// Set main pre-scaler division to 2 (so 20mhz / 2 = 10mhz)
	CLKCTRL_MCLKCTRLB = 0b00000001;
	
	// Lock the registers again
	CLKCTRL_MCLKLOCK = 1;
	
	// Set TX pin high
	PORTB_OUT = 0b00000100;
	
	// PB0 and PB1 output, RX and TX as output
	PORTB_DIR = 0b00000111;
	// PA1 - PA7 output
	PORTA_DIR = 0b11111110;
	
	USART_init();	
	
	///
	/// Timer A for software PWM
	///
	
	// Timer A top 128
	TCA0_SINGLE_PER = 128; 
	// Enable timer A and set division to 2
	TCA0_SINGLE_CTRLA = 0b00000001;
	// Enable overflow interrupt
	TCA0_SINGLE_INTCTRL = 0b00000001; 
	
	///
	/// Timer B for UART package timeout check
	///
	
	// Set tcb0 top
	TCB0.CCMP = 0xffff;
	// Set to timeout check mode
	TCB0_CTRLB = 0b00000000;
	// Enable interrupt
	TCB0.INTCTRL = 0b00000001;
	
	// Enable all interrupt
	sei();
	
	uint8_t i;
	uint8_t fade_channel;
	
	long led_output_fade_steps_values[9] = {0};
	int led_output_fade_steps[9] = {0};
	bool need_to_recalculate = false;
	
	while(1){
		if(recalculate_port_output_values){
			recalculate_port_output_values = false;
			
			// Calculate the fade steps
			fade_channel = 9;
			for(i = 0; i < 9; i++){
				// Next led strip, so we use the next fade speed channel
				if(i % 3 == 0)
					fade_channel++;
				
				long scaled_value = (wanted_led_output_values[i] * LED_OUTPUT_SCALE);
				long step_value =  (scaled_value - led_output_values[i]) /  wanted_led_output_values[fade_channel];
				
				led_output_fade_steps_values[i] = step_value;
				
				led_output_fade_steps[i] = wanted_led_output_values[fade_channel];
			}
			continue;
		}
		need_to_recalculate = false;
		for(i = 0; i < 9; i++){
			if(led_output_fade_steps[i] != 0){
				led_output_fade_steps[i]--;
				led_output_values[i] += led_output_fade_steps_values[i];
				need_to_recalculate = true;
			}
		}
		if(need_to_recalculate)
			calculate_steps();
		continue;
	}
}


