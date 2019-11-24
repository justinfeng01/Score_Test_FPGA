
`timescale 1 ns / 1 ps

  module Conv_mul_mul_16nsfYi_DSP48_3(a, b, p);
input [16 - 1 : 0] a; // synthesis attribute keep a "true"
input [13 - 1 : 0] b; // synthesis attribute keep b "true"
output [29 - 1 : 0] p; // synthesis attribute keep p "true"

assign p = $unsigned (a) * $unsigned (b);

endmodule

`timescale 1 ns / 1 ps
module Conv_mul_mul_16nsfYi(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



Conv_mul_mul_16nsfYi_DSP48_3 Conv_mul_mul_16nsfYi_DSP48_3_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

