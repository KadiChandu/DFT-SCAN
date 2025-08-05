module scan_fsm_tb;
    reg clk = 0, reset = 0, in = 0, scan_en = 0, scan_in = 0;
    wire scan_out;
    wire [1:0] state_out;
    fsm_scan uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .scan_en(scan_en),
        .scan_in(scan_in),
        .scan_out(scan_out),
        .state_out(state_out) );
    always #5 clk = ~clk;
    initial begin
        scan_en = 0;
        in = 0; #10;
        in = 1; #10;
        in = 1; #10;
        in = 1; #10;
      
        scan_en = 1;
        scan_in = 0; #10;
        scan_in = 1; #10;
        scan_en = 0;
        $finish;
    end
endmodule
