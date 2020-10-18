# Fixed-Point Accumulator

This directory contains a fixed-point accumulator of arbitrary format. The design is heavily parameterized to be flexible and adaptable. Arbitrary fixed-point formats can be specified. In cases where rounding is necessary, i.e. when the output fraction is smaller than input fraction, the accumulator rounds the result to an even number after each addition operation. There is a generated testbench in the directory which accumulates 900 fixed-point numbers in 32.5 format. You can also find the MATLAB script that performs the equivalence check of the output.

In the directory, as examples, you can find three different error plots for three different parameter settings.

|Case 1. Input: 32.5 -- Output: 32.5|
|---|
|<img src="https://github.com/yavuz650/Internship_Designs/blob/master/Fixed-point%20accumulator/error_plot1.jpg" width="550">|

There is no error in the first case, as expected.

|Case 2. Input: 32.5 -- Output: 32.4|
|---|
|<img src="https://github.com/yavuz650/Internship_Designs/blob/master/Fixed-point%20accumulator/error_plot2.jpg" width="550">|

There is an increasing amount of error in the second case due to precision loss.

|Case 3. Input: 32.5 -- Output: 32.3|
|---|
|<img src="https://github.com/yavuz650/Internship_Designs/blob/master/Fixed-point%20accumulator/error_plot3.jpg" width="550">|

There is a significant amount of error accumulating in the third case due to precision loss.

You can find the generated outputs for each case in the directory, and compare them with the expected results to see the errors yourself. 
