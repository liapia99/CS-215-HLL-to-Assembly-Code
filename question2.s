//if ((a>=b) AND (b==c)) OR (a<=c) then a = b + c else a = b - c 

ADR R0, a
      LDR R1, [R0]
      ADR R2, b
      LDR R3, [R2]
      ADR R4, c
      LDR R5, [R4]
      CMP R1, R3
      BLT maybe not
      CMP R3, R5
      BE true
maybe not 
      CMP R1, R5
      BLE true
      SUB R6, R3, R5
      B store
true 
      ADD R6, R3, R5
store 
      STR R6, [R0]
