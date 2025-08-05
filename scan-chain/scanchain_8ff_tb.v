module scan_chain_8ff_tb;
    reg clk;
    reg rst;
    reg scan_en;
    reg scan_in;
    wire [7:0] q_out;
    wire scan_out;
    scan_chain_8ff uut (
        .clk(clk),
        .rst(rst),
        .scan_en(scan_en),
        .scan_in(scan_in),
        .q_out(q_out),
      .scan_out(scan_out) );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1; scan_en = 0; scan_in = 0;
        #12 rst = 0;
        scan_en = 1;
        // Scan in 8'b11010101
        scan_in = 1; #10;
        scan_in = 1; #10;
        scan_in = 0; #10;
        scan_in = 1; #10;
        scan_in = 0; #10;
        scan_in = 1; #10;
        scan_in = 0; #10;
        scan_in = 1; #10;
        scan_en = 0;
        #20;
        $finish;
    end

endmodule
