.global _start
_start:

MOV R1, #20
MOV R2, #10

    @ADD
        ADD R3, R2, R1  @equivalent of saying int r3 = r2 + r1;
    @SUB
        SUB R4, R1, R2 @equivalent of saying int r3 = r1 - r2;
    @MUL 
        MUL R5, R1, R2 @equivalent of saying int r3 = r1 * r2;
    @division wont work using UDIV must make a work around using loop


SWI 0