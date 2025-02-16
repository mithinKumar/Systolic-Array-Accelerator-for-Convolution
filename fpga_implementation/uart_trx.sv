module uart_tx_8n1 (
    input logic clk,        // input clock
    input logic [7:0] txbyte,     // outgoing byte
    input logic senddata,   // trigger tx
    output logic txdone,     // outgoing byte sent
    output logic tx          // tx wire
);

    /* Parameters */
    typedef enum logic [1:0] {
        STATE_IDLE = 2'b00,
        STATE_STARTTX = 2'b01,
        STATE_TXING = 2'b10,
        STATE_TXDONE = 2'b11
    } state_t;

    /* State variables */
    state_t state = STATE_IDLE;
    logic [7:0] buf_tx = 8'b0;
    logic [7:0] bits_sent = 8'b0;
    logic txbit = 1'b1;

    /* Wiring */
    assign tx = txbit;

    always_ff @(posedge clk) begin
        // start sending?
        if (senddata && (state == STATE_IDLE)) begin
            state <= STATE_STARTTX;
            buf_tx <= txbyte;
            txdone <= 1'b0;
        end else if (state == STATE_IDLE) begin
            // idle at high
            txbit <= 1'b1;
            txdone <= 1'b0;
        end

        // send start bit (low)
        if (state == STATE_STARTTX) begin
            txbit <= 1'b0;
            state <= STATE_TXING;
        end

        // clock data out
        if (state == STATE_TXING && bits_sent < 8) begin
            txbit <= buf_tx[0];
            buf_tx <= buf_tx >> 1;
            bits_sent <= bits_sent + 1;
        end else if (state == STATE_TXING) begin
            // send stop bit (high)
            txbit <= 1'b1;
            bits_sent <= 8'b0;
            state <= STATE_TXDONE;
        end

        // tx done
        if (state == STATE_TXDONE) begin
            txdone <= 1'b1;
            state <= STATE_IDLE;
        end
    end

endmodule

