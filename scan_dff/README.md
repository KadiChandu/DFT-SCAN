# Scan D Flip-Flop (scan_dff)
This module implements a *Scan-enabled D Flip-Flop* in Verilog. It supports both normal operation and scan operation for Design-for-Testability (DFT).
## Files
- scan_dff.v: RTL design of scan DFF
- scan_dff_tb.v: Testbench to verify scan and functional behavior
## Functionality
- When scan_en = 0, DFF captures normal input d at rising edge.
- When scan_en = 1, DFF captures scan_in (used during scan shift).
- reset is asynchronous and clears the output to 0.
- scan_out is simply q, for chaining in scan chains.
