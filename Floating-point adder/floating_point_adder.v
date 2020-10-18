//32-bit IEEE-754 compliant floating-point adder.
//Written by Yavuz Selim Tozlu

`timescale 1ns/10ps

module fpa(opa, opb, result);

input [31:0] opa, opb;
output reg [31:0] result;

reg [31:0] large_op;
reg [31:0] small_op;

wire large_sign, small_sign;
wire [7:0] large_exp;
wire [7:0] small_exp;
wire [22:0] large_mantis;
wire [22:0] small_mantis;

wire [23:0] norm_large_mantis;
wire [23:0] norm_small_mantis;
wire [23:0] shifted_mantis;
wire [26:0] guarded_mantis;
wire [26:0] signed_mantis;
wire [27:0] mantis_sum; 
reg  [26:0] aligned_sum;

wire [7:0] exp_dif;
wire guard, round, sticky;


assign {large_sign, large_exp, large_mantis} = large_op;
assign {small_sign, small_exp, small_mantis} = small_op;

assign norm_large_mantis = {1'b1,large_mantis};
assign norm_small_mantis = {1'b1,small_mantis};

assign exp_dif = large_exp - small_exp;

assign shifted_mantis = norm_small_mantis >> exp_dif;

assign guard = (exp_dif < 25 && exp_dif > 0) ? norm_small_mantis[exp_dif - 5'b1] : 1'b0 ;
assign round = (exp_dif < 26 && exp_dif > 1) ? norm_small_mantis[exp_dif - 5'b10] : 1'b0;
assign sticky = (norm_small_mantis << (26 - exp_dif)) ? 1'b1 : 1'b0;
assign guarded_mantis = {shifted_mantis, guard, round, sticky};

assign signed_mantis = (large_sign != small_sign) ? (~(guarded_mantis) + 27'b1) : guarded_mantis;

assign mantis_sum = signed_mantis + {norm_large_mantis,3'b0};

reg [4:0] leading;
reg [15:0] val16;
reg [7:0] val8;
reg [3:0] val4;
reg [4:0] actual_leading;

always @(*)
begin
	if(large_sign != small_sign)
	begin
		leading[4] <= ({5'b0,mantis_sum[26:16]} == 16'b0);
		val16 <= leading[4] ? mantis_sum[15:0] : {5'b0,mantis_sum[26:16]};
		leading[3] <= (val16[15:8] == 8'b0);
		val8 <= leading[3] ? val16[7:0] : val16[15:8];
		leading[2] <= (val8[7:4] == 4'b0);
		val4 <= leading[2] ? val8[3:0] : val8[7:4];
		leading[1] <= val4[3:2] == 2'b0;
		leading[0] <= leading[1] ? ~val4[1] : ~val4[3];
		actual_leading <= (leading > 5'b101) ? leading - 5'b101 : 5'b0;
		
		aligned_sum <= mantis_sum[26:0] << actual_leading;
		
		
		if(aligned_sum[2:0] > 3'b100)
			result[22:0] <= aligned_sum[25:3] + 23'b1;
			
		else if(aligned_sum[2:0] == 3'b100)
			result[22:0] <= aligned_sum[3] ? aligned_sum[25:3] + 23'b1 : aligned_sum[25:3];
		else
			result[22:0] <= aligned_sum[25:3];
		
		result[30:23] <= large_exp - actual_leading;
	end
	
	else
	begin
		if(mantis_sum[27])
		begin
			if(mantis_sum[3:0] > 4'b1000)
				result[22:0] <= mantis_sum[26:4] + 23'b1;
				
			else if(mantis_sum[3:0] == 4'b1000)
				result[22:0] <= mantis_sum[4] ? mantis_sum[26:4] + 23'b1 : mantis_sum[26:4];
			else
				result[22:0] <= mantis_sum[26:4];
				
			result[30:23] <= large_exp + 8'b1;
		end
		else
		begin
			if(mantis_sum[2:0] > 3'b100)
				result[22:0] <= mantis_sum[25:3] + 23'b1;
			else if(mantis_sum[2:0] == 3'b100)
				result[22:0] <= mantis_sum[3] ? mantis_sum[25:3] + 23'b1 : mantis_sum[25:3];
			else
				result[22:0] <= mantis_sum[25:3];
				
			result[30:23] <= large_exp;
		end
		aligned_sum <= 27'b0;
		leading <= 5'b0;
		actual_leading <= 5'b0;
		val16 <= 16'b0;
		val8 <= 8'b0;
		val4 <= 4'b0;
	end
	
	result[31] <= large_sign;
end


always @(*) 
begin
	if(opa[30:23] > opb[30:23])
	begin
		large_op <= opa;
		small_op <= opb;
	end
	
	else if(opa[30:23] == opb[30:23])
	begin
		if(opa[22:0] >= opb[22:0])
		begin
			large_op <= opa;
			small_op <= opb;
		end
		else
		begin
			large_op <= opb;
			small_op <= opa;		
		end
	end
	else
	begin
		large_op <= opb;
		small_op <= opa;
	end
end
endmodule
