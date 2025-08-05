module scan_dff (
    input clk,
    input d,
    input scan_in,
    input scan_en,
    output reg q );
    always @(posedge clk) begin
        if (scan_en)
            q <= scan_in;
        else
            q <= d;
    end
endmodule
