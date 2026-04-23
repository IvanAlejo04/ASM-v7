.section .text
.global _start

_start:
    MOV R1, #10         @ Initialize our "Counter" to 10

loop:
    SUBS R1, R1, #1     @ SUB + S: Subtract 1 AND update the Status Flags (CPSR)
    MOV R2, R1          @ Monitor: Copy current R1 to R2 to see the countdown

    BNE loop            @ "Branch if Not Equal" to zero. 
                        @ It checks the Z (Zero) flag. If Z=0 (meaning R1 != 0), jump back.

    MOV R0, #100        @ Loop finished! Set R0 to 100 as a "success" signal.
    

    SWI 0          