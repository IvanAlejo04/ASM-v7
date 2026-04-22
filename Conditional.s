.global _start
_start:

    MOV R1, #10
    MOV R2, #20

    CMP R2, R1
    BGT con
    MOV R3, #0
    B END

con:
    MOV R3, #1
end:
    SWI 0


