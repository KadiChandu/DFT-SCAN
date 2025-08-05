# Scan Chain - 8 Flip-Flops
This project demonstrates a *scan chain of 8 flip-flops* implemented in Verilog. It can be used in Design-for-Testability (DFT) concepts such as scan testing.
## Files
- scanchain_8ff.v: Main design file containing the scan chain logic.
- scanchain_8ff_tb.v: Testbench that simulates scan-in of 8-bit data.
## Testbench Behavior
- Clock: 10 ns period
- Scan data: 8'b11010101 shifted in
- Output q_out should reflect the scan sequence
