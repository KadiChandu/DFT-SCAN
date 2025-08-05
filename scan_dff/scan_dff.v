module scan_dff (
    input clk,
    input reset,
    input scan_en,
    input scan_in,
    input d,
    output reg q,
    output wire scan_out );
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else if (scan_en)
            q <= scan_in;
        else
            q <= d;
    end
    assign scan_out = q;
endmodule
