module scan_dff_tb;
    reg clk;
    reg reset;
    reg scan_en;
    reg scan_in;
    reg d;
    wire q;
    wire scan_out;
    scan_dff uut (
        .clk(clk),
        .reset(reset),
        .scan_en(scan_en),
        .scan_in(scan_in),
        .d(d),
        .q(q),
      .scan_out(scan_out) );
    always #5 clk = ~clk;
    initial begin
        clk = 0; reset = 1; scan_en = 0; scan_in = 0; d = 0;
        #10 reset = 0;
        d = 1; scan_en = 0; #10;
        d = 0; #10;
        scan_en = 1; scan_in = 1; #10;
        scan_in = 0; #10;
        scan_en = 0; d = 1; #10;
        $finish;
    end
endmodule
