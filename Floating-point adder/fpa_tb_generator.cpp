//Testbench generator for the floating-point adder. Creates 100,000 random test cases. Also writes the expected outputs for equivalence check afterwards.
//Written by Yavuz Selim Tozlu

#include <iostream>
#include <fstream>
#include <random>
int main()
{
	std::cout 
	<< "`timescale 1ns/10ps\n\n"
	<< "module fpa_tb();\n\n"
	<< "reg [31:0] opa;\nreg [31:0] opb;\n\nwire [31:0] result;\n\n"
	<< "fpa uut (.opa(opa), .opb(opb), .result(result));\n\n"	
	<< "initial begin\n\n";


	std::ofstream result_file;
	result_file.open("expected_results.txt");


    std::random_device rd{};
    std::mt19937 gen{rd()};

    std::uniform_real_distribution<float> dist1(-1,1);
    std::uniform_int_distribution<int> dist2(0,8);

    float random_val;
    int comma;
    float op, result;
    int hex;

    for (int i = 0; i < 100000; ++i)
    {
    	printf("#5;\n");
    	result = 0;
    	random_val = dist1(gen);
    	comma = dist2(gen);

    	op = (float) random_val * pow(10,comma);
    	hex = *(int*)&op;
    	result += op;

    	printf("opa = 32'h%08X;   //%0.9f \n",hex,op );

    	random_val = dist1(gen);
    	comma = dist2(gen);

    	op = (float) random_val * pow(10,comma);
    	hex = *(int*)&op;
    	result += op;

    	printf("opb = 32'h%08X;   //%0.9f \n",hex,op );

    	hex = *(int*)&result;
    	printf("//result should be %0.9f = 0x%08X\n\n\n", result, hex );
    	result_file << std::hex << hex << "\n";
    }

    printf("end\n\n endmodule");
    result_file.close();

    return 0;
}