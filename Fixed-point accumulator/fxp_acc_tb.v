`timescale 1ns/10ps

module fxp_acc_tb();

reg clk, rst;
reg [31:0] data_in;

wire [31:0] data_out;
wire overflow;

fxp_acc uut (.clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out), .overflow(overflow));

always begin
clk = 1'b0; #100;
clk = 1'b1; #100;
end

initial begin

rst = 1'b1; #50;
rst = 1'b0; #60;
rst = 1'b1;

data_in = 32'h0005D2E6;  //11927.1875000000000 in decimal.
#200;
//accumulated sum = 11927.1875000000000
data_in = 32'h000F5CCD;  //31462.4062500000000 in decimal.
#200;
//accumulated sum = 43389.5937500000000
data_in = 32'h0022E10A;  //71432.3125000000000 in decimal.
#200;
//accumulated sum = 114821.9062500000000
data_in = 32'h002040FB;  //66055.8437500000000 in decimal.
#200;
//accumulated sum = 180877.7500000000000
data_in = 32'h001F7A00;  //64464.0000000000000 in decimal.
#200;
//accumulated sum = 245341.7500000000000
data_in = 32'h001AFC74;  //55267.6250000000000 in decimal.
#200;
//accumulated sum = 300609.3750000000000
data_in = 32'h0001866A;  //3123.3125000000000 in decimal.
#200;
//accumulated sum = 303732.6875000000000
data_in = 32'h0018570D;  //49848.4062500000000 in decimal.
#200;
//accumulated sum = 353581.0937500000000
data_in = 32'h000FFF8B;  //32764.3437500000000 in decimal.
#200;
//accumulated sum = 386345.4375000000000
data_in = 32'h002133F4;  //67999.6250000000000 in decimal.
#200;
//accumulated sum = 454345.0625000000000
data_in = 32'h001A1AA5;  //53461.1562500000000 in decimal.
#200;
//accumulated sum = 507806.2187500000000
data_in = 32'h00000F83;  //124.0937500000000 in decimal.
#200;
//accumulated sum = 507930.3125000000000
data_in = 32'h0016F11C;  //46984.8750000000000 in decimal.
#200;
//accumulated sum = 554915.1875000000000
data_in = 32'h0028EC53;  //83810.5937500000000 in decimal.
#200;
//accumulated sum = 638725.7812500000000
data_in = 32'h001797C3;  //48318.0937500000000 in decimal.
#200;
//accumulated sum = 687043.8750000000000
data_in = 32'h000CEAA5;  //26453.1562500000000 in decimal.
#200;
//accumulated sum = 713497.0312500000000
data_in = 32'h001FF00F;  //65408.4687500000000 in decimal.
#200;
//accumulated sum = 778905.5000000000000
data_in = 32'h00054373;  //10779.5937500000000 in decimal.
#200;
//accumulated sum = 789685.0937500000000
data_in = 32'h0025FB43;  //77786.0937500000000 in decimal.
#200;
//accumulated sum = 867471.1875000000000
data_in = 32'h00270F2D;  //79993.4062500000000 in decimal.
#200;
//accumulated sum = 947464.5937500000000
data_in = 32'h00082AF9;  //16727.7812500000000 in decimal.
#200;
//accumulated sum = 964192.3750000000000
data_in = 32'h00185E96;  //49908.6875000000000 in decimal.
#200;
//accumulated sum = 1014101.0625000000000
data_in = 32'h0023465A;  //72242.8125000000000 in decimal.
#200;
//accumulated sum = 1086343.8750000000000
data_in = 32'h0004104B;  //8322.3437500000000 in decimal.
#200;
//accumulated sum = 1094666.2187500000000
data_in = 32'h00170301;  //47128.0312500000000 in decimal.
#200;
//accumulated sum = 1141794.2500000000000
data_in = 32'h0004E3F7;  //10015.7187500000000 in decimal.
#200;
//accumulated sum = 1151809.9687500000000
data_in = 32'h001AE20E;  //55056.4375000000000 in decimal.
#200;
//accumulated sum = 1206866.4062500000000
data_in = 32'h00271592;  //80044.5625000000000 in decimal.
#200;
//accumulated sum = 1286910.9687500000000
data_in = 32'h002558D7;  //76486.7187500000000 in decimal.
#200;
//accumulated sum = 1363397.6875000000000
data_in = 32'h000EB799;  //30140.7812500000000 in decimal.
#200;
//accumulated sum = 1393538.4687500000000
data_in = 32'h0002D0B0;  //5765.5000000000000 in decimal.
#200;
//accumulated sum = 1399303.9687500000000
data_in = 32'h002003E9;  //65567.2812500000000 in decimal.
#200;
//accumulated sum = 1464871.2500000000000
data_in = 32'h00160063;  //45059.0937500000000 in decimal.
#200;
//accumulated sum = 1509930.3437500000000
data_in = 32'h00133F79;  //39419.7812500000000 in decimal.
#200;
//accumulated sum = 1549350.1250000000000
data_in = 32'h0019E5C5;  //53038.1562500000000 in decimal.
#200;
//accumulated sum = 1602388.2812500000000
data_in = 32'h000D2D0C;  //26984.3750000000000 in decimal.
#200;
//accumulated sum = 1629372.6562500000000
data_in = 32'h000CE21B;  //26384.8437500000000 in decimal.
#200;
//accumulated sum = 1655757.5000000000000
data_in = 32'h001DA121;  //60681.0312500000000 in decimal.
#200;
//accumulated sum = 1716438.5312500000000
data_in = 32'h00187569;  //50091.2812500000000 in decimal.
#200;
//accumulated sum = 1766529.8125000000000
data_in = 32'h001B8073;  //56323.5937500000000 in decimal.
#200;
//accumulated sum = 1822853.4062500000000
data_in = 32'h00107DF0;  //33775.5000000000000 in decimal.
#200;
//accumulated sum = 1856628.9062500000000
data_in = 32'h0024B4A4;  //75173.1250000000000 in decimal.
#200;
//accumulated sum = 1931802.0312500000000
data_in = 32'h0016F383;  //47004.0937500000000 in decimal.
#200;
//accumulated sum = 1978806.1250000000000
data_in = 32'h00238FE5;  //72831.1562500000000 in decimal.
#200;
//accumulated sum = 2051637.2812500000000
data_in = 32'h000243B0;  //4637.5000000000000 in decimal.
#200;
//accumulated sum = 2056274.7812500000000
data_in = 32'h00135AAE;  //39637.4375000000000 in decimal.
#200;
//accumulated sum = 2095912.2187500000000
data_in = 32'h000736DF;  //14774.9687500000000 in decimal.
#200;
//accumulated sum = 2110687.1875000000000
data_in = 32'h0003FD8F;  //8172.4687500000000 in decimal.
#200;
//accumulated sum = 2118859.6562500000000
data_in = 32'h0027A4EB;  //81191.3437500000000 in decimal.
#200;
//accumulated sum = 2200051.0000000000000
data_in = 32'h0007F25F;  //16274.9687500000000 in decimal.
#200;
//accumulated sum = 2216325.9687500000000
data_in = 32'h000F98C6;  //31942.1875000000000 in decimal.
#200;
//accumulated sum = 2248268.1562500000000
data_in = 32'h0026D9EF;  //79567.4687500000000 in decimal.
#200;
//accumulated sum = 2327835.6250000000000
data_in = 32'h00032955;  //6474.6562500000000 in decimal.
#200;
//accumulated sum = 2334310.2812500000000
data_in = 32'h0021484F;  //68162.4687500000000 in decimal.
#200;
//accumulated sum = 2402472.7500000000000
data_in = 32'h001DEE51;  //61298.5312500000000 in decimal.
#200;
//accumulated sum = 2463771.2812500000000
data_in = 32'h001F03B6;  //63517.6875000000000 in decimal.
#200;
//accumulated sum = 2527288.9687500000000
data_in = 32'h001E1235;  //61585.6562500000000 in decimal.
#200;
//accumulated sum = 2588874.6250000000000
data_in = 32'h00275353;  //80538.5937500000000 in decimal.
#200;
//accumulated sum = 2669413.2187500000000
data_in = 32'h0010BF48;  //34298.2500000000000 in decimal.
#200;
//accumulated sum = 2703711.4687500000000
data_in = 32'h0025B062;  //77187.0625000000000 in decimal.
#200;
//accumulated sum = 2780898.5312500000000
data_in = 32'h00243922;  //74185.0625000000000 in decimal.
#200;
//accumulated sum = 2855083.5937500000000
data_in = 32'h001CC907;  //58952.2187500000000 in decimal.
#200;
//accumulated sum = 2914035.8125000000000
data_in = 32'h000826E6;  //16695.1875000000000 in decimal.
#200;
//accumulated sum = 2930731.0000000000000
data_in = 32'h0027D4F6;  //81575.6875000000000 in decimal.
#200;
//accumulated sum = 3012306.6875000000000
data_in = 32'h00092B0C;  //18776.3750000000000 in decimal.
#200;
//accumulated sum = 3031083.0625000000000
data_in = 32'h00274905;  //80456.1562500000000 in decimal.
#200;
//accumulated sum = 3111539.2187500000000
data_in = 32'h002890C7;  //83078.2187500000000 in decimal.
#200;
//accumulated sum = 3194617.4375000000000
data_in = 32'h0013C697;  //40500.7187500000000 in decimal.
#200;
//accumulated sum = 3235118.1562500000000
data_in = 32'h002235BF;  //70061.9687500000000 in decimal.
#200;
//accumulated sum = 3305180.1250000000000
data_in = 32'h0023B191;  //73100.5312500000000 in decimal.
#200;
//accumulated sum = 3378280.6562500000000
data_in = 32'h0003783F;  //7105.9687500000000 in decimal.
#200;
//accumulated sum = 3385386.6250000000000
data_in = 32'h0003DE70;  //7923.5000000000000 in decimal.
#200;
//accumulated sum = 3393310.1250000000000
data_in = 32'h00136DD8;  //39790.7500000000000 in decimal.
#200;
//accumulated sum = 3433100.8750000000000
data_in = 32'h00285CFF;  //82663.9687500000000 in decimal.
#200;
//accumulated sum = 3515764.8437500000000
data_in = 32'h0004DF77;  //9979.7187500000000 in decimal.
#200;
//accumulated sum = 3525744.5625000000000
data_in = 32'h000D3B00;  //27096.0000000000000 in decimal.
#200;
//accumulated sum = 3552840.5625000000000
data_in = 32'h000F8034;  //31745.6250000000000 in decimal.
#200;
//accumulated sum = 3584586.1875000000000
data_in = 32'h0000453B;  //553.8437500000000 in decimal.
#200;
//accumulated sum = 3585140.0312500000000
data_in = 32'h0027BB20;  //81369.0000000000000 in decimal.
#200;
//accumulated sum = 3666509.0312500000000
data_in = 32'h0004981D;  //9408.9062500000000 in decimal.
#200;
//accumulated sum = 3675917.9375000000000
data_in = 32'h00218096;  //68612.6875000000000 in decimal.
#200;
//accumulated sum = 3744530.6250000000000
data_in = 32'h0002860B;  //5168.3437500000000 in decimal.
#200;
//accumulated sum = 3749698.9687500000000
data_in = 32'h001D630F;  //60184.4687500000000 in decimal.
#200;
//accumulated sum = 3809883.4375000000000
data_in = 32'h001CC9D3;  //58958.5937500000000 in decimal.
#200;
//accumulated sum = 3868842.0312500000000
data_in = 32'h00272637;  //80177.7187500000000 in decimal.
#200;
//accumulated sum = 3949019.7500000000000
data_in = 32'h00025C30;  //4833.5000000000000 in decimal.
#200;
//accumulated sum = 3953853.2500000000000
data_in = 32'h0001E394;  //3868.6250000000000 in decimal.
#200;
//accumulated sum = 3957721.8750000000000
data_in = 32'h0014D5AF;  //42669.4687500000000 in decimal.
#200;
//accumulated sum = 4000391.3437500000000
data_in = 32'h00032796;  //6460.6875000000000 in decimal.
#200;
//accumulated sum = 4006852.0312500000000
data_in = 32'h000AE06F;  //22275.4687500000000 in decimal.
#200;
//accumulated sum = 4029127.5000000000000
data_in = 32'h000D831E;  //27672.9375000000000 in decimal.
#200;
//accumulated sum = 4056800.4375000000000
data_in = 32'h00152F12;  //43384.5625000000000 in decimal.
#200;
//accumulated sum = 4100185.0000000000000
data_in = 32'h0021EB8A;  //69468.3125000000000 in decimal.
#200;
//accumulated sum = 4169653.3125000000000
data_in = 32'h000D6095;  //27396.6562500000000 in decimal.
#200;
//accumulated sum = 4197049.9687500000000
data_in = 32'h001E7364;  //62363.1250000000000 in decimal.
#200;
//accumulated sum = 4259413.0937500000000
data_in = 32'h000DF229;  //28561.2812500000000 in decimal.
#200;
//accumulated sum = 4287974.3750000000000
data_in = 32'h000EEDDB;  //30574.8437500000000 in decimal.
#200;
//accumulated sum = 4318549.2187500000000
data_in = 32'h000EA836;  //30017.6875000000000 in decimal.
#200;
//accumulated sum = 4348566.9062500000000
data_in = 32'h00078665;  //15411.1562500000000 in decimal.
#200;
//accumulated sum = 4363978.0625000000000
data_in = 32'h0002503A;  //4737.8125000000000 in decimal.
#200;
//accumulated sum = 4368715.8750000000000
data_in = 32'h000F01DD;  //30734.9062500000000 in decimal.
#200;
//accumulated sum = 4399450.7812500000000
data_in = 32'h00241784;  //73916.1250000000000 in decimal.
#200;
//accumulated sum = 4473366.9062500000000
data_in = 32'h00135043;  //39554.0937500000000 in decimal.
#200;
//accumulated sum = 4512921.0000000000000
data_in = 32'h00024D8A;  //4716.3125000000000 in decimal.
#200;
//accumulated sum = 4517637.3125000000000
data_in = 32'h00041FE5;  //8447.1562500000000 in decimal.
#200;
//accumulated sum = 4526084.4687500000000
data_in = 32'h0017A7FD;  //48447.9062500000000 in decimal.
#200;
//accumulated sum = 4574532.3750000000000
data_in = 32'h001E2DB0;  //61805.5000000000000 in decimal.
#200;
//accumulated sum = 4636337.8750000000000
data_in = 32'h0022443F;  //70177.9687500000000 in decimal.
#200;
//accumulated sum = 4706515.8437500000000
data_in = 32'h001EC922;  //63049.0625000000000 in decimal.
#200;
//accumulated sum = 4769564.9062500000000
data_in = 32'h0006E0C0;  //14086.0000000000000 in decimal.
#200;
//accumulated sum = 4783650.9062500000000
data_in = 32'h00163D1C;  //45544.8750000000000 in decimal.
#200;
//accumulated sum = 4829195.7812500000000
data_in = 32'h00012CDF;  //2406.9687500000000 in decimal.
#200;
//accumulated sum = 4831602.7500000000000
data_in = 32'h00264E68;  //78451.2500000000000 in decimal.
#200;
//accumulated sum = 4910054.0000000000000
data_in = 32'h0018C415;  //50720.6562500000000 in decimal.
#200;
//accumulated sum = 4960774.6562500000000
data_in = 32'h00042322;  //8473.0625000000000 in decimal.
#200;
//accumulated sum = 4969247.7187500000000
data_in = 32'h00014FB9;  //2685.7812500000000 in decimal.
#200;
//accumulated sum = 4971933.5000000000000
data_in = 32'h0017C65E;  //48690.9375000000000 in decimal.
#200;
//accumulated sum = 5020624.4375000000000
data_in = 32'h0026DCFD;  //79591.9062500000000 in decimal.
#200;
//accumulated sum = 5100216.3437500000000
data_in = 32'h0020E56A;  //67371.3125000000000 in decimal.
#200;
//accumulated sum = 5167587.6562500000000
data_in = 32'h00075EB6;  //15093.6875000000000 in decimal.
#200;
//accumulated sum = 5182681.3437500000000
data_in = 32'h0007AD6B;  //15723.3437500000000 in decimal.
#200;
//accumulated sum = 5198404.6875000000000
data_in = 32'h001B842E;  //56353.4375000000000 in decimal.
#200;
//accumulated sum = 5254758.1250000000000
data_in = 32'h000EDFE6;  //30463.1875000000000 in decimal.
#200;
//accumulated sum = 5285221.3125000000000
data_in = 32'h0021EB76;  //69467.6875000000000 in decimal.
#200;
//accumulated sum = 5354689.0000000000000
data_in = 32'h0017D8FE;  //48839.9375000000000 in decimal.
#200;
//accumulated sum = 5403528.9375000000000
data_in = 32'h00173CD2;  //47590.5625000000000 in decimal.
#200;
//accumulated sum = 5451119.5000000000000
data_in = 32'h00033210;  //6544.5000000000000 in decimal.
#200;
//accumulated sum = 5457664.0000000000000
data_in = 32'h001DA2F7;  //60695.7187500000000 in decimal.
#200;
//accumulated sum = 5518359.7187500000000
data_in = 32'h00004E8D;  //628.4062500000000 in decimal.
#200;
//accumulated sum = 5518988.1250000000000
data_in = 32'h001E6B69;  //62299.2812500000000 in decimal.
#200;
//accumulated sum = 5581287.4062500000000
data_in = 32'h00259E6D;  //77043.4062500000000 in decimal.
#200;
//accumulated sum = 5658330.8125000000000
data_in = 32'h00006E09;  //880.2812500000000 in decimal.
#200;
//accumulated sum = 5659211.0937500000000
data_in = 32'h0006E0D1;  //14086.5312500000000 in decimal.
#200;
//accumulated sum = 5673297.6250000000000
data_in = 32'h00178EA9;  //48245.2812500000000 in decimal.
#200;
//accumulated sum = 5721542.9062500000000
data_in = 32'h0016C059;  //46594.7812500000000 in decimal.
#200;
//accumulated sum = 5768137.6875000000000
data_in = 32'h00093B53;  //18906.5937500000000 in decimal.
#200;
//accumulated sum = 5787044.2812500000000
data_in = 32'h000782F9;  //15383.7812500000000 in decimal.
#200;
//accumulated sum = 5802428.0625000000000
data_in = 32'h002263E5;  //70431.1562500000000 in decimal.
#200;
//accumulated sum = 5872859.2187500000000
data_in = 32'h0003DCA6;  //7909.1875000000000 in decimal.
#200;
//accumulated sum = 5880768.4062500000000
data_in = 32'h0003ACEA;  //7527.3125000000000 in decimal.
#200;
//accumulated sum = 5888295.7187500000000
data_in = 32'h00219A5D;  //68818.9062500000000 in decimal.
#200;
//accumulated sum = 5957114.6250000000000
data_in = 32'h001B7CCE;  //56294.4375000000000 in decimal.
#200;
//accumulated sum = 6013409.0625000000000
data_in = 32'h0010AB16;  //34136.6875000000000 in decimal.
#200;
//accumulated sum = 6047545.7500000000000
data_in = 32'h000F5CA5;  //31461.1562500000000 in decimal.
#200;
//accumulated sum = 6079006.9062500000000
data_in = 32'h000C3BEE;  //25055.4375000000000 in decimal.
#200;
//accumulated sum = 6104062.3437500000000
data_in = 32'h001D2006;  //59648.1875000000000 in decimal.
#200;
//accumulated sum = 6163710.5312500000000
data_in = 32'h0005851A;  //11304.8125000000000 in decimal.
#200;
//accumulated sum = 6175015.3437500000000
data_in = 32'h00250B34;  //75865.6250000000000 in decimal.
#200;
//accumulated sum = 6250880.9687500000000
data_in = 32'h000314CA;  //6310.3125000000000 in decimal.
#200;
//accumulated sum = 6257191.2812500000000
data_in = 32'h00104153;  //33290.5937500000000 in decimal.
#200;
//accumulated sum = 6290481.8750000000000
data_in = 32'h0001529D;  //2708.9062500000000 in decimal.
#200;
//accumulated sum = 6293190.7812500000000
data_in = 32'h0016BDCE;  //46574.4375000000000 in decimal.
#200;
//accumulated sum = 6339765.2187500000000
data_in = 32'h0009F705;  //20408.1562500000000 in decimal.
#200;
//accumulated sum = 6360173.3750000000000
data_in = 32'h0026BF69;  //79355.2812500000000 in decimal.
#200;
//accumulated sum = 6439528.6562500000000
data_in = 32'h000A2391;  //20764.5312500000000 in decimal.
#200;
//accumulated sum = 6460293.1875000000000
data_in = 32'h00131CC2;  //39142.0625000000000 in decimal.
#200;
//accumulated sum = 6499435.2500000000000
data_in = 32'h00183D08;  //49640.2500000000000 in decimal.
#200;
//accumulated sum = 6549075.5000000000000
data_in = 32'h000A8505;  //21544.1562500000000 in decimal.
#200;
//accumulated sum = 6570619.6562500000000
data_in = 32'h000D44FD;  //27175.9062500000000 in decimal.
#200;
//accumulated sum = 6597795.5625000000000
data_in = 32'h0011BA23;  //36305.0937500000000 in decimal.
#200;
//accumulated sum = 6634100.6562500000000
data_in = 32'h00142866;  //41283.1875000000000 in decimal.
#200;
//accumulated sum = 6675383.8437500000000
data_in = 32'h00121417;  //37024.7187500000000 in decimal.
#200;
//accumulated sum = 6712408.5625000000000
data_in = 32'h001A737B;  //54171.8437500000000 in decimal.
#200;
//accumulated sum = 6766580.4062500000000
data_in = 32'h001AC6C0;  //54838.0000000000000 in decimal.
#200;
//accumulated sum = 6821418.4062500000000
data_in = 32'h00235D5B;  //72426.8437500000000 in decimal.
#200;
//accumulated sum = 6893845.2500000000000
data_in = 32'h00223040;  //70018.0000000000000 in decimal.
#200;
//accumulated sum = 6963863.2500000000000
data_in = 32'h000D0613;  //26672.5937500000000 in decimal.
#200;
//accumulated sum = 6990535.8437500000000
data_in = 32'h0005DF13;  //12024.5937500000000 in decimal.
#200;
//accumulated sum = 7002560.4375000000000
data_in = 32'h0015DF7F;  //44795.9687500000000 in decimal.
#200;
//accumulated sum = 7047356.4062500000000
data_in = 32'h00124F5A;  //37498.8125000000000 in decimal.
#200;
//accumulated sum = 7084855.2187500000000
data_in = 32'h0010CB1C;  //34392.8750000000000 in decimal.
#200;
//accumulated sum = 7119248.0937500000000
data_in = 32'h0021F9E5;  //69583.1562500000000 in decimal.
#200;
//accumulated sum = 7188831.2500000000000
data_in = 32'h0026F96C;  //79819.3750000000000 in decimal.
#200;
//accumulated sum = 7268650.6250000000000
data_in = 32'h000A1F7B;  //20731.8437500000000 in decimal.
#200;
//accumulated sum = 7289382.4687500000000
data_in = 32'h001D90A6;  //60549.1875000000000 in decimal.
#200;
//accumulated sum = 7349931.6562500000000
data_in = 32'h001DB9CB;  //60878.3437500000000 in decimal.
#200;
//accumulated sum = 7410810.0000000000000
data_in = 32'h0017E9A4;  //48973.1250000000000 in decimal.
#200;
//accumulated sum = 7459783.1250000000000
data_in = 32'h00040BE9;  //8287.2812500000000 in decimal.
#200;
//accumulated sum = 7468070.4062500000000
data_in = 32'h0023E0CB;  //73478.3437500000000 in decimal.
#200;
//accumulated sum = 7541548.7500000000000
data_in = 32'h0024FD22;  //75753.0625000000000 in decimal.
#200;
//accumulated sum = 7617301.8125000000000
data_in = 32'h0013F6D9;  //40886.7812500000000 in decimal.
#200;
//accumulated sum = 7658188.5937500000000
data_in = 32'h000E82E2;  //29719.0625000000000 in decimal.
#200;
//accumulated sum = 7687907.6562500000000
data_in = 32'h0005D331;  //11929.5312500000000 in decimal.
#200;
//accumulated sum = 7699837.1875000000000
data_in = 32'h0010A0C3;  //34054.0937500000000 in decimal.
#200;
//accumulated sum = 7733891.2812500000000
data_in = 32'h0020123B;  //65681.8437500000000 in decimal.
#200;
//accumulated sum = 7799573.1250000000000
data_in = 32'h00124A37;  //37457.7187500000000 in decimal.
#200;
//accumulated sum = 7837030.8437500000000
data_in = 32'h001AA677;  //54579.7187500000000 in decimal.
#200;
//accumulated sum = 7891610.5625000000000
data_in = 32'h00039B78;  //7387.7500000000000 in decimal.
#200;
//accumulated sum = 7898998.3125000000000
data_in = 32'h00220148;  //69642.2500000000000 in decimal.
#200;
//accumulated sum = 7968640.5625000000000
data_in = 32'h000B7C44;  //23522.1250000000000 in decimal.
#200;
//accumulated sum = 7992162.6875000000000
data_in = 32'h000BD19C;  //24204.8750000000000 in decimal.
#200;
//accumulated sum = 8016367.5625000000000
data_in = 32'h000B707D;  //23427.9062500000000 in decimal.
#200;
//accumulated sum = 8039795.4687500000000
data_in = 32'h0014C07A;  //42499.8125000000000 in decimal.
#200;
//accumulated sum = 8082295.2812500000000
data_in = 32'h0009B7C8;  //19902.2500000000000 in decimal.
#200;
//accumulated sum = 8102197.5312500000000
data_in = 32'h000A4879;  //21059.7812500000000 in decimal.
#200;
//accumulated sum = 8123257.3125000000000
data_in = 32'h0018C83B;  //50753.8437500000000 in decimal.
#200;
//accumulated sum = 8174011.1562500000000
data_in = 32'h00198509;  //52264.2812500000000 in decimal.
#200;
//accumulated sum = 8226275.4375000000000
data_in = 32'h0028F0F8;  //83847.7500000000000 in decimal.
#200;
//accumulated sum = 8310123.1875000000000
data_in = 32'h0004FB2B;  //10201.3437500000000 in decimal.
#200;
//accumulated sum = 8320324.5312500000000
data_in = 32'h0021F022;  //69505.0625000000000 in decimal.
#200;
//accumulated sum = 8389829.5937500000000
data_in = 32'h00179714;  //48312.6250000000000 in decimal.
#200;
//accumulated sum = 8438142.2187500000000
data_in = 32'h000CB0D1;  //25990.5312500000000 in decimal.
#200;
//accumulated sum = 8464132.7500000000000
data_in = 32'h0011BC7A;  //36323.8125000000000 in decimal.
#200;
//accumulated sum = 8500456.5625000000000
data_in = 32'h000A837D;  //21531.9062500000000 in decimal.
#200;
//accumulated sum = 8521988.4687500000000
data_in = 32'h0012A6CA;  //38198.3125000000000 in decimal.
#200;
//accumulated sum = 8560186.7812500000000
data_in = 32'h00194DBA;  //51821.8125000000000 in decimal.
#200;
//accumulated sum = 8612008.5937500000000
data_in = 32'h00097A87;  //19412.2187500000000 in decimal.
#200;
//accumulated sum = 8631420.8125000000000
data_in = 32'h0018C40C;  //50720.3750000000000 in decimal.
#200;
//accumulated sum = 8682141.1875000000000
data_in = 32'h001ECDC2;  //63086.0625000000000 in decimal.
#200;
//accumulated sum = 8745227.2500000000000
data_in = 32'h001F6D37;  //64361.7187500000000 in decimal.
#200;
//accumulated sum = 8809588.9687500000000
data_in = 32'h0007DD08;  //16104.2500000000000 in decimal.
#200;
//accumulated sum = 8825693.2187500000000
data_in = 32'h0000D902;  //1736.0625000000000 in decimal.
#200;
//accumulated sum = 8827429.2812500000000
data_in = 32'h000E4697;  //29236.7187500000000 in decimal.
#200;
//accumulated sum = 8856666.0000000000000
data_in = 32'h00131FD7;  //39166.7187500000000 in decimal.
#200;
//accumulated sum = 8895832.7187500000000
data_in = 32'h00269AFD;  //79063.9062500000000 in decimal.
#200;
//accumulated sum = 8974896.6250000000000
data_in = 32'h001BE517;  //57128.7187500000000 in decimal.
#200;
//accumulated sum = 9032025.3437500000000
data_in = 32'h000B5A2C;  //23249.3750000000000 in decimal.
#200;
//accumulated sum = 9055274.7187500000000
data_in = 32'h001EB396;  //62876.6875000000000 in decimal.
#200;
//accumulated sum = 9118151.4062500000000
data_in = 32'h00033DD2;  //6638.5625000000000 in decimal.
#200;
//accumulated sum = 9124789.9687500000000
data_in = 32'h0009853B;  //19497.8437500000000 in decimal.
#200;
//accumulated sum = 9144287.8125000000000
data_in = 32'h0003178F;  //6332.4687500000000 in decimal.
#200;
//accumulated sum = 9150620.2812500000000
data_in = 32'h00008F78;  //1147.7500000000000 in decimal.
#200;
//accumulated sum = 9151768.0312500000000
data_in = 32'h0021133B;  //67737.8437500000000 in decimal.
#200;
//accumulated sum = 9219505.8750000000000
data_in = 32'h0010420E;  //33296.4375000000000 in decimal.
#200;
//accumulated sum = 9252802.3125000000000
data_in = 32'h0020EE74;  //67443.6250000000000 in decimal.
#200;
//accumulated sum = 9320245.9375000000000
data_in = 32'h0006F823;  //14273.0937500000000 in decimal.
#200;
//accumulated sum = 9334519.0312500000000
data_in = 32'h00035603;  //6832.0937500000000 in decimal.
#200;
//accumulated sum = 9341351.1250000000000
data_in = 32'h0002C6C5;  //5686.1562500000000 in decimal.
#200;
//accumulated sum = 9347037.2812500000000
data_in = 32'h000337FF;  //6591.9687500000000 in decimal.
#200;
//accumulated sum = 9353629.2500000000000
data_in = 32'h0006BBF6;  //13791.6875000000000 in decimal.
#200;
//accumulated sum = 9367420.9375000000000
data_in = 32'h00157656;  //43954.6875000000000 in decimal.
#200;
//accumulated sum = 9411375.6250000000000
data_in = 32'h0028CA8B;  //83540.3437500000000 in decimal.
#200;
//accumulated sum = 9494915.9687500000000
data_in = 32'h0028B269;  //83347.2812500000000 in decimal.
#200;
//accumulated sum = 9578263.2500000000000
data_in = 32'h00027918;  //5064.7500000000000 in decimal.
#200;
//accumulated sum = 9583328.0000000000000
data_in = 32'h00283D6D;  //82411.4062500000000 in decimal.
#200;
//accumulated sum = 9665739.4062500000000
data_in = 32'h0010BC15;  //34272.6562500000000 in decimal.
#200;
//accumulated sum = 9700012.0625000000000
data_in = 32'h0020EABF;  //67413.9687500000000 in decimal.
#200;
//accumulated sum = 9767426.0312500000000
data_in = 32'h0028F2F1;  //83863.5312500000000 in decimal.
#200;
//accumulated sum = 9851289.5625000000000
data_in = 32'h002215FA;  //69807.8125000000000 in decimal.
#200;
//accumulated sum = 9921097.3750000000000
data_in = 32'h001849E8;  //49743.2500000000000 in decimal.
#200;
//accumulated sum = 9970840.6250000000000
data_in = 32'h0016CF3E;  //46713.9375000000000 in decimal.
#200;
//accumulated sum = 10017554.5625000000000
data_in = 32'h001F42B2;  //64021.5625000000000 in decimal.
#200;
//accumulated sum = 10081576.1250000000000
data_in = 32'h00064E85;  //12916.1562500000000 in decimal.
#200;
//accumulated sum = 10094492.2812500000000
data_in = 32'h0011890C;  //35912.3750000000000 in decimal.
#200;
//accumulated sum = 10130404.6562500000000
data_in = 32'h000C9CB9;  //25829.7812500000000 in decimal.
#200;
//accumulated sum = 10156234.4375000000000
data_in = 32'h0026D792;  //79548.5625000000000 in decimal.
#200;
//accumulated sum = 10235783.0000000000000
data_in = 32'h00244712;  //74296.5625000000000 in decimal.
#200;
//accumulated sum = 10310079.5625000000000
data_in = 32'h000DB550;  //28074.5000000000000 in decimal.
#200;
//accumulated sum = 10338154.0625000000000
data_in = 32'h0026A480;  //79140.0000000000000 in decimal.
#200;
//accumulated sum = 10417294.0625000000000
data_in = 32'h001A502A;  //53889.3125000000000 in decimal.
#200;
//accumulated sum = 10471183.3750000000000
data_in = 32'h00191BD9;  //51422.7812500000000 in decimal.
#200;
//accumulated sum = 10522606.1562500000000
data_in = 32'h0017EA74;  //48979.6250000000000 in decimal.
#200;
//accumulated sum = 10571585.7812500000000
data_in = 32'h001D1F2F;  //59641.4687500000000 in decimal.
#200;
//accumulated sum = 10631227.2500000000000
data_in = 32'h000AE614;  //22320.6250000000000 in decimal.
#200;
//accumulated sum = 10653547.8750000000000
data_in = 32'h00187D23;  //50153.0937500000000 in decimal.
#200;
//accumulated sum = 10703700.9687500000000
data_in = 32'h000E1FDD;  //28926.9062500000000 in decimal.
#200;
//accumulated sum = 10732627.8750000000000
data_in = 32'h000797E1;  //15551.0312500000000 in decimal.
#200;
//accumulated sum = 10748178.9062500000000
data_in = 32'h0013F524;  //40873.1250000000000 in decimal.
#200;
//accumulated sum = 10789052.0312500000000
data_in = 32'h00198D79;  //52331.7812500000000 in decimal.
#200;
//accumulated sum = 10841383.8125000000000
data_in = 32'h00258539;  //76841.7812500000000 in decimal.
#200;
//accumulated sum = 10918225.5937500000000
data_in = 32'h000FC288;  //32276.2500000000000 in decimal.
#200;
//accumulated sum = 10950501.8437500000000
data_in = 32'h0024B573;  //75179.5937500000000 in decimal.
#200;
//accumulated sum = 11025681.4375000000000
data_in = 32'h000759E6;  //15055.1875000000000 in decimal.
#200;
//accumulated sum = 11040736.6250000000000
data_in = 32'h00053E0E;  //10736.4375000000000 in decimal.
#200;
//accumulated sum = 11051473.0625000000000
data_in = 32'h00091E90;  //18676.5000000000000 in decimal.
#200;
//accumulated sum = 11070149.5625000000000
data_in = 32'h000CCF96;  //26236.6875000000000 in decimal.
#200;
//accumulated sum = 11096386.2500000000000
data_in = 32'h0001AD35;  //3433.6562500000000 in decimal.
#200;
//accumulated sum = 11099819.9062500000000
data_in = 32'h000F9A4A;  //31954.3125000000000 in decimal.
#200;
//accumulated sum = 11131774.2187500000000
data_in = 32'h00256F2F;  //76665.4687500000000 in decimal.
#200;
//accumulated sum = 11208439.6875000000000
data_in = 32'h000D54BC;  //27301.8750000000000 in decimal.
#200;
//accumulated sum = 11235741.5625000000000
data_in = 32'h00223A0C;  //70096.3750000000000 in decimal.
#200;
//accumulated sum = 11305837.9375000000000
data_in = 32'h0004EFB9;  //10109.7812500000000 in decimal.
#200;
//accumulated sum = 11315947.7187500000000
data_in = 32'h001AF9B9;  //55245.7812500000000 in decimal.
#200;
//accumulated sum = 11371193.5000000000000
data_in = 32'h0010F222;  //34705.0625000000000 in decimal.
#200;
//accumulated sum = 11405898.5625000000000
data_in = 32'h0008039D;  //16412.9062500000000 in decimal.
#200;
//accumulated sum = 11422311.4687500000000
data_in = 32'h000B662F;  //23345.4687500000000 in decimal.
#200;
//accumulated sum = 11445656.9375000000000
data_in = 32'h0022F9AA;  //71629.3125000000000 in decimal.
#200;
//accumulated sum = 11517286.2500000000000
data_in = 32'h0006B96A;  //13771.3125000000000 in decimal.
#200;
//accumulated sum = 11531057.5625000000000
data_in = 32'h0028413E;  //82441.9375000000000 in decimal.
#200;
//accumulated sum = 11613499.5000000000000
data_in = 32'h00021EC8;  //4342.2500000000000 in decimal.
#200;
//accumulated sum = 11617841.7500000000000
data_in = 32'h0004F161;  //10123.0312500000000 in decimal.
#200;
//accumulated sum = 11627964.7812500000000
data_in = 32'h0027B790;  //81340.5000000000000 in decimal.
#200;
//accumulated sum = 11709305.2812500000000
data_in = 32'h0028D814;  //83648.6250000000000 in decimal.
#200;
//accumulated sum = 11792953.9062500000000
data_in = 32'h00287C08;  //82912.2500000000000 in decimal.
#200;
//accumulated sum = 11875866.1562500000000
data_in = 32'h0006CE80;  //13940.0000000000000 in decimal.
#200;
//accumulated sum = 11889806.1562500000000
data_in = 32'h00182A4E;  //49490.4375000000000 in decimal.
#200;
//accumulated sum = 11939296.5937500000000
data_in = 32'h001B110B;  //55432.3437500000000 in decimal.
#200;
//accumulated sum = 11994728.9375000000000
data_in = 32'h0027F79B;  //81852.8437500000000 in decimal.
#200;
//accumulated sum = 12076581.7812500000000
data_in = 32'h0019D02A;  //52865.3125000000000 in decimal.
#200;
//accumulated sum = 12129447.0937500000000
data_in = 32'h000941C1;  //18958.0312500000000 in decimal.
#200;
//accumulated sum = 12148405.1250000000000
data_in = 32'h00234C79;  //72291.7812500000000 in decimal.
#200;
//accumulated sum = 12220696.9062500000000
data_in = 32'h000A7EF3;  //21495.5937500000000 in decimal.
#200;
//accumulated sum = 12242192.5000000000000
data_in = 32'h0028F3EF;  //83871.4687500000000 in decimal.
#200;
//accumulated sum = 12326063.9687500000000
data_in = 32'h000DFDFB;  //28655.8437500000000 in decimal.
#200;
//accumulated sum = 12354719.8125000000000
data_in = 32'h000C8BC1;  //25694.0312500000000 in decimal.
#200;
//accumulated sum = 12380413.8437500000000
data_in = 32'h00288558;  //82986.7500000000000 in decimal.
#200;
//accumulated sum = 12463400.5937500000000
data_in = 32'h000FA676;  //32051.6875000000000 in decimal.
#200;
//accumulated sum = 12495452.2812500000000
data_in = 32'h00268757;  //78906.7187500000000 in decimal.
#200;
//accumulated sum = 12574359.0000000000000
data_in = 32'h0011DAF3;  //36567.5937500000000 in decimal.
#200;
//accumulated sum = 12610926.5937500000000
data_in = 32'h00046270;  //8979.5000000000000 in decimal.
#200;
//accumulated sum = 12619906.0937500000000
data_in = 32'h0012964E;  //38066.4375000000000 in decimal.
#200;
//accumulated sum = 12657972.5312500000000
data_in = 32'h0024D74C;  //75450.3750000000000 in decimal.
#200;
//accumulated sum = 12733422.9062500000000
data_in = 32'h001CB5AD;  //58797.4062500000000 in decimal.
#200;
//accumulated sum = 12792220.3125000000000
data_in = 32'h0007DD88;  //16108.2500000000000 in decimal.
#200;
//accumulated sum = 12808328.5625000000000
data_in = 32'h00136EFF;  //39799.9687500000000 in decimal.
#200;
//accumulated sum = 12848128.5312500000000
data_in = 32'h0011FE88;  //36852.2500000000000 in decimal.
#200;
//accumulated sum = 12884980.7812500000000
data_in = 32'h00220D6E;  //69739.4375000000000 in decimal.
#200;
//accumulated sum = 12954720.2187500000000
data_in = 32'h00037584;  //7084.1250000000000 in decimal.
#200;
//accumulated sum = 12961804.3437500000000
data_in = 32'h000A1F54;  //20730.6250000000000 in decimal.
#200;
//accumulated sum = 12982534.9687500000000
data_in = 32'h00085704;  //17080.1250000000000 in decimal.
#200;
//accumulated sum = 12999615.0937500000000
data_in = 32'h0009A91D;  //19784.9062500000000 in decimal.
#200;
//accumulated sum = 13019400.0000000000000
data_in = 32'h00288B63;  //83035.0937500000000 in decimal.
#200;
//accumulated sum = 13102435.0937500000000
data_in = 32'h0022EAA6;  //71509.1875000000000 in decimal.
#200;
//accumulated sum = 13173944.2812500000000
data_in = 32'h001AEE83;  //55156.0937500000000 in decimal.
#200;
//accumulated sum = 13229100.3750000000000
data_in = 32'h0009293A;  //18761.8125000000000 in decimal.
#200;
//accumulated sum = 13247862.1875000000000
data_in = 32'h0027B3E4;  //81311.1250000000000 in decimal.
#200;
//accumulated sum = 13329173.3125000000000
data_in = 32'h00168DDB;  //46190.8437500000000 in decimal.
#200;
//accumulated sum = 13375364.1562500000000
data_in = 32'h0001A8C8;  //3398.2500000000000 in decimal.
#200;
//accumulated sum = 13378762.4062500000000
data_in = 32'h000FA8F0;  //32071.5000000000000 in decimal.
#200;
//accumulated sum = 13410833.9062500000000
data_in = 32'h0009025B;  //18450.8437500000000 in decimal.
#200;
//accumulated sum = 13429284.7500000000000
data_in = 32'h000EC8AA;  //30277.3125000000000 in decimal.
#200;
//accumulated sum = 13459562.0625000000000
data_in = 32'h000A8A3D;  //21585.9062500000000 in decimal.
#200;
//accumulated sum = 13481147.9687500000000
data_in = 32'h002307E4;  //71743.1250000000000 in decimal.
#200;
//accumulated sum = 13552891.0937500000000
data_in = 32'h00086EF5;  //17271.6562500000000 in decimal.
#200;
//accumulated sum = 13570162.7500000000000
data_in = 32'h001B01FD;  //55311.9062500000000 in decimal.
#200;
//accumulated sum = 13625474.6562500000000
data_in = 32'h00143EC9;  //41462.2812500000000 in decimal.
#200;
//accumulated sum = 13666936.9375000000000
data_in = 32'h001A6531;  //54057.5312500000000 in decimal.
#200;
//accumulated sum = 13720994.4687500000000
data_in = 32'h00074DA3;  //14957.0937500000000 in decimal.
#200;
//accumulated sum = 13735951.5625000000000
data_in = 32'h0026B44F;  //79266.4687500000000 in decimal.
#200;
//accumulated sum = 13815218.0312500000000
data_in = 32'h0011E275;  //36627.6562500000000 in decimal.
#200;
//accumulated sum = 13851845.6875000000000
data_in = 32'h0002D8E4;  //5831.1250000000000 in decimal.
#200;
//accumulated sum = 13857676.8125000000000
data_in = 32'h00119E87;  //36084.2187500000000 in decimal.
#200;
//accumulated sum = 13893761.0312500000000
data_in = 32'h000BC1A6;  //24077.1875000000000 in decimal.
#200;
//accumulated sum = 13917838.2187500000000
data_in = 32'h0015F4CF;  //44966.4687500000000 in decimal.
#200;
//accumulated sum = 13962804.6875000000000
data_in = 32'h000D510B;  //27272.3437500000000 in decimal.
#200;
//accumulated sum = 13990077.0312500000000
data_in = 32'h0013819F;  //39948.9687500000000 in decimal.
#200;
//accumulated sum = 14030026.0000000000000
data_in = 32'h0023C3A6;  //73245.1875000000000 in decimal.
#200;
//accumulated sum = 14103271.1875000000000
data_in = 32'h0027BF39;  //81401.7812500000000 in decimal.
#200;
//accumulated sum = 14184672.9687500000000
data_in = 32'h00031FED;  //6399.4062500000000 in decimal.
#200;
//accumulated sum = 14191072.3750000000000
data_in = 32'h000671EA;  //13199.3125000000000 in decimal.
#200;
//accumulated sum = 14204271.6875000000000
data_in = 32'h0018212A;  //49417.3125000000000 in decimal.
#200;
//accumulated sum = 14253689.0000000000000
data_in = 32'h0010C3C8;  //34334.2500000000000 in decimal.
#200;
//accumulated sum = 14288023.2500000000000
data_in = 32'h00073153;  //14730.5937500000000 in decimal.
#200;
//accumulated sum = 14302753.8437500000000
data_in = 32'h0002F266;  //6035.1875000000000 in decimal.
#200;
//accumulated sum = 14308789.0312500000000
data_in = 32'h0011B97B;  //36299.8437500000000 in decimal.
#200;
//accumulated sum = 14345088.8750000000000
data_in = 32'h000B59E6;  //23247.1875000000000 in decimal.
#200;
//accumulated sum = 14368336.0625000000000
data_in = 32'h00216B44;  //68442.1250000000000 in decimal.
#200;
//accumulated sum = 14436778.1875000000000
data_in = 32'h00263599;  //78252.7812500000000 in decimal.
#200;
//accumulated sum = 14515030.9687500000000
data_in = 32'h000C280A;  //24896.3125000000000 in decimal.
#200;
//accumulated sum = 14539927.2812500000000
data_in = 32'h00012F49;  //2426.2812500000000 in decimal.
#200;
//accumulated sum = 14542353.5625000000000
data_in = 32'h0014E42F;  //42785.4687500000000 in decimal.
#200;
//accumulated sum = 14585139.0312500000000
data_in = 32'h0006FB1D;  //14296.9062500000000 in decimal.
#200;
//accumulated sum = 14599435.9375000000000
data_in = 32'h0018D663;  //50867.0937500000000 in decimal.
#200;
//accumulated sum = 14650303.0312500000000
data_in = 32'h000D3D38;  //27113.7500000000000 in decimal.
#200;
//accumulated sum = 14677416.7812500000000
data_in = 32'h001C9DA7;  //58605.2187500000000 in decimal.
#200;
//accumulated sum = 14736022.0000000000000
data_in = 32'h000EA256;  //29970.6875000000000 in decimal.
#200;
//accumulated sum = 14765992.6875000000000
data_in = 32'h000381E0;  //7183.0000000000000 in decimal.
#200;
//accumulated sum = 14773175.6875000000000
data_in = 32'h00053090;  //10628.5000000000000 in decimal.
#200;
//accumulated sum = 14783804.1875000000000
data_in = 32'h0005B17E;  //11659.9375000000000 in decimal.
#200;
//accumulated sum = 14795464.1250000000000
data_in = 32'h0008734C;  //17306.3750000000000 in decimal.
#200;
//accumulated sum = 14812770.5000000000000
data_in = 32'h0023D304;  //73368.1250000000000 in decimal.
#200;
//accumulated sum = 14886138.6250000000000
data_in = 32'h0025DCAA;  //77541.3125000000000 in decimal.
#200;
//accumulated sum = 14963679.9375000000000
data_in = 32'h00080CC1;  //16486.0312500000000 in decimal.
#200;
//accumulated sum = 14980165.9687500000000
data_in = 32'h00250AD1;  //75862.5312500000000 in decimal.
#200;
//accumulated sum = 15056028.5000000000000
data_in = 32'h001B96A0;  //56501.0000000000000 in decimal.
#200;
//accumulated sum = 15112529.5000000000000
data_in = 32'h0026169C;  //78004.8750000000000 in decimal.
#200;
//accumulated sum = 15190534.3750000000000
data_in = 32'h001976FC;  //52151.8750000000000 in decimal.
#200;
//accumulated sum = 15242686.2500000000000
data_in = 32'h00037F20;  //7161.0000000000000 in decimal.
#200;
//accumulated sum = 15249847.2500000000000
data_in = 32'h0025212F;  //76041.4687500000000 in decimal.
#200;
//accumulated sum = 15325888.7187500000000
data_in = 32'h000C8A27;  //25681.2187500000000 in decimal.
#200;
//accumulated sum = 15351569.9375000000000
data_in = 32'h0017130F;  //47256.4687500000000 in decimal.
#200;
//accumulated sum = 15398826.4062500000000
data_in = 32'h00184CE5;  //49767.1562500000000 in decimal.
#200;
//accumulated sum = 15448593.5625000000000
data_in = 32'h00148058;  //41986.7500000000000 in decimal.
#200;
//accumulated sum = 15490580.3125000000000
data_in = 32'h00231F36;  //71929.6875000000000 in decimal.
#200;
//accumulated sum = 15562510.0000000000000
data_in = 32'h000929AE;  //18765.4375000000000 in decimal.
#200;
//accumulated sum = 15581275.4375000000000
data_in = 32'h000432B3;  //8597.5937500000000 in decimal.
#200;
//accumulated sum = 15589873.0312500000000
data_in = 32'h0017E692;  //48948.5625000000000 in decimal.
#200;
//accumulated sum = 15638821.5937500000000
data_in = 32'h001E8788;  //62524.2500000000000 in decimal.
#200;
//accumulated sum = 15701345.8437500000000
data_in = 32'h0004A752;  //9530.5625000000000 in decimal.
#200;
//accumulated sum = 15710876.4062500000000
data_in = 32'h001EDC2B;  //63201.3437500000000 in decimal.
#200;
//accumulated sum = 15774077.7500000000000
data_in = 32'h00025F18;  //4856.7500000000000 in decimal.
#200;
//accumulated sum = 15778934.5000000000000
data_in = 32'h001305A0;  //38957.0000000000000 in decimal.
#200;
//accumulated sum = 15817891.5000000000000
data_in = 32'h000E4DEE;  //29295.4375000000000 in decimal.
#200;
//accumulated sum = 15847186.9375000000000
data_in = 32'h000D879A;  //27708.8125000000000 in decimal.
#200;
//accumulated sum = 15874895.7500000000000
data_in = 32'h0019F74F;  //53178.4687500000000 in decimal.
#200;
//accumulated sum = 15928074.2187500000000
data_in = 32'h00191E0E;  //51440.4375000000000 in decimal.
#200;
//accumulated sum = 15979514.6562500000000
data_in = 32'h000C8AB6;  //25685.6875000000000 in decimal.
#200;
//accumulated sum = 16005200.3437500000000
data_in = 32'h001D4AF8;  //59991.7500000000000 in decimal.
#200;
//accumulated sum = 16065192.0937500000000
data_in = 32'h000D07BA;  //26685.8125000000000 in decimal.
#200;
//accumulated sum = 16091877.9062500000000
data_in = 32'h0005636D;  //11035.4062500000000 in decimal.
#200;
//accumulated sum = 16102913.3125000000000
data_in = 32'h002121D6;  //67854.6875000000000 in decimal.
#200;
//accumulated sum = 16170768.0000000000000
data_in = 32'h001715AD;  //47277.4062500000000 in decimal.
#200;
//accumulated sum = 16218045.4062500000000
data_in = 32'h001BBA60;  //56787.0000000000000 in decimal.
#200;
//accumulated sum = 16274832.4062500000000
data_in = 32'h0018AB33;  //50521.5937500000000 in decimal.
#200;
//accumulated sum = 16325354.0000000000000
data_in = 32'h00171796;  //47292.6875000000000 in decimal.
#200;
//accumulated sum = 16372646.6875000000000
data_in = 32'h000CDB43;  //26330.0937500000000 in decimal.
#200;
//accumulated sum = 16398976.7812500000000
data_in = 32'h000C437E;  //25115.9375000000000 in decimal.
#200;
//accumulated sum = 16424092.7187500000000
data_in = 32'h000D60AD;  //27397.4062500000000 in decimal.
#200;
//accumulated sum = 16451490.1250000000000
data_in = 32'h001EA834;  //62785.6250000000000 in decimal.
#200;
//accumulated sum = 16514275.7500000000000
data_in = 32'h00248145;  //74762.1562500000000 in decimal.
#200;
//accumulated sum = 16589037.9062500000000
data_in = 32'h000240B0;  //4613.5000000000000 in decimal.
#200;
//accumulated sum = 16593651.4062500000000
data_in = 32'h000DF0D7;  //28550.7187500000000 in decimal.
#200;
//accumulated sum = 16622202.1250000000000
data_in = 32'h000487C1;  //9278.0312500000000 in decimal.
#200;
//accumulated sum = 16631480.1562500000000
data_in = 32'h00139803;  //40128.0937500000000 in decimal.
#200;
//accumulated sum = 16671608.2500000000000
data_in = 32'h001B75E5;  //56239.1562500000000 in decimal.
#200;
//accumulated sum = 16727847.4062500000000
data_in = 32'h000DA0B5;  //27909.6562500000000 in decimal.
#200;
//accumulated sum = 16755757.0625000000000
data_in = 32'h000881D4;  //17422.6250000000000 in decimal.
#200;
//accumulated sum = 16773179.6875000000000
data_in = 32'h0028C10E;  //83464.4375000000000 in decimal.
#200;
//accumulated sum = 16856644.1250000000000
data_in = 32'h00014FEB;  //2687.3437500000000 in decimal.
#200;
//accumulated sum = 16859331.4687500000000
data_in = 32'h0027C054;  //81410.6250000000000 in decimal.
#200;
//accumulated sum = 16940742.0937500000000
data_in = 32'h001E8A9F;  //62548.9687500000000 in decimal.
#200;
//accumulated sum = 17003291.0625000000000
data_in = 32'h001DBAA6;  //60885.1875000000000 in decimal.
#200;
//accumulated sum = 17064176.2500000000000
data_in = 32'h000DAEA2;  //28021.0625000000000 in decimal.
#200;
//accumulated sum = 17092197.3125000000000
data_in = 32'h001A2734;  //53561.6250000000000 in decimal.
#200;
//accumulated sum = 17145758.9375000000000
data_in = 32'h001F1A4B;  //63698.3437500000000 in decimal.
#200;
//accumulated sum = 17209457.2812500000000
data_in = 32'h00197876;  //52163.6875000000000 in decimal.
#200;
//accumulated sum = 17261620.9687500000000
data_in = 32'h00034F84;  //6780.1250000000000 in decimal.
#200;
//accumulated sum = 17268401.0937500000000
data_in = 32'h0025E325;  //77593.1562500000000 in decimal.
#200;
//accumulated sum = 17345994.2500000000000
data_in = 32'h001E6883;  //62276.0937500000000 in decimal.
#200;
//accumulated sum = 17408270.3437500000000
data_in = 32'h001E01F2;  //61455.5625000000000 in decimal.
#200;
//accumulated sum = 17469725.9062500000000
data_in = 32'h0009C408;  //20000.2500000000000 in decimal.
#200;
//accumulated sum = 17489726.1562500000000
data_in = 32'h0009CD60;  //20075.0000000000000 in decimal.
#200;
//accumulated sum = 17509801.1562500000000
data_in = 32'h00046A67;  //9043.2187500000000 in decimal.
#200;
//accumulated sum = 17518844.3750000000000
data_in = 32'h0015ABA3;  //44381.0937500000000 in decimal.
#200;
//accumulated sum = 17563225.4687500000000
data_in = 32'h000A2984;  //20812.1250000000000 in decimal.
#200;
//accumulated sum = 17584037.5937500000000
data_in = 32'h0018E6AF;  //50997.4687500000000 in decimal.
#200;
//accumulated sum = 17635035.0625000000000
data_in = 32'h00081697;  //16564.7187500000000 in decimal.
#200;
//accumulated sum = 17651599.7812500000000
data_in = 32'h002601E3;  //77839.0937500000000 in decimal.
#200;
//accumulated sum = 17729438.8750000000000
data_in = 32'h0006289D;  //12612.9062500000000 in decimal.
#200;
//accumulated sum = 17742051.7812500000000
data_in = 32'h000AF5B1;  //22445.5312500000000 in decimal.
#200;
//accumulated sum = 17764497.3125000000000
data_in = 32'h0026F90C;  //79816.3750000000000 in decimal.
#200;
//accumulated sum = 17844313.6875000000000
data_in = 32'h00228206;  //70672.1875000000000 in decimal.
#200;
//accumulated sum = 17914985.8750000000000
data_in = 32'h0021F2F3;  //69527.5937500000000 in decimal.
#200;
//accumulated sum = 17984513.4687500000000
data_in = 32'h00018FE6;  //3199.1875000000000 in decimal.
#200;
//accumulated sum = 17987712.6562500000000
data_in = 32'h0023B545;  //73130.1562500000000 in decimal.
#200;
//accumulated sum = 18060842.8125000000000
data_in = 32'h00174F67;  //47739.2187500000000 in decimal.
#200;
//accumulated sum = 18108582.0312500000000
data_in = 32'h00048208;  //9232.2500000000000 in decimal.
#200;
//accumulated sum = 18117814.2812500000000
data_in = 32'h0006DE77;  //14067.7187500000000 in decimal.
#200;
//accumulated sum = 18131882.0000000000000
data_in = 32'h0025CE8E;  //77428.4375000000000 in decimal.
#200;
//accumulated sum = 18209310.4375000000000
data_in = 32'h00202B47;  //65882.2187500000000 in decimal.
#200;
//accumulated sum = 18275192.6562500000000
data_in = 32'h000BA695;  //23860.6562500000000 in decimal.
#200;
//accumulated sum = 18299053.3125000000000
data_in = 32'h000AF08C;  //22404.3750000000000 in decimal.
#200;
//accumulated sum = 18321457.6875000000000
data_in = 32'h000397E8;  //7359.2500000000000 in decimal.
#200;
//accumulated sum = 18328816.9375000000000
data_in = 32'h001AB557;  //54698.7187500000000 in decimal.
#200;
//accumulated sum = 18383515.6562500000000
data_in = 32'h00213FCC;  //68094.3750000000000 in decimal.
#200;
//accumulated sum = 18451610.0312500000000
data_in = 32'h000F44B7;  //31269.7187500000000 in decimal.
#200;
//accumulated sum = 18482879.7500000000000
data_in = 32'h000D14D4;  //26790.6250000000000 in decimal.
#200;
//accumulated sum = 18509670.3750000000000
data_in = 32'h00145AD2;  //41686.5625000000000 in decimal.
#200;
//accumulated sum = 18551356.9375000000000
data_in = 32'h000EF139;  //30601.7812500000000 in decimal.
#200;
//accumulated sum = 18581958.7187500000000
data_in = 32'h00004E7B;  //627.8437500000000 in decimal.
#200;
//accumulated sum = 18582586.5625000000000
data_in = 32'h0013E3D5;  //40734.6562500000000 in decimal.
#200;
//accumulated sum = 18623321.2187500000000
data_in = 32'h00046958;  //9034.7500000000000 in decimal.
#200;
//accumulated sum = 18632355.9687500000000
data_in = 32'h002642CF;  //78358.4687500000000 in decimal.
#200;
//accumulated sum = 18710714.4375000000000
data_in = 32'h0000B3C2;  //1438.0625000000000 in decimal.
#200;
//accumulated sum = 18712152.5000000000000
data_in = 32'h00269BED;  //79071.4062500000000 in decimal.
#200;
//accumulated sum = 18791223.9062500000000
data_in = 32'h0026A67E;  //79155.9375000000000 in decimal.
#200;
//accumulated sum = 18870379.8437500000000
data_in = 32'h0017F15D;  //49034.9062500000000 in decimal.
#200;
//accumulated sum = 18919414.7500000000000
data_in = 32'h00209905;  //66760.1562500000000 in decimal.
#200;
//accumulated sum = 18986174.9062500000000
data_in = 32'h00170113;  //47112.5937500000000 in decimal.
#200;
//accumulated sum = 19033287.5000000000000
data_in = 32'h0012847D;  //37923.9062500000000 in decimal.
#200;
//accumulated sum = 19071211.4062500000000
data_in = 32'h001E550E;  //62120.4375000000000 in decimal.
#200;
//accumulated sum = 19133331.8437500000000
data_in = 32'h00090008;  //18432.2500000000000 in decimal.
#200;
//accumulated sum = 19151764.0937500000000
data_in = 32'h002442B5;  //74261.6562500000000 in decimal.
#200;
//accumulated sum = 19226025.7500000000000
data_in = 32'h00139741;  //40122.0312500000000 in decimal.
#200;
//accumulated sum = 19266147.7812500000000
data_in = 32'h0024C5DE;  //75310.9375000000000 in decimal.
#200;
//accumulated sum = 19341458.7187500000000
data_in = 32'h00212FEB;  //67967.3437500000000 in decimal.
#200;
//accumulated sum = 19409426.0625000000000
data_in = 32'h0015628C;  //43796.3750000000000 in decimal.
#200;
//accumulated sum = 19453222.4375000000000
data_in = 32'h001BF381;  //57244.0312500000000 in decimal.
#200;
//accumulated sum = 19510466.4687500000000
data_in = 32'h0028B3DD;  //83358.9062500000000 in decimal.
#200;
//accumulated sum = 19593825.3750000000000
data_in = 32'h001BED31;  //57193.5312500000000 in decimal.
#200;
//accumulated sum = 19651018.9062500000000
data_in = 32'h0018307A;  //49539.8125000000000 in decimal.
#200;
//accumulated sum = 19700558.7187500000000
data_in = 32'h002829E9;  //82255.2812500000000 in decimal.
#200;
//accumulated sum = 19782814.0000000000000
data_in = 32'h0011FA34;  //36817.6250000000000 in decimal.
#200;
//accumulated sum = 19819631.6250000000000
data_in = 32'h001CC56D;  //58923.4062500000000 in decimal.
#200;
//accumulated sum = 19878555.0312500000000
data_in = 32'h001D3286;  //59796.1875000000000 in decimal.
#200;
//accumulated sum = 19938351.2187500000000
data_in = 32'h001CDB7D;  //59099.9062500000000 in decimal.
#200;
//accumulated sum = 19997451.1250000000000
data_in = 32'h00275142;  //80522.0625000000000 in decimal.
#200;
//accumulated sum = 20077973.1875000000000
data_in = 32'h001DB3BC;  //60829.8750000000000 in decimal.
#200;
//accumulated sum = 20138803.0625000000000
data_in = 32'h001FE578;  //65323.7500000000000 in decimal.
#200;
//accumulated sum = 20204126.8125000000000
data_in = 32'h000E006D;  //28675.4062500000000 in decimal.
#200;
//accumulated sum = 20232802.2187500000000
data_in = 32'h000C3302;  //24984.0625000000000 in decimal.
#200;
//accumulated sum = 20257786.2812500000000
data_in = 32'h00052C80;  //10596.0000000000000 in decimal.
#200;
//accumulated sum = 20268382.2812500000000
data_in = 32'h0026B492;  //79268.5625000000000 in decimal.
#200;
//accumulated sum = 20347650.8437500000000
data_in = 32'h001EB007;  //62848.2187500000000 in decimal.
#200;
//accumulated sum = 20410499.0625000000000
data_in = 32'h0024D14F;  //75402.4687500000000 in decimal.
#200;
//accumulated sum = 20485901.5312500000000
data_in = 32'h001BF3DF;  //57246.9687500000000 in decimal.
#200;
//accumulated sum = 20543148.5000000000000
data_in = 32'h00110E67;  //34931.2187500000000 in decimal.
#200;
//accumulated sum = 20578079.7187500000000
data_in = 32'h00170DA6;  //47213.1875000000000 in decimal.
#200;
//accumulated sum = 20625292.9062500000000
data_in = 32'h002683FA;  //78879.8125000000000 in decimal.
#200;
//accumulated sum = 20704172.7187500000000
data_in = 32'h0016B323;  //46489.0937500000000 in decimal.
#200;
//accumulated sum = 20750661.8125000000000
data_in = 32'h00059A6B;  //11475.3437500000000 in decimal.
#200;
//accumulated sum = 20762137.1562500000000
data_in = 32'h0025D08E;  //77444.4375000000000 in decimal.
#200;
//accumulated sum = 20839581.5937500000000
data_in = 32'h0008B212;  //17808.5625000000000 in decimal.
#200;
//accumulated sum = 20857390.1562500000000
data_in = 32'h001FD47B;  //65187.8437500000000 in decimal.
#200;
//accumulated sum = 20922578.0000000000000
data_in = 32'h001BA5EE;  //56623.4375000000000 in decimal.
#200;
//accumulated sum = 20979201.4375000000000
data_in = 32'h001301D4;  //38926.6250000000000 in decimal.
#200;
//accumulated sum = 21018128.0625000000000
data_in = 32'h0000F4F1;  //1959.5312500000000 in decimal.
#200;
//accumulated sum = 21020087.5937500000000
data_in = 32'h00014F2A;  //2681.3125000000000 in decimal.
#200;
//accumulated sum = 21022768.9062500000000
data_in = 32'h000B81DD;  //23566.9062500000000 in decimal.
#200;
//accumulated sum = 21046335.8125000000000
data_in = 32'h00120D85;  //36972.1562500000000 in decimal.
#200;
//accumulated sum = 21083307.9687500000000
data_in = 32'h00282BA1;  //82269.0312500000000 in decimal.
#200;
//accumulated sum = 21165577.0000000000000
data_in = 32'h0028D892;  //83652.5625000000000 in decimal.
#200;
//accumulated sum = 21249229.5625000000000
data_in = 32'h001E1FD6;  //61694.6875000000000 in decimal.
#200;
//accumulated sum = 21310924.2500000000000
data_in = 32'h0005B15A;  //11658.8125000000000 in decimal.
#200;
//accumulated sum = 21322583.0625000000000
data_in = 32'h001066A7;  //33589.2187500000000 in decimal.
#200;
//accumulated sum = 21356172.2812500000000
data_in = 32'h0022F90E;  //71624.4375000000000 in decimal.
#200;
//accumulated sum = 21427796.7187500000000
data_in = 32'h0001E64E;  //3890.4375000000000 in decimal.
#200;
//accumulated sum = 21431687.1562500000000
data_in = 32'h00087E7C;  //17395.8750000000000 in decimal.
#200;
//accumulated sum = 21449083.0312500000000
data_in = 32'h001D63A8;  //60189.2500000000000 in decimal.
#200;
//accumulated sum = 21509272.2812500000000
data_in = 32'h001AB2CB;  //54678.3437500000000 in decimal.
#200;
//accumulated sum = 21563950.6250000000000
data_in = 32'h0000D3FB;  //1695.8437500000000 in decimal.
#200;
//accumulated sum = 21565646.4687500000000
data_in = 32'h000CAEAE;  //25973.4375000000000 in decimal.
#200;
//accumulated sum = 21591619.9062500000000
data_in = 32'h0019DF88;  //52988.2500000000000 in decimal.
#200;
//accumulated sum = 21644608.1562500000000
data_in = 32'h0012DE34;  //38641.6250000000000 in decimal.
#200;
//accumulated sum = 21683249.7812500000000
data_in = 32'h001D3A63;  //59859.0937500000000 in decimal.
#200;
//accumulated sum = 21743108.8750000000000
data_in = 32'h000BC1F4;  //24079.6250000000000 in decimal.
#200;
//accumulated sum = 21767188.5000000000000
data_in = 32'h00289F05;  //83192.1562500000000 in decimal.
#200;
//accumulated sum = 21850380.6562500000000
data_in = 32'h0010EC08;  //34656.2500000000000 in decimal.
#200;
//accumulated sum = 21885036.9062500000000
data_in = 32'h0004808B;  //9220.3437500000000 in decimal.
#200;
//accumulated sum = 21894257.2500000000000
data_in = 32'h002725CE;  //80174.4375000000000 in decimal.
#200;
//accumulated sum = 21974431.6875000000000
data_in = 32'h00066299;  //13076.7812500000000 in decimal.
#200;
//accumulated sum = 21987508.4687500000000
data_in = 32'h00082F3C;  //16761.8750000000000 in decimal.
#200;
//accumulated sum = 22004270.3437500000000
data_in = 32'h0000405F;  //514.9687500000000 in decimal.
#200;
//accumulated sum = 22004785.3125000000000
data_in = 32'h00161C36;  //45281.6875000000000 in decimal.
#200;
//accumulated sum = 22050067.0000000000000
data_in = 32'h0015ED67;  //44907.2187500000000 in decimal.
#200;
//accumulated sum = 22094974.2187500000000
data_in = 32'h00067DA1;  //13293.0312500000000 in decimal.
#200;
//accumulated sum = 22108267.2500000000000
data_in = 32'h000780FF;  //15367.9687500000000 in decimal.
#200;
//accumulated sum = 22123635.2187500000000
data_in = 32'h00030D82;  //6252.0625000000000 in decimal.
#200;
//accumulated sum = 22129887.2812500000000
data_in = 32'h000E7716;  //29624.6875000000000 in decimal.
#200;
//accumulated sum = 22159511.9687500000000
data_in = 32'h0022BE87;  //71156.2187500000000 in decimal.
#200;
//accumulated sum = 22230668.1875000000000
data_in = 32'h0018CB10;  //50776.5000000000000 in decimal.
#200;
//accumulated sum = 22281444.6875000000000
data_in = 32'h00057238;  //11153.7500000000000 in decimal.
#200;
//accumulated sum = 22292598.4375000000000
data_in = 32'h000F1570;  //30891.5000000000000 in decimal.
#200;
//accumulated sum = 22323489.9375000000000
data_in = 32'h00129F85;  //38140.1562500000000 in decimal.
#200;
//accumulated sum = 22361630.0937500000000
data_in = 32'h000D3C03;  //27104.0937500000000 in decimal.
#200;
//accumulated sum = 22388734.1875000000000
data_in = 32'h00087885;  //17348.1562500000000 in decimal.
#200;
//accumulated sum = 22406082.3437500000000
data_in = 32'h00075FB8;  //15101.7500000000000 in decimal.
#200;
//accumulated sum = 22421184.0937500000000
data_in = 32'h00102670;  //33075.5000000000000 in decimal.
#200;
//accumulated sum = 22454259.5937500000000
data_in = 32'h0024AA3D;  //75089.9062500000000 in decimal.
#200;
//accumulated sum = 22529349.5000000000000
data_in = 32'h000A6E20;  //21361.0000000000000 in decimal.
#200;
//accumulated sum = 22550710.5000000000000
data_in = 32'h000DB92D;  //28105.4062500000000 in decimal.
#200;
//accumulated sum = 22578815.9062500000000
data_in = 32'h0010EED3;  //34678.5937500000000 in decimal.
#200;
//accumulated sum = 22613494.5000000000000
data_in = 32'h00213184;  //67980.1250000000000 in decimal.
#200;
//accumulated sum = 22681474.6250000000000
data_in = 32'h0006CF69;  //13947.2812500000000 in decimal.
#200;
//accumulated sum = 22695421.9062500000000
data_in = 32'h000DC0D4;  //28166.6250000000000 in decimal.
#200;
//accumulated sum = 22723588.5312500000000
data_in = 32'h0000205B;  //258.8437500000000 in decimal.
#200;
//accumulated sum = 22723847.3750000000000
data_in = 32'h000E1BAE;  //28893.4375000000000 in decimal.
#200;
//accumulated sum = 22752740.8125000000000
data_in = 32'h0004858F;  //9260.4687500000000 in decimal.
#200;
//accumulated sum = 22762001.2812500000000
data_in = 32'h00001E89;  //244.2812500000000 in decimal.
#200;
//accumulated sum = 22762245.5625000000000
data_in = 32'h00012832;  //2369.5625000000000 in decimal.
#200;
//accumulated sum = 22764615.1250000000000
data_in = 32'h0006950E;  //13480.4375000000000 in decimal.
#200;
//accumulated sum = 22778095.5625000000000
data_in = 32'h000B6DD3;  //23406.5937500000000 in decimal.
#200;
//accumulated sum = 22801502.1562500000000
data_in = 32'h001D9B98;  //60636.7500000000000 in decimal.
#200;
//accumulated sum = 22862138.9062500000000
data_in = 32'h0008D2B0;  //18069.5000000000000 in decimal.
#200;
//accumulated sum = 22880208.4062500000000
data_in = 32'h0012CC0B;  //38496.3437500000000 in decimal.
#200;
//accumulated sum = 22918704.7500000000000
data_in = 32'h0023E524;  //73513.1250000000000 in decimal.
#200;
//accumulated sum = 22992217.8750000000000
data_in = 32'h001AD8A3;  //54981.0937500000000 in decimal.
#200;
//accumulated sum = 23047198.9687500000000
data_in = 32'h0018AF20;  //50553.0000000000000 in decimal.
#200;
//accumulated sum = 23097751.9687500000000
data_in = 32'h00098570;  //19499.5000000000000 in decimal.
#200;
//accumulated sum = 23117251.4687500000000
data_in = 32'h001DD4C4;  //61094.1250000000000 in decimal.
#200;
//accumulated sum = 23178345.5937500000000
data_in = 32'h00201BF5;  //65759.6562500000000 in decimal.
#200;
//accumulated sum = 23244105.2500000000000
data_in = 32'h000E8543;  //29738.0937500000000 in decimal.
#200;
//accumulated sum = 23273843.3437500000000
data_in = 32'h00033012;  //6528.5625000000000 in decimal.
#200;
//accumulated sum = 23280371.9062500000000
data_in = 32'h00172148;  //47370.2500000000000 in decimal.
#200;
//accumulated sum = 23327742.1562500000000
data_in = 32'h0016C554;  //46634.6250000000000 in decimal.
#200;
//accumulated sum = 23374376.7812500000000
data_in = 32'h00255026;  //76417.1875000000000 in decimal.
#200;
//accumulated sum = 23450793.9687500000000
data_in = 32'h0002B31B;  //5528.8437500000000 in decimal.
#200;
//accumulated sum = 23456322.8125000000000
data_in = 32'h00058CEF;  //11367.4687500000000 in decimal.
#200;
//accumulated sum = 23467690.2812500000000
data_in = 32'h0022690F;  //70472.4687500000000 in decimal.
#200;
//accumulated sum = 23538162.7500000000000
data_in = 32'h000C3AD1;  //25046.5312500000000 in decimal.
#200;
//accumulated sum = 23563209.2812500000000
data_in = 32'h00268F4D;  //78970.4062500000000 in decimal.
#200;
//accumulated sum = 23642179.6875000000000
data_in = 32'h001F6AC8;  //64342.2500000000000 in decimal.
#200;
//accumulated sum = 23706521.9375000000000
data_in = 32'h0006EAF8;  //14167.7500000000000 in decimal.
#200;
//accumulated sum = 23720689.6875000000000
data_in = 32'h0024FFB4;  //75773.6250000000000 in decimal.
#200;
//accumulated sum = 23796463.3125000000000
data_in = 32'h0022CD30;  //71273.5000000000000 in decimal.
#200;
//accumulated sum = 23867736.8125000000000
data_in = 32'h00067EFB;  //13303.8437500000000 in decimal.
#200;
//accumulated sum = 23881040.6562500000000
data_in = 32'h000EB9C8;  //30158.2500000000000 in decimal.
#200;
//accumulated sum = 23911198.9062500000000
data_in = 32'h00135032;  //39553.5625000000000 in decimal.
#200;
//accumulated sum = 23950752.4687500000000
data_in = 32'h002433C8;  //74142.2500000000000 in decimal.
#200;
//accumulated sum = 24024894.7187500000000
data_in = 32'h00084B9E;  //16988.9375000000000 in decimal.
#200;
//accumulated sum = 24041883.6562500000000
data_in = 32'h0001CAD2;  //3670.5625000000000 in decimal.
#200;
//accumulated sum = 24045554.2187500000000
data_in = 32'h0012A6FF;  //38199.9687500000000 in decimal.
#200;
//accumulated sum = 24083754.1875000000000
data_in = 32'h0003B890;  //7620.5000000000000 in decimal.
#200;
//accumulated sum = 24091374.6875000000000
data_in = 32'h000829D2;  //16718.5625000000000 in decimal.
#200;
//accumulated sum = 24108093.2500000000000
data_in = 32'h0002A69A;  //5428.8125000000000 in decimal.
#200;
//accumulated sum = 24113522.0625000000000
data_in = 32'h0023ADBF;  //73069.9687500000000 in decimal.
#200;
//accumulated sum = 24186592.0312500000000
data_in = 32'h001F4437;  //64033.7187500000000 in decimal.
#200;
//accumulated sum = 24250625.7500000000000
data_in = 32'h001C3567;  //57771.2187500000000 in decimal.
#200;
//accumulated sum = 24308396.9687500000000
data_in = 32'h00271BDB;  //80094.8437500000000 in decimal.
#200;
//accumulated sum = 24388491.8125000000000
data_in = 32'h00051C39;  //10465.7812500000000 in decimal.
#200;
//accumulated sum = 24398957.5937500000000
data_in = 32'h0009DFD0;  //20222.5000000000000 in decimal.
#200;
//accumulated sum = 24419180.0937500000000
data_in = 32'h0015867B;  //44083.8437500000000 in decimal.
#200;
//accumulated sum = 24463263.9375000000000
data_in = 32'h00001CAF;  //229.4687500000000 in decimal.
#200;
//accumulated sum = 24463493.4062500000000
data_in = 32'h0018A8F6;  //50503.6875000000000 in decimal.
#200;
//accumulated sum = 24513997.0937500000000
data_in = 32'h0018C13E;  //50697.9375000000000 in decimal.
#200;
//accumulated sum = 24564695.0312500000000
data_in = 32'h00223022;  //70017.0625000000000 in decimal.
#200;
//accumulated sum = 24634712.0937500000000
data_in = 32'h0025C501;  //77352.0312500000000 in decimal.
#200;
//accumulated sum = 24712064.1250000000000
data_in = 32'h0023B8F0;  //73159.5000000000000 in decimal.
#200;
//accumulated sum = 24785223.6250000000000
data_in = 32'h000DF079;  //28547.7812500000000 in decimal.
#200;
//accumulated sum = 24813771.4062500000000
data_in = 32'h000CE058;  //26370.7500000000000 in decimal.
#200;
//accumulated sum = 24840142.1562500000000
data_in = 32'h00237E9E;  //72692.9375000000000 in decimal.
#200;
//accumulated sum = 24912835.0937500000000
data_in = 32'h00185669;  //49843.2812500000000 in decimal.
#200;
//accumulated sum = 24962678.3750000000000
data_in = 32'h00096B9F;  //19292.9687500000000 in decimal.
#200;
//accumulated sum = 24981971.3437500000000
data_in = 32'h001A5206;  //53904.1875000000000 in decimal.
#200;
//accumulated sum = 25035875.5312500000000
data_in = 32'h001B4805;  //55872.1562500000000 in decimal.
#200;
//accumulated sum = 25091747.6875000000000
data_in = 32'h000094D4;  //1190.6250000000000 in decimal.
#200;
//accumulated sum = 25092938.3125000000000
data_in = 32'h000D9E4B;  //27890.3437500000000 in decimal.
#200;
//accumulated sum = 25120828.6562500000000
data_in = 32'h00064FE9;  //12927.2812500000000 in decimal.
#200;
//accumulated sum = 25133755.9375000000000
data_in = 32'h002487EA;  //74815.3125000000000 in decimal.
#200;
//accumulated sum = 25208571.2500000000000
data_in = 32'h0021F601;  //69552.0312500000000 in decimal.
#200;
//accumulated sum = 25278123.2812500000000
data_in = 32'h0018F859;  //51138.7812500000000 in decimal.
#200;
//accumulated sum = 25329262.0625000000000
data_in = 32'h001F84F5;  //64551.6562500000000 in decimal.
#200;
//accumulated sum = 25393813.7187500000000
data_in = 32'h00033757;  //6586.7187500000000 in decimal.
#200;
//accumulated sum = 25400400.4375000000000
data_in = 32'h0002F121;  //6025.0312500000000 in decimal.
#200;
//accumulated sum = 25406425.4687500000000
data_in = 32'h00244CA8;  //74341.2500000000000 in decimal.
#200;
//accumulated sum = 25480766.7187500000000
data_in = 32'h001A4ACD;  //53846.4062500000000 in decimal.
#200;
//accumulated sum = 25534613.1250000000000
data_in = 32'h001F7203;  //64400.0937500000000 in decimal.
#200;
//accumulated sum = 25599013.2187500000000
data_in = 32'h002284CC;  //70694.3750000000000 in decimal.
#200;
//accumulated sum = 25669707.5937500000000
data_in = 32'h000B8D47;  //23658.2187500000000 in decimal.
#200;
//accumulated sum = 25693365.8125000000000
data_in = 32'h0019FF49;  //53242.2812500000000 in decimal.
#200;
//accumulated sum = 25746608.0937500000000
data_in = 32'h00127D2F;  //37865.4687500000000 in decimal.
#200;
//accumulated sum = 25784473.5625000000000
data_in = 32'h000B273B;  //22841.8437500000000 in decimal.
#200;
//accumulated sum = 25807315.4062500000000
data_in = 32'h000F9EFE;  //31991.9375000000000 in decimal.
#200;
//accumulated sum = 25839307.3437500000000
data_in = 32'h00288303;  //82968.0937500000000 in decimal.
#200;
//accumulated sum = 25922275.4375000000000
data_in = 32'h000BCABE;  //24149.9375000000000 in decimal.
#200;
//accumulated sum = 25946425.3750000000000
data_in = 32'h00030919;  //6216.7812500000000 in decimal.
#200;
//accumulated sum = 25952642.1562500000000
data_in = 32'h0021125A;  //67730.8125000000000 in decimal.
#200;
//accumulated sum = 26020372.9687500000000
data_in = 32'h00194EF9;  //51831.7812500000000 in decimal.
#200;
//accumulated sum = 26072204.7500000000000
data_in = 32'h0004A643;  //9522.0937500000000 in decimal.
#200;
//accumulated sum = 26081726.8437500000000
data_in = 32'h00119993;  //36044.5937500000000 in decimal.
#200;
//accumulated sum = 26117771.4375000000000
data_in = 32'h000570C9;  //11142.2812500000000 in decimal.
#200;
//accumulated sum = 26128913.7187500000000
data_in = 32'h00289E08;  //83184.2500000000000 in decimal.
#200;
//accumulated sum = 26212097.9687500000000
data_in = 32'h00228F46;  //70778.1875000000000 in decimal.
#200;
//accumulated sum = 26282876.1562500000000
data_in = 32'h001400C5;  //40966.1562500000000 in decimal.
#200;
//accumulated sum = 26323842.3125000000000
data_in = 32'h002842F5;  //82455.6562500000000 in decimal.
#200;
//accumulated sum = 26406297.9687500000000
data_in = 32'h00108401;  //33824.0312500000000 in decimal.
#200;
//accumulated sum = 26440122.0000000000000
data_in = 32'h000A77E2;  //21439.0625000000000 in decimal.
#200;
//accumulated sum = 26461561.0625000000000
data_in = 32'h000D7119;  //27528.7812500000000 in decimal.
#200;
//accumulated sum = 26489089.8437500000000
data_in = 32'h001C77D4;  //58302.6250000000000 in decimal.
#200;
//accumulated sum = 26547392.4687500000000
data_in = 32'h0012EC84;  //38756.1250000000000 in decimal.
#200;
//accumulated sum = 26586148.5937500000000
data_in = 32'h0026B5C5;  //79278.1562500000000 in decimal.
#200;
//accumulated sum = 26665426.7500000000000
data_in = 32'h0019A399;  //52508.7812500000000 in decimal.
#200;
//accumulated sum = 26717935.5312500000000
data_in = 32'h00003385;  //412.1562500000000 in decimal.
#200;
//accumulated sum = 26718347.6875000000000
data_in = 32'h0011F898;  //36804.7500000000000 in decimal.
#200;
//accumulated sum = 26755152.4375000000000
data_in = 32'h0000BA96;  //1492.6875000000000 in decimal.
#200;
//accumulated sum = 26756645.1250000000000
data_in = 32'h0006C706;  //13880.1875000000000 in decimal.
#200;
//accumulated sum = 26770525.3125000000000
data_in = 32'h00226D0F;  //70504.4687500000000 in decimal.
#200;
//accumulated sum = 26841029.7812500000000
data_in = 32'h0011E88E;  //36676.4375000000000 in decimal.
#200;
//accumulated sum = 26877706.2187500000000
data_in = 32'h0011DB34;  //36569.6250000000000 in decimal.
#200;
//accumulated sum = 26914275.8437500000000
data_in = 32'h00219678;  //68787.7500000000000 in decimal.
#200;
//accumulated sum = 26983063.5937500000000
data_in = 32'h000F2FD1;  //31102.5312500000000 in decimal.
#200;
//accumulated sum = 27014166.1250000000000
data_in = 32'h0005CEBB;  //11893.8437500000000 in decimal.
#200;
//accumulated sum = 27026059.9687500000000
data_in = 32'h000AC2D2;  //22038.5625000000000 in decimal.
#200;
//accumulated sum = 27048098.5312500000000
data_in = 32'h00190F43;  //51322.0937500000000 in decimal.
#200;
//accumulated sum = 27099420.6250000000000
data_in = 32'h00048732;  //9273.5625000000000 in decimal.
#200;
//accumulated sum = 27108694.1875000000000
data_in = 32'h0020693D;  //66377.9062500000000 in decimal.
#200;
//accumulated sum = 27175072.0937500000000
data_in = 32'h00147926;  //41929.1875000000000 in decimal.
#200;
//accumulated sum = 27217001.2812500000000
data_in = 32'h001E6A51;  //62290.5312500000000 in decimal.
#200;
//accumulated sum = 27279291.8125000000000
data_in = 32'h001ACECB;  //54902.3437500000000 in decimal.
#200;
//accumulated sum = 27334194.1562500000000
data_in = 32'h001ABE69;  //54771.2812500000000 in decimal.
#200;
//accumulated sum = 27388965.4375000000000
data_in = 32'h0000E7FA;  //1855.8125000000000 in decimal.
#200;
//accumulated sum = 27390821.2500000000000
data_in = 32'h00233393;  //72092.5937500000000 in decimal.
#200;
//accumulated sum = 27462913.8437500000000
data_in = 32'h00078325;  //15385.1562500000000 in decimal.
#200;
//accumulated sum = 27478299.0000000000000
data_in = 32'h001BDFBC;  //57085.8750000000000 in decimal.
#200;
//accumulated sum = 27535384.8750000000000
data_in = 32'h0003FF86;  //8188.1875000000000 in decimal.
#200;
//accumulated sum = 27543573.0625000000000
data_in = 32'h000DC77B;  //28219.8437500000000 in decimal.
#200;
//accumulated sum = 27571792.9062500000000
data_in = 32'h001ECDB4;  //63085.6250000000000 in decimal.
#200;
//accumulated sum = 27634878.5312500000000
data_in = 32'h00183BEB;  //49631.3437500000000 in decimal.
#200;
//accumulated sum = 27684509.8750000000000
data_in = 32'h0006A239;  //13585.7812500000000 in decimal.
#200;
//accumulated sum = 27698095.6562500000000
data_in = 32'h0013C870;  //40515.5000000000000 in decimal.
#200;
//accumulated sum = 27738611.1562500000000
data_in = 32'h0007729B;  //15252.8437500000000 in decimal.
#200;
//accumulated sum = 27753864.0000000000000
data_in = 32'h0015DBC5;  //44766.1562500000000 in decimal.
#200;
//accumulated sum = 27798630.1562500000000
data_in = 32'h001B898A;  //56396.3125000000000 in decimal.
#200;
//accumulated sum = 27855026.4687500000000
data_in = 32'h0017BA18;  //48592.7500000000000 in decimal.
#200;
//accumulated sum = 27903619.2187500000000
data_in = 32'h002084C8;  //66598.2500000000000 in decimal.
#200;
//accumulated sum = 27970217.4687500000000
data_in = 32'h00143933;  //41417.5937500000000 in decimal.
#200;
//accumulated sum = 28011635.0625000000000
data_in = 32'h0011DCB2;  //36581.5625000000000 in decimal.
#200;
//accumulated sum = 28048216.6250000000000
data_in = 32'h000AF3B4;  //22429.6250000000000 in decimal.
#200;
//accumulated sum = 28070646.2500000000000
data_in = 32'h0009C450;  //20002.5000000000000 in decimal.
#200;
//accumulated sum = 28090648.7500000000000
data_in = 32'h001A6761;  //54075.0312500000000 in decimal.
#200;
//accumulated sum = 28144723.7812500000000
data_in = 32'h00032CAD;  //6501.4062500000000 in decimal.
#200;
//accumulated sum = 28151225.1875000000000
data_in = 32'h00217CE4;  //68583.1250000000000 in decimal.
#200;
//accumulated sum = 28219808.3125000000000
data_in = 32'h00210389;  //67612.2812500000000 in decimal.
#200;
//accumulated sum = 28287420.5937500000000
data_in = 32'h0002A9A9;  //5453.2812500000000 in decimal.
#200;
//accumulated sum = 28292873.8750000000000
data_in = 32'h001152BF;  //35477.9687500000000 in decimal.
#200;
//accumulated sum = 28328351.8437500000000
data_in = 32'h0022FA11;  //71632.5312500000000 in decimal.
#200;
//accumulated sum = 28399984.3750000000000
data_in = 32'h001D73E5;  //60319.1562500000000 in decimal.
#200;
//accumulated sum = 28460303.5312500000000
data_in = 32'h00240D3E;  //73833.9375000000000 in decimal.
#200;
//accumulated sum = 28534137.4687500000000
data_in = 32'h00171553;  //47274.5937500000000 in decimal.
#200;
//accumulated sum = 28581412.0625000000000
data_in = 32'h0023309D;  //72068.9062500000000 in decimal.
#200;
//accumulated sum = 28653480.9687500000000
data_in = 32'h00107AD2;  //33750.5625000000000 in decimal.
#200;
//accumulated sum = 28687231.5312500000000
data_in = 32'h00040A42;  //8274.0625000000000 in decimal.
#200;
//accumulated sum = 28695505.5937500000000
data_in = 32'h0000ACAE;  //1381.4375000000000 in decimal.
#200;
//accumulated sum = 28696887.0312500000000
data_in = 32'h00098872;  //19523.5625000000000 in decimal.
#200;
//accumulated sum = 28716410.5937500000000
data_in = 32'h001BEED6;  //57206.6875000000000 in decimal.
#200;
//accumulated sum = 28773617.2812500000000
data_in = 32'h00133340;  //39322.0000000000000 in decimal.
#200;
//accumulated sum = 28812939.2812500000000
data_in = 32'h0016AF86;  //46460.1875000000000 in decimal.
#200;
//accumulated sum = 28859399.4687500000000
data_in = 32'h000AD68B;  //22196.3437500000000 in decimal.
#200;
//accumulated sum = 28881595.8125000000000
data_in = 32'h001AA2E6;  //54551.1875000000000 in decimal.
#200;
//accumulated sum = 28936147.0000000000000
data_in = 32'h00166D07;  //45928.2187500000000 in decimal.
#200;
//accumulated sum = 28982075.2187500000000
data_in = 32'h001E9845;  //62658.1562500000000 in decimal.
#200;
//accumulated sum = 29044733.3750000000000
data_in = 32'h000D4313;  //27160.5937500000000 in decimal.
#200;
//accumulated sum = 29071893.9687500000000
data_in = 32'h000D3AD9;  //27094.7812500000000 in decimal.
#200;
//accumulated sum = 29098988.7500000000000
data_in = 32'h0013F3A8;  //40861.2500000000000 in decimal.
#200;
//accumulated sum = 29139850.0000000000000
data_in = 32'h0028D5D3;  //83630.5937500000000 in decimal.
#200;
//accumulated sum = 29223480.5937500000000
data_in = 32'h001A8E4B;  //54386.3437500000000 in decimal.
#200;
//accumulated sum = 29277866.9375000000000
data_in = 32'h00046FE7;  //9087.2187500000000 in decimal.
#200;
//accumulated sum = 29286954.1562500000000
data_in = 32'h00264459;  //78370.7812500000000 in decimal.
#200;
//accumulated sum = 29365324.9375000000000
data_in = 32'h0012CF04;  //38520.1250000000000 in decimal.
#200;
//accumulated sum = 29403845.0625000000000
data_in = 32'h00100730;  //32825.5000000000000 in decimal.
#200;
//accumulated sum = 29436670.5625000000000
data_in = 32'h0027B455;  //81314.6562500000000 in decimal.
#200;
//accumulated sum = 29517985.2187500000000
data_in = 32'h001FEA68;  //65363.2500000000000 in decimal.
#200;
//accumulated sum = 29583348.4687500000000
data_in = 32'h001E46A2;  //62005.0625000000000 in decimal.
#200;
//accumulated sum = 29645353.5312500000000
data_in = 32'h002087B1;  //66621.5312500000000 in decimal.
#200;
//accumulated sum = 29711975.0625000000000
data_in = 32'h00257818;  //76736.7500000000000 in decimal.
#200;
//accumulated sum = 29788711.8125000000000
data_in = 32'h000B876F;  //23611.4687500000000 in decimal.
#200;
//accumulated sum = 29812323.2812500000000
data_in = 32'h0014403E;  //41473.9375000000000 in decimal.
#200;
//accumulated sum = 29853797.2187500000000
data_in = 32'h000B7CBF;  //23525.9687500000000 in decimal.
#200;
//accumulated sum = 29877323.1875000000000
data_in = 32'h0023330B;  //72088.3437500000000 in decimal.
#200;
//accumulated sum = 29949411.5312500000000
data_in = 32'h00143EE9;  //41463.2812500000000 in decimal.
#200;
//accumulated sum = 29990874.8125000000000
data_in = 32'h0008E844;  //18242.1250000000000 in decimal.
#200;
//accumulated sum = 30009116.9375000000000
data_in = 32'h00153A88;  //43476.2500000000000 in decimal.
#200;
//accumulated sum = 30052593.1875000000000
data_in = 32'h001A14E2;  //53415.0625000000000 in decimal.
#200;
//accumulated sum = 30106008.2500000000000
data_in = 32'h000BAB09;  //23896.2812500000000 in decimal.
#200;
//accumulated sum = 30129904.5312500000000
data_in = 32'h00075949;  //15050.2812500000000 in decimal.
#200;
//accumulated sum = 30144954.8125000000000
data_in = 32'h0021849F;  //68644.9687500000000 in decimal.
#200;
//accumulated sum = 30213599.7812500000000
data_in = 32'h0002A2AF;  //5397.4687500000000 in decimal.
#200;
//accumulated sum = 30218997.2500000000000
data_in = 32'h001BB889;  //56772.2812500000000 in decimal.
#200;
//accumulated sum = 30275769.5312500000000
data_in = 32'h000BCF14;  //24184.6250000000000 in decimal.
#200;
//accumulated sum = 30299954.1562500000000
data_in = 32'h0006A253;  //13586.5937500000000 in decimal.
#200;
//accumulated sum = 30313540.7500000000000
data_in = 32'h00048119;  //9224.7812500000000 in decimal.
#200;
//accumulated sum = 30322765.5312500000000
data_in = 32'h0025B34B;  //77210.3437500000000 in decimal.
#200;
//accumulated sum = 30399975.8750000000000
data_in = 32'h00271DF4;  //80111.6250000000000 in decimal.
#200;
//accumulated sum = 30480087.5000000000000
data_in = 32'h001EB0B0;  //62853.5000000000000 in decimal.
#200;
//accumulated sum = 30542941.0000000000000
data_in = 32'h0009001D;  //18432.9062500000000 in decimal.
#200;
//accumulated sum = 30561373.9062500000000
data_in = 32'h000EBCC6;  //30182.1875000000000 in decimal.
#200;
//accumulated sum = 30591556.0937500000000
data_in = 32'h00277D24;  //80873.1250000000000 in decimal.
#200;
//accumulated sum = 30672429.2187500000000
data_in = 32'h00094EE4;  //19063.1250000000000 in decimal.
#200;
//accumulated sum = 30691492.3437500000000
data_in = 32'h001B2FA1;  //55677.0312500000000 in decimal.
#200;
//accumulated sum = 30747169.3750000000000
data_in = 32'h000F2720;  //31033.0000000000000 in decimal.
#200;
//accumulated sum = 30778202.3750000000000
data_in = 32'h001451D0;  //41614.5000000000000 in decimal.
#200;
//accumulated sum = 30819816.8750000000000
data_in = 32'h00212D77;  //67947.7187500000000 in decimal.
#200;
//accumulated sum = 30887764.5937500000000
data_in = 32'h0012C85A;  //38466.8125000000000 in decimal.
#200;
//accumulated sum = 30926231.4062500000000
data_in = 32'h001D1F5D;  //59642.9062500000000 in decimal.
#200;
//accumulated sum = 30985874.3125000000000
data_in = 32'h00032A54;  //6482.6250000000000 in decimal.
#200;
//accumulated sum = 30992356.9375000000000
data_in = 32'h00034CE9;  //6759.2812500000000 in decimal.
#200;
//accumulated sum = 30999116.2187500000000
data_in = 32'h0000BE95;  //1524.6562500000000 in decimal.
#200;
//accumulated sum = 31000640.8750000000000
data_in = 32'h00187CD5;  //50150.6562500000000 in decimal.
#200;
//accumulated sum = 31050791.5312500000000
data_in = 32'h00122F4A;  //37242.3125000000000 in decimal.
#200;
//accumulated sum = 31088033.8437500000000
data_in = 32'h000FBA50;  //32210.5000000000000 in decimal.
#200;
//accumulated sum = 31120244.3437500000000
data_in = 32'h0011E94C;  //36682.3750000000000 in decimal.
#200;
//accumulated sum = 31156926.7187500000000
data_in = 32'h0021694C;  //68426.3750000000000 in decimal.
#200;
//accumulated sum = 31225353.0937500000000
data_in = 32'h00257A0D;  //76752.4062500000000 in decimal.
#200;
//accumulated sum = 31302105.5000000000000
data_in = 32'h001B1710;  //55480.5000000000000 in decimal.
#200;
//accumulated sum = 31357586.0000000000000
data_in = 32'h001A00D4;  //53254.6250000000000 in decimal.
#200;
//accumulated sum = 31410840.6250000000000
data_in = 32'h0008C200;  //17936.0000000000000 in decimal.
#200;
//accumulated sum = 31428776.6250000000000
data_in = 32'h00095C84;  //19172.1250000000000 in decimal.
#200;
//accumulated sum = 31447948.7500000000000
data_in = 32'h00172F1E;  //47480.9375000000000 in decimal.
#200;
//accumulated sum = 31495429.6875000000000
data_in = 32'h000A4720;  //21049.0000000000000 in decimal.
#200;
//accumulated sum = 31516478.6875000000000
data_in = 32'h001B6B37;  //56153.7187500000000 in decimal.
#200;
//accumulated sum = 31572632.4062500000000
data_in = 32'h000843F1;  //16927.5312500000000 in decimal.
#200;
//accumulated sum = 31589559.9375000000000
data_in = 32'h0002A510;  //5416.5000000000000 in decimal.
#200;
//accumulated sum = 31594976.4375000000000
data_in = 32'h000B815E;  //23562.9375000000000 in decimal.
#200;
//accumulated sum = 31618539.3750000000000
data_in = 32'h000A28B2;  //20805.5625000000000 in decimal.
#200;
//accumulated sum = 31639344.9375000000000
data_in = 32'h0006B377;  //13723.7187500000000 in decimal.
#200;
//accumulated sum = 31653068.6562500000000
data_in = 32'h0019FBE1;  //53215.0312500000000 in decimal.
#200;
//accumulated sum = 31706283.6875000000000
data_in = 32'h001AD9AB;  //54989.3437500000000 in decimal.
#200;
//accumulated sum = 31761273.0312500000000
data_in = 32'h001F75E5;  //64431.1562500000000 in decimal.
#200;
//accumulated sum = 31825704.1875000000000
data_in = 32'h00007E1E;  //1008.9375000000000 in decimal.
#200;
//accumulated sum = 31826713.1250000000000
data_in = 32'h0003E689;  //7988.2812500000000 in decimal.
#200;
//accumulated sum = 31834701.4062500000000
data_in = 32'h002347B7;  //72253.7187500000000 in decimal.
#200;
//accumulated sum = 31906955.1250000000000
data_in = 32'h000AEACA;  //22358.3125000000000 in decimal.
#200;
//accumulated sum = 31929313.4375000000000
data_in = 32'h000A62E9;  //21271.2812500000000 in decimal.
#200;
//accumulated sum = 31950584.7187500000000
data_in = 32'h0017C8AB;  //48709.3437500000000 in decimal.
#200;
//accumulated sum = 31999294.0625000000000
data_in = 32'h000B79D0;  //23502.5000000000000 in decimal.
#200;
//accumulated sum = 32022796.5625000000000
data_in = 32'h00178731;  //48185.5312500000000 in decimal.
#200;
//accumulated sum = 32070982.0937500000000
data_in = 32'h001D7194;  //60300.6250000000000 in decimal.
#200;
//accumulated sum = 32131282.7187500000000
data_in = 32'h0026815F;  //78858.9687500000000 in decimal.
#200;
//accumulated sum = 32210141.6875000000000
data_in = 32'h001B981D;  //56512.9062500000000 in decimal.
#200;
//accumulated sum = 32266654.5937500000000
data_in = 32'h0009DD60;  //20203.0000000000000 in decimal.
#200;
//accumulated sum = 32286857.5937500000000
data_in = 32'h000759F5;  //15055.6562500000000 in decimal.
#200;
//accumulated sum = 32301913.2500000000000
data_in = 32'h00199441;  //52386.0312500000000 in decimal.
#200;
//accumulated sum = 32354299.2812500000000
data_in = 32'h000EBEEF;  //30199.4687500000000 in decimal.
#200;
//accumulated sum = 32384498.7500000000000
data_in = 32'h001A1EA3;  //53493.0937500000000 in decimal.
#200;
//accumulated sum = 32437991.8437500000000
data_in = 32'h000A70CA;  //21382.3125000000000 in decimal.
#200;
//accumulated sum = 32459374.1562500000000
data_in = 32'h0017C2C3;  //48662.0937500000000 in decimal.
#200;
//accumulated sum = 32508036.2500000000000
data_in = 32'h000DC36A;  //28187.3125000000000 in decimal.
#200;
//accumulated sum = 32536223.5625000000000
data_in = 32'h00118CD1;  //35942.5312500000000 in decimal.
#200;
//accumulated sum = 32572166.0937500000000
data_in = 32'h00287981;  //82892.0312500000000 in decimal.
#200;
//accumulated sum = 32655058.1250000000000
data_in = 32'h0015F12C;  //44937.3750000000000 in decimal.
#200;
//accumulated sum = 32699995.5000000000000
data_in = 32'h0018E351;  //50970.5312500000000 in decimal.
#200;
//accumulated sum = 32750966.0312500000000
data_in = 32'h001BE921;  //57161.0312500000000 in decimal.
#200;
//accumulated sum = 32808127.0625000000000
data_in = 32'h00083FAD;  //16893.4062500000000 in decimal.
#200;
//accumulated sum = 32825020.4687500000000
data_in = 32'h0011D02F;  //36481.4687500000000 in decimal.
#200;
//accumulated sum = 32861501.9375000000000
data_in = 32'h001EB266;  //62867.1875000000000 in decimal.
#200;
//accumulated sum = 32924369.1250000000000
data_in = 32'h001D45A3;  //59949.0937500000000 in decimal.
#200;
//accumulated sum = 32984318.2187500000000
data_in = 32'h000D6520;  //27433.0000000000000 in decimal.
#200;
//accumulated sum = 33011751.2187500000000
data_in = 32'h00028007;  //5120.2187500000000 in decimal.
#200;
//accumulated sum = 33016871.4375000000000
data_in = 32'h0021A2B5;  //68885.6562500000000 in decimal.
#200;
//accumulated sum = 33085757.0937500000000
data_in = 32'h001660B1;  //45829.5312500000000 in decimal.
#200;
//accumulated sum = 33131586.6250000000000
data_in = 32'h0000E4C4;  //1830.1250000000000 in decimal.
#200;
//accumulated sum = 33133416.7500000000000
data_in = 32'h001AA0ED;  //54535.4062500000000 in decimal.
#200;
//accumulated sum = 33187952.1562500000000
data_in = 32'h0013CD9F;  //40556.9687500000000 in decimal.
#200;
//accumulated sum = 33228509.1250000000000
data_in = 32'h001663B4;  //45853.6250000000000 in decimal.
#200;
//accumulated sum = 33274362.7500000000000
data_in = 32'h00177E98;  //48116.7500000000000 in decimal.
#200;
//accumulated sum = 33322479.5000000000000
data_in = 32'h000C6D83;  //25452.0937500000000 in decimal.
#200;
//accumulated sum = 33347931.5937500000000
data_in = 32'h00090029;  //18433.2812500000000 in decimal.
#200;
//accumulated sum = 33366364.8750000000000
data_in = 32'h00230DE5;  //71791.1562500000000 in decimal.
#200;
//accumulated sum = 33438156.0312500000000
data_in = 32'h001C7549;  //58282.2812500000000 in decimal.
#200;
//accumulated sum = 33496438.3125000000000
data_in = 32'h001C30B6;  //57733.6875000000000 in decimal.
#200;
//accumulated sum = 33554172.0000000000000
data_in = 32'h00215034;  //68225.6250000000000 in decimal.
#200;
//accumulated sum = 33622397.6250000000000
data_in = 32'h001D99B4;  //60621.6250000000000 in decimal.
#200;
//accumulated sum = 33683019.2500000000000
data_in = 32'h00238B1E;  //72792.9375000000000 in decimal.
#200;
//accumulated sum = 33755812.1875000000000
data_in = 32'h0009BBBB;  //19933.8437500000000 in decimal.
#200;
//accumulated sum = 33775746.0312500000000
data_in = 32'h001968FD;  //52039.9062500000000 in decimal.
#200;
//accumulated sum = 33827785.9375000000000
data_in = 32'h00077F8C;  //15356.3750000000000 in decimal.
#200;
//accumulated sum = 33843142.3125000000000
data_in = 32'h0009E8C3;  //20294.0937500000000 in decimal.
#200;
//accumulated sum = 33863436.4062500000000
data_in = 32'h0005A440;  //11554.0000000000000 in decimal.
#200;
//accumulated sum = 33874990.4062500000000
data_in = 32'h00006946;  //842.1875000000000 in decimal.
#200;
//accumulated sum = 33875832.5937500000000
data_in = 32'h0024E2F2;  //75543.5625000000000 in decimal.
#200;
//accumulated sum = 33951376.1562500000000
data_in = 32'h0027DA87;  //81620.2187500000000 in decimal.
#200;
//accumulated sum = 34032996.3750000000000
data_in = 32'h000CEB04;  //26456.1250000000000 in decimal.
#200;
//accumulated sum = 34059452.5000000000000
data_in = 32'h00127D46;  //37866.1875000000000 in decimal.
#200;
//accumulated sum = 34097318.6875000000000
data_in = 32'h001FC0B3;  //65029.5937500000000 in decimal.
#200;
//accumulated sum = 34162348.2812500000000
data_in = 32'h001D885B;  //60482.8437500000000 in decimal.
#200;
//accumulated sum = 34222831.1250000000000
data_in = 32'h001BC25D;  //56850.9062500000000 in decimal.
#200;
//accumulated sum = 34279682.0312500000000
data_in = 32'h0015DF07;  //44792.2187500000000 in decimal.
#200;
//accumulated sum = 34324474.2500000000000
data_in = 32'h00047717;  //9144.7187500000000 in decimal.
#200;
//accumulated sum = 34333618.9687500000000
data_in = 32'h002381DA;  //72718.8125000000000 in decimal.
#200;
//accumulated sum = 34406337.7812500000000
data_in = 32'h00163856;  //45506.6875000000000 in decimal.
#200;
//accumulated sum = 34451844.4687500000000
data_in = 32'h0002F780;  //6076.0000000000000 in decimal.
#200;
//accumulated sum = 34457920.4687500000000
data_in = 32'h000893A2;  //17565.0625000000000 in decimal.
#200;
//accumulated sum = 34475485.5312500000000
data_in = 32'h001264F6;  //37671.6875000000000 in decimal.
#200;
//accumulated sum = 34513157.2187500000000
data_in = 32'h00167832;  //46017.5625000000000 in decimal.
#200;
//accumulated sum = 34559174.7812500000000
data_in = 32'h001722F6;  //47383.6875000000000 in decimal.
#200;
//accumulated sum = 34606558.4687500000000
data_in = 32'h001E8822;  //62529.0625000000000 in decimal.
#200;
//accumulated sum = 34669087.5312500000000
data_in = 32'h00007F9C;  //1020.8750000000000 in decimal.
#200;
//accumulated sum = 34670108.4062500000000
data_in = 32'h0019C4EF;  //52775.4687500000000 in decimal.
#200;
//accumulated sum = 34722883.8750000000000
data_in = 32'h00215A63;  //68307.0937500000000 in decimal.
#200;
//accumulated sum = 34791190.9687500000000
data_in = 32'h00130F7B;  //39035.8437500000000 in decimal.
#200;
//accumulated sum = 34830226.8125000000000
data_in = 32'h0014A9FE;  //42319.9375000000000 in decimal.
#200;
//accumulated sum = 34872546.7500000000000
data_in = 32'h001A0F85;  //53372.1562500000000 in decimal.
#200;
//accumulated sum = 34925918.9062500000000
data_in = 32'h00172E78;  //47475.7500000000000 in decimal.
#200;
//accumulated sum = 34973394.6562500000000
data_in = 32'h0008D4EA;  //18087.3125000000000 in decimal.
#200;
//accumulated sum = 34991481.9687500000000
data_in = 32'h000A1516;  //20648.6875000000000 in decimal.
#200;
//accumulated sum = 35012130.6562500000000
data_in = 32'h001D53F3;  //60063.5937500000000 in decimal.
#200;
//accumulated sum = 35072194.2500000000000
data_in = 32'h0027CB97;  //81500.7187500000000 in decimal.
#200;
//accumulated sum = 35153694.9687500000000
data_in = 32'h00002AB8;  //341.7500000000000 in decimal.
#200;
//accumulated sum = 35154036.7187500000000
data_in = 32'h000878F8;  //17351.7500000000000 in decimal.
#200;
//accumulated sum = 35171388.4687500000000
data_in = 32'h00135E93;  //39668.5937500000000 in decimal.
#200;
//accumulated sum = 35211057.0625000000000
data_in = 32'h001D380F;  //59840.4687500000000 in decimal.
#200;
//accumulated sum = 35270897.5312500000000
data_in = 32'h002079C7;  //66510.2187500000000 in decimal.
#200;
//accumulated sum = 35337407.7500000000000
data_in = 32'h00071A70;  //14547.5000000000000 in decimal.
#200;
//accumulated sum = 35351955.2500000000000
data_in = 32'h0005F164;  //12171.1250000000000 in decimal.
#200;
//accumulated sum = 35364126.3750000000000
data_in = 32'h000D0774;  //26683.6250000000000 in decimal.
#200;
//accumulated sum = 35390810.0000000000000
data_in = 32'h00256A16;  //76624.6875000000000 in decimal.
#200;
//accumulated sum = 35467434.6875000000000
data_in = 32'h001596FF;  //44215.9687500000000 in decimal.
#200;
//accumulated sum = 35511650.6562500000000
data_in = 32'h0010D128;  //34441.2500000000000 in decimal.
#200;
//accumulated sum = 35546091.9062500000000
data_in = 32'h00218119;  //68616.7812500000000 in decimal.
#200;
//accumulated sum = 35614708.6875000000000
data_in = 32'h000F73E4;  //31647.1250000000000 in decimal.
#200;
//accumulated sum = 35646355.8125000000000
data_in = 32'h000A4E54;  //21106.6250000000000 in decimal.
#200;
//accumulated sum = 35667462.4375000000000
data_in = 32'h00168DF6;  //46191.6875000000000 in decimal.
#200;
//accumulated sum = 35713654.1250000000000
data_in = 32'h0012445B;  //37410.8437500000000 in decimal.
#200;
//accumulated sum = 35751064.9687500000000
data_in = 32'h001D54A3;  //60069.0937500000000 in decimal.
#200;
//accumulated sum = 35811134.0625000000000
data_in = 32'h0019072B;  //51257.3437500000000 in decimal.
#200;
//accumulated sum = 35862391.4062500000000
data_in = 32'h001D93EA;  //60575.3125000000000 in decimal.
#200;
//accumulated sum = 35922966.7187500000000
data_in = 32'h000AF4F0;  //22439.5000000000000 in decimal.
#200;
//accumulated sum = 35945406.2187500000000
data_in = 32'h001D93E9;  //60575.2812500000000 in decimal.
#200;
//accumulated sum = 36005981.5000000000000
data_in = 32'h000A0AC3;  //20566.0937500000000 in decimal.
#200;
//accumulated sum = 36026547.5937500000000
data_in = 32'h0002F9D3;  //6094.5937500000000 in decimal.
#200;
//accumulated sum = 36032642.1875000000000
data_in = 32'h001C8E64;  //58483.1250000000000 in decimal.
#200;
//accumulated sum = 36091125.3125000000000
data_in = 32'h00238096;  //72708.6875000000000 in decimal.
#200;
//accumulated sum = 36163834.0000000000000
data_in = 32'h00055A98;  //10964.7500000000000 in decimal.
#200;
//accumulated sum = 36174798.7500000000000
data_in = 32'h00201603;  //65712.0937500000000 in decimal.
#200;
//accumulated sum = 36240510.8437500000000
data_in = 32'h001D2807;  //59712.2187500000000 in decimal.
#200;
//accumulated sum = 36300223.0625000000000
data_in = 32'h00223EED;  //70135.4062500000000 in decimal.
#200;
//accumulated sum = 36370358.4687500000000
data_in = 32'h0017DD71;  //48875.5312500000000 in decimal.
#200;
//accumulated sum = 36419234.0000000000000
data_in = 32'h0014EF3F;  //42873.9687500000000 in decimal.
#200;
//accumulated sum = 36462107.9687500000000
data_in = 32'h0007EB48;  //16218.2500000000000 in decimal.
#200;
//accumulated sum = 36478326.2187500000000
data_in = 32'h00089FAC;  //17661.3750000000000 in decimal.
#200;
//accumulated sum = 36495987.5937500000000
data_in = 32'h000A79C7;  //21454.2187500000000 in decimal.
#200;
//accumulated sum = 36517441.8125000000000
data_in = 32'h0013C9B9;  //40525.7812500000000 in decimal.
#200;
//accumulated sum = 36557967.5937500000000
data_in = 32'h001648B5;  //45637.6562500000000 in decimal.
#200;
//accumulated sum = 36603605.2500000000000
data_in = 32'h00122BFF;  //37215.9687500000000 in decimal.
#200;
//accumulated sum = 36640821.2187500000000
data_in = 32'h0010541B;  //33440.8437500000000 in decimal.
#200;
//accumulated sum = 36674262.0625000000000
data_in = 32'h001F779C;  //64444.8750000000000 in decimal.
#200;
//accumulated sum = 36738706.9375000000000
data_in = 32'h001301F2;  //38927.5625000000000 in decimal.
#200;
//accumulated sum = 36777634.5000000000000
data_in = 32'h001A70FE;  //54151.9375000000000 in decimal.
#200;
//accumulated sum = 36831786.4375000000000
data_in = 32'h0015B286;  //44436.1875000000000 in decimal.
#200;
//accumulated sum = 36876222.6250000000000
data_in = 32'h000A9F10;  //21752.5000000000000 in decimal.
#200;
//accumulated sum = 36897975.1250000000000
data_in = 32'h002880C4;  //82950.1250000000000 in decimal.
#200;
//accumulated sum = 36980925.2500000000000
data_in = 32'h0015CA08;  //44624.2500000000000 in decimal.
#200;
//accumulated sum = 37025549.5000000000000
data_in = 32'h001E96E0;  //62647.0000000000000 in decimal.
#200;
//accumulated sum = 37088196.5000000000000
data_in = 32'h000B7647;  //23474.2187500000000 in decimal.
#200;
//accumulated sum = 37111670.7187500000000
data_in = 32'h00226568;  //70443.2500000000000 in decimal.
#200;
//accumulated sum = 37182113.9687500000000
data_in = 32'h001C8FDE;  //58494.9375000000000 in decimal.
#200;
//accumulated sum = 37240608.9062500000000
data_in = 32'h00003FA3;  //509.0937500000000 in decimal.
#200;
//accumulated sum = 37241118.0000000000000
data_in = 32'h0001E9CB;  //3918.3437500000000 in decimal.
#200;
//accumulated sum = 37245036.3437500000000
data_in = 32'h000C87E4;  //25663.1250000000000 in decimal.
#200;
//accumulated sum = 37270699.4687500000000
data_in = 32'h0006353B;  //12713.8437500000000 in decimal.
#200;
//accumulated sum = 37283413.3125000000000
data_in = 32'd0;

end
endmodule
