//Fixed-point accumulator. Input and output formats can be defined arbitrarily via the parameters.
//Written by Yavuz Selim Tozlu

`timescale 1ns / 10ps

module fxp_acc(data_in, clk, rst, data_out, overflow);
parameter wl_in = 32; //input wordlength
parameter scale_in = 5; //input fraction length
parameter wl_out = 32; //output wordlength
parameter scale_out = 3; //output fraction length

parameter big_scale = scale_in > scale_out ? scale_in : scale_out; //bigger of two fraction lengths
parameter small_scale = scale_in < scale_out ? scale_in : scale_out; //smaller of two fraction lengths
parameter big_int = ((wl_in - scale_in) > (wl_out - scale_out)) ? (wl_in - scale_in) : (wl_out - scale_out); //bigger of two integer lengths
parameter small_int = ((wl_in - scale_in) < (wl_out - scale_out)) ? (wl_in - scale_in) : (wl_out - scale_out); //smaller of two integer lengths
parameter up_bnd = scale_in-scale_out > 1 ? scale_in-scale_out-1 : 0; //upper-bound, necessary to avoid errors during elaboration stage.

input [wl_in-1:0] data_in;
input clk, rst;
output reg [wl_out-1:0] data_out; 
output reg overflow;

reg [wl_out-1:0] data_out_in; //feedback of the output signal

wire [scale_out-1:0] frac_in; //truncated fraction of the input
wire [scale_out:0] frac_sum; //sum of input and output fractions
reg  [scale_out:0] rounded_frac_sum; // rounded fraction sum
wire [big_int:0] integ_sum; //integer sum

wire [1:0] round; //round bits. if round < 10, round down. if round == 10 round to an even number. if round > 10, round up. BUG: the LSB bit should have been a sticky bit!!!


assign frac_in = (scale_in >= scale_out) ? data_in[scale_in-1:scale_in-scale_out] :  {data_in[scale_in:0],{(scale_out-scale_in){1'b0}}};

assign round[1] = (scale_in-scale_out > 0) ? data_in[scale_in - scale_out - 1] : 1'b0;
assign round[0] = (scale_in-scale_out > 1) ? (data_in[up_bnd : 0] > 0 ? 1'b1 : 1'b0) : 1'b0; //sticky bit

assign frac_sum = {1'b0,frac_in} + {1'b0,(data_out_in[scale_out-1:0])};

always @(*) //do rounding in this always block
begin
	if(round > 2'b10) //round up
		rounded_frac_sum <= frac_sum + 1'b1;
	else if(round == 2'b10) //round to even
		rounded_frac_sum <= frac_sum[0] ? frac_sum + 1'b1 : frac_sum;
	else //round down
		rounded_frac_sum <= frac_sum;
end

assign integ_sum = (data_in >> scale_in) + (data_out_in >> scale_out) + rounded_frac_sum[small_scale];


always @(posedge clk) //clock the accumulated sum to the output
begin
    if(!rst)
    begin
        data_out <= 0;
        data_out_in <= 0;
        overflow <= 0;
    end
    else
    begin
        if(integ_sum[big_int:(wl_out-scale_out)] != {(wl_out-scale_out+1){1'b0}} ) //check if overflow occured
        begin
            data_out <= ~0; 
            data_out_in <= ~0;
            overflow <= 1'b1;
        end
        else
        begin //clock the output
            data_out <= {integ_sum[wl_out-scale_out:0],rounded_frac_sum[scale_out-1:0]};
            data_out_in <= {integ_sum[wl_out-scale_out:0],rounded_frac_sum[scale_out-1:0]};
        end
    end
end
endmodule


