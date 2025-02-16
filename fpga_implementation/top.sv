`include "uart_trx.sv"
`include "array.sv"

module top (
  // outputs
  output logic led_red,  // Red LED
  output logic led_blue, // Blue LED
  output logic led_green, // Green LED
  output logic uarttx,   // UART Transmission pin
  input logic hw_clk     // External clock input
);

  logic int_osc;
  logic [27:0] frequency_counter_i;

  // 9600 Hz clock generation (from 12 MHz)
  logic clk_9600;
  logic [31:0] cntr_9600;
  parameter period_9600 = 625;

  // Instantiate the array module
  logic [7:0] L1_outstream_a0;  // Declare the array of 8-bit elements
  logic [5:0] count;             // Count output from the array module
  array array_inst (
      .clk(clk_960),
      .out1(L1_outstream_a0),
      .counter(count)
  );

  // Instantiate the UART transmitter
  uart_tx_8n1 DanUART (
      .clk(clk_9600),
      .txbyte(L1_outstream_a0),  // Send outstream[0] byte
      .senddata(1'b1),  // Triggered by frequency_counter_i[24]
      .tx(uarttx)
  );

  // Internal Oscillator (12 MHz)
  SB_HFOSC #(.CLKHF_DIV ("0b10")) u_SB_HFOSC (
    .CLKHFPU(1'b1),
    .CLKHFEN(1'b1),
    .CLKHF(int_osc)
  );

  // Counter for 9600 Hz clock
  always_ff @(posedge int_osc) begin
    frequency_counter_i <= frequency_counter_i + 1;
    cntr_9600 <= cntr_9600 + 1;
    if (cntr_9600 == period_9600) begin
        clk_9600 <= ~clk_9600;
        cntr_9600 <= 32'b0;
    end
  end
  
  always_ff @(posedge clk_9600) begin
    cnt<=cnt+1;
    if (cnt == 5) begin
        clk_960 <= ~clk_960;
        cnt <= 4'b0;
    end
  end
  reg clk_960;
  reg [3:0] cnt;

  // RGB LED Driver (Optional)
  SB_RGBA_DRV RGB_DRIVER (
    .RGBLEDEN(1'b1),
    .RGB0PWM(frequency_counter_i[24] & frequency_counter_i[23]),
    .RGB1PWM(frequency_counter_i[24] & ~frequency_counter_i[23]),
    .RGB2PWM(~frequency_counter_i[24] & frequency_counter_i[23]),
    .CURREN(1'b1),
    .RGB0(led_green),
    .RGB1(led_blue),
    .RGB2(led_red)
  );
  defparam RGB_DRIVER.RGB0_CURRENT = "0b000001";
  defparam RGB_DRIVER.RGB1_CURRENT = "0b000001";
  defparam RGB_DRIVER.RGB2_CURRENT = "0b000001";

endmodule

