//If (A>B) OR (B<C) then A = A + C Else B = C - A

ADR R0, A
      LDR R1, [R0]
      ADR R2, B
      LDR R3, [R2]
      ADR R4, C
      LDR R5, [R4]
      CMP R1, R3
      BGT true
      CMP R3, R5
      BLT true
      SUB R6, R5, R1
      STR R6, [R2]
      B done
true 
      ADD R7, R1,R5
      STR R7, [R0]
done
