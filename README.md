# Frequency_divider_using_2-n_T-Flip_Flop_with_FPGA
A configurable frequency divider circuit that divides an input clock frequency by 2^N, where N is the number of cascaded T flip-flops. Implemented in VHDL with hardware validation on the Nexys 4 DDR FPGA board.
This project implements a ripple counter-based frequency divider using T flip-flops in cascade. Each flip-flop divides the frequency by 2, providing output frequencies of f/2, f/4, f/8, etc., making it useful for clock generation and timing applications.
Features
- Design: Configurable number of flip-flops (N parameter)
- Cascaded T flip-flop
- Multiple divided clock outputs: f/2, f/4, f/8, ..., f/2^N
- Synthesizable VHDL code optimized for Xilinx FPGAs
- Tested on Nexys 4 DDR 
 Hardware Requirements
- **FPGA Board:** Nexys 4 DDR 
- **Tools:** Xilinx Vivado Design Suite
- **Clock Source:** 100 MHz onboard oscillator
