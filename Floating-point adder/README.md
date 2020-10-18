# Floating-Point Adder
This directory contains the 32-bit IEEE-754 compliant floating-point adder. The design is a fully combinational circuit, i.e. it is not pipelined.

There are also files for the verification of the design. The .cpp file is a test bench generator. It outputs two files: a testbench file to simulate the design and a text file for  the expected result of each test case. The design is simulated in an HDL simulator, the outputs are converted into a .csv file. Finally, the outputs from the design are compared against the expected results in MATLAB.

The generated testbench contains 100,000 random test cases. The design succesfully passed this test, outputting correct results in each case. One can freely replicate this process with the files in the repository.

Last but not least, there is also a diagram in the form of a .pdf file. This diagram illustrates the floating-point addition algorithm.
