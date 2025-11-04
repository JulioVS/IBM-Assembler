*---------------------------------------------------------------------*
*                                                                     *
*---+----1----+----2----+----3----+----4----+----5----+----6----+----7*
UNIT1L1  CSECT ,             COMMA REQUIRED IF COMMENT ON THIS STMT
*---------------------------------------------------------------------*
         LARL  12,UNIT1L1         Load the address of UNIT1L1 in R12
*        000                      Instruct : X'C0C0 0000 0000'
*        C00                      Length   : 3 Halfwords (6 bytes)
         USING UNIT1L1,12         Use R12 as base register
*---------------------------------------------------------------------*
*
         L     3,=F'100'          Address  : X'0000 0006'
*                                 Opcode   : X'58'  (L)
*                                 Register : X'3'   (R3 Low-half)
*                                 Index    : X'0'
*                                 Base reg : X'C'   (R12)
*                                 Offset   : X'018' (6+4+4+2+2 dw/al)
*                                 Instruct : X'5830 C018'
*                                 Length   : 2 Halfwords (4 bytes)
*                                 Literal  : X'0000 0064'
*                                 R3  --->   X'.... .... 0000 0064'
*
         LH    4,=H'-100'         Address  : X'0000 000A'
*                                 Opcode   : X'48'  (LH)
*                                 Register : X'4'   (R4 Low-half)
*                                 Index    : X'0'
*                                 Base reg : X'C'   (R12)
*                                 Offset   : X'01C' (X'018' + 4)
*                                 Instruct : X'4840 C01C'
*                                 Length   : 2 Halfwords (4 bytes)
*                                 Literal  : X'FF9C'
*                                 R4  --->   X'.... .... FFFF FF9C'
*
         LR     5,4               Address  : X'0000 000E'
*                                 Opcode   : X'18'  (LR)
*                                 1st oprn : X'5'   (R5 Low-half)
*                                 2nd oprn : X'4'   (R4 Low-half)
*                                 Instruct : X'1854'
*                                 Length   : 1 Halfword  (2 bytes)
*                                 R5  --->   X'.... .... FFFF FF9C'
*
*---------------------------------------------------------------------*
         DC    H'0'               Invalid opcode causes abend S0C1
*                                 Address  : X'0000 0010'
*                                 Instruct : X'0000'
*                                 Length   : 1 Halfword  (2 bytes)
*---------------------------------------------------------------------*
*  --->  Assembler begins Literal pool here   (Fullword alignment)
*
*        018   First Fullword Literal
*        ...   ...
*        ...   First Halfword Literal
*        ...   ...
*---------------------------------------------------------------------*
         END
