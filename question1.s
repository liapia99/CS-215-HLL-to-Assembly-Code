//if (A>=B); A = A - B; Else B = B + A;

ADR R0, A
      LDR R1, [R0]
      ADR R2, B
      LDR R3, [R2]
      CMP R1, R3
      BGE true
      ADD R4, R3, R1
      STR R4, [R2]
      B done
true 
      SUB R5, R1, R3
      STR R5, [R0]
done
