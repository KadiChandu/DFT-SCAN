# FSM with Scan Chain
This implements a 3-state FSM (IDLE → LOAD → DONE) using scan flip-flops with a more readable FSM structure. This is ideal for understanding scan integration in control logic.
## Files
- scan_dff.v: Scan-enabled D Flip-Flop
- scan_fsm.v: FSM using scanable flip-flops and clear state encoding
- scan_fsm_tb.v: Functional + scan mode testing
## How It Works
- State transitions based on input
- Flip-flops can be controlled in scan_en mode to shift values serially
- Example: Load 2-bit value into FSM using scan chain
