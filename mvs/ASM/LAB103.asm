*---------------------------------------------------------------------*
*                                                                     *
*---+----1----+----2----+----3----+----4----+----5----+----6----+----7*
LAB103   CSECT ,             COMMA REQUIRED IF COMMENT ON THIS STMT
*---------------------------------------------------------------------*
         LARL  12,LAB103          Load the address of LAB103 in R12
*        000                      Instruct : X'C0C0 0000 0000'
*        C00                      Length   : 3 Halfwords (6 bytes)
         USING LAB103,12          Use R12 as base register
*---------------------------------------------------------------------*
*
*
*---------------------------------------------------------------------*
         DC    H'0'               Invalid opcode causes abend S0C1
*                                 Instruct : X'0000'
*                                 Length   : 1 Halfword  (2 bytes)
*---------------------------------------------------------------------*
*  --->  Assembler begins Literal pool here
*        ...   First Fullword Literal
*        ...   ...
*        ...   First Halfword Literal
*        ...   ...
*---------------------------------------------------------------------*
         END
