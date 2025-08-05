module scan_fsm (
    input clk,
    input reset,
    input in,
    input scan_en,
    input scan_in,
    output scan_out,
    output [1:0] state_out );
    parameter IDLE = 2'b00, LOAD = 2'b01, DONE = 2'b10;
    reg [1:0] next_state;
    wire [1:0] state;
    scan_dff dff0 (.clk(clk), .d(next_state[0]), .scan_in(scan_in), .scan_en(scan_en), .q(state[0]));
    scan_dff dff1 (.clk(clk), .d(next_state[1]), .scan_in(state[0]), .scan_en(scan_en), .q(state[1]));
    assign scan_out = state[1];
    assign state_out = state;
    always @(*) begin
        case (state)
            IDLE:  next_state = in ? LOAD : IDLE;
            LOAD:  next_state = in ? DONE : LOAD;
            DONE:  next_state = in ? IDLE : DONE;
            default: next_state = IDLE;
        endcase
    end
endmodule
