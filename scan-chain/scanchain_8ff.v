module scan_chain_8ff (
    input clk,
    input rst,
    input scan_en,
    input scan_in,
    output [7:0] q_out,
    output scan_out );
    reg [7:0] q;
    assign q_out = q;
    assign scan_out = q[7];
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 8'b00000000;
        else if (scan_en)
            q <= {q[6:0], scan_in}; // left shifting
    end
endmodule
