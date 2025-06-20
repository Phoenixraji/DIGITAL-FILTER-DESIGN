# DIGITAL-FILTER-DESIGN

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: RAJALAKSHMI C  

*INTERN ID*: CT4MVRK

*DOMAIN*: VLSI

*DURATION*: 4 MONTHS

*MENTOR*: NEELA SANTHOSH

**DESCRIPTION**:

Description of FIR Filter Design and Simulation

As part of the CodTech VLSI Internship, Task 4 involved the design and simulation of a Finite Impulse Response (FIR) digital filter using Verilog. FIR filters are essential components in digital signal processing (DSP) used to smooth signals, eliminate noise, and shape frequency responses.

🔧 Design Overview
The FIR filter designed here is a 3-tap filter with the equation:

markdown
Copy
Edit
y[n] = h0*x[n] + h1*x[n-1] + h2*x[n-2]
x[n] is the current input sample.
h0, h1, and h2 are the filter coefficients.
y[n] is the output.

In this design:
h0 = 1, h1 = 2, and h2 = 1 — a simple symmetric low-pass filter.
Input x_in is 8-bit wide.
Output y_out is 16-bit wide to accommodate the sum of products.
Three 8-bit shift registers (x_reg0, x_reg1, x_reg2) store the current and two previous input samples to compute the filter output on every rising clock edge.

🧪 Testbench Functionality
The testbench tb_fir_filter drives the FIR filter module:
It toggles the clock every 5ns (#5 delay).
It resets the filter, then applies a sequence of input samples: 10, 20, 30, 0, 5.
The expected output is the weighted sum of the last three inputs on each clock edge.

The waveform generation commands:
verilog
Copy
Edit
$dumpfile("fir.vcd");
$dumpvars(0, tb_fir_filter);
enable visual inspection of the signal transitions using a waveform viewer like EPWave or GTKWave.

🧠 Output Behavior
The output y_out follows the FIR equation. For example:
After inputting: x[0] = 10 → y = 1*10 + 2*0 + 1*0 = 10
Then: x[1] = 20 → y = 1*20 + 2*10 + 1*0 = 40
Then: x[2] = 30 → y = 1*30 + 2*20 + 1*10 = 80
Each new sample pushes older values through the shift registers, mimicking real-time digital filtering behavior.

🛠 Tools Used
The FIR filter and testbench were simulated using EDA Playground with the Icarus Verilog simulator. The platform allows:
Verilog code editing and execution in the browser
Visual waveform analysis using EPWave
Fast validation of logic designs without installing local tools

✅ Conclusion
This task effectively demonstrated the implementation and simulation of a basic FIR filter using Verilog HDL. The filter uses a pipelined shift register structure, multiply-and-accumulate logic, and clocked behavior — all fundamental to DSP systems. The simulation confirmed correct functionality and helped visualize the time-based filtering effect, reinforcing concepts of signal sampling, weighting, and digital delay lines.

**OUTPUT**
![Image](https://github.com/user-attachments/assets/6fc41970-f897-46c2-a662-0b6665e37840)[](url)
