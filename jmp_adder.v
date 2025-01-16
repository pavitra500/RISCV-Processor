// File: jmp_adder.v
// Generated by MyHDL 0.11
// Date: Mon Dec 28 14:44:59 2020


`timescale 1ns/10ps

module jmp_adder (
    reset,
    read_addr,
    shl,
    jmp_addr
);


input reset;
input [31:0] read_addr;
input [31:0] shl;
output [31:0] jmp_addr;
reg [31:0] jmp_addr;




always @(read_addr, reset, shl) begin: JMP_ADDER_JADDER
    if ((reset == 1)) begin
        jmp_addr = (read_addr + shl);
    end
end

endmodule
