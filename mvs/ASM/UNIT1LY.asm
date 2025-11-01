*---------------------------------------------------------------------*
*                                                                     *
*---+----1----+----2----+----3----+----4----+----5----+----6----+----7*
UNIT1LY  CSECT ,             COMMA REQUIRED IF COMMENT ON THIS STMT
*---------------------------------------------------------------------*
         LARL  12,UNIT1LY         Load the address of LAB102 in R12
*        000                      Instruct : X'C0C0 0000 0000'
*        C00                      Length   : 3 Halfwords (6 bytes)
         USING UNIT1LY,12         Use R12 as base register
*---------------------------------------------------------------------*
*
         LY    5,=F'187'          Address  : X'0000 0006'
*                                 Opcode   : X'E3 58'  (LY)
*                                 Register : X'5'   (R5 Low-half)
*                                 Index    : X'0'
*                                 Base reg : X'C'   (R12)
*                                 Offset   : X'018' (6+6+6+2 dw/al)
*                                 Instruct : X'E350 C018 0058'
*                                 Length   : 3 Halfwords (6 bytes)
*                                 Literal  : X'0000 00BB'
*                                 R5  --->   X'.... .... 0000 00BB'
*
         LHY   6,=H'2048'         Address  : X'0000 000C'
*                                 Opcode   : X'E3 78'  (LHY)
*                                 Register : X'6'   (R6 Low-half)
*                                 Index    : X'0'
*                                 Base reg : X'C'   (R12)
*                                 Offset   : X'01C' (X'018' + 4)
*                                 Instruct : X'E360 C01C 0078'
*                                 Length   : 3 Halfwords (6 bytes)
*                                 Literal  : X'0800'
*                                 R6  --->   X'.... .... 0000 0800'
*
*---------------------------------------------------------------------*
         DC    H'0'               Invalid opcode causes abend S0C1
*                                 Address  : X'0000 0012'
*                                 Instruct : X'0000'
*                                 Length   : 1 Halfword  (2 bytes)
*---------------------------------------------------------------------*
*  --->  Assembler begins Literal pool here
*        018   First Fullword Literal
*        ...   ...
*        ...   First Halfword Literal
*        ...   ...
*---------------------------------------------------------------------*
         END
