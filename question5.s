// For x = 1 to 10 A = A + x Next x

      ADR R0, X
      ADR R1, A
      MOV R3, #1
      MOV R4, #10
      LDR R6, [R1]
      STR R3, [R0]
loop
      CMP R3, R4
      BGT done 
      ADD R6, R6, R3
      STR R6, [R1]
      ADD R3, R3, #1
      STR R3, [R0]
      B loop
done
