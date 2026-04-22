.global _start
_start:

    MOV R1, #2
    MOV R2, #3
    MOV R3, R2

@CONDITIONAL

    CMP R1, R2 @compare r1 and r2
    BGT bridge_if_greater @ex, r1 > r2

    MOV R5, #0
    B end1

bridge_if_greater:
    MOV R5, #1
end1:

    CMP R2, R1 @compare r2 and r1
    BLT bridge_if_less @ex, r2 < r1

    MOV R6, #0
    B end2

bridge_if_less:
    MOV R6, #1
end2:

    CMP R2, R3 @compare r2 and r3
    BEQ bridge_if_equal @ex, r2 == r3

    MOV R7, #0
    B end3

bridge_if_equal:
    MOV R7, #1
end3:
    CMP R1, R3 @compare r1 and r3
    BGE bridge_if_greater_equal @ex, r1 >= r3

    MOV R7, #0
    B end4
bridge_if_greater_equal:
    MOV R7, #1
end4:
    ADD R4, R1, R2
    CMP R1, R4 @compare r1 and r4 ex. r1 < r4
    BLE bridge_if_less_equal @ex, r1 <= r4

    MOV R8, #0
    B end5

bridge_if_less_equal:
    MOV R8, #1
end5:

@FLAG
    MOV R9, #1

    SWI 0
