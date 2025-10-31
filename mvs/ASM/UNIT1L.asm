*---------------------------------------------------------------------*
*                                                                     *
*---+----1----+----2----+----3----+----4----+----5----+----6----+----7*
UNIT1L   CSECT ,             COMMA REQUIRED IF COMMENT ON THIS STMT
*---------------------------------------------------------------------*
         LARL  12,UNIT1L          Load the address of UNIT1L in R12
         USING UNIT1L,12          Use R12 as base register
*                                 Instruct : X'C0C0 0000 0000'
*                                 Length   : 3 Halfwords (6 bytes)
*---------------------------------------------------------------------*
*
         L     3,=F'100'          Value    : X'0000 0064'
*                                 Location : End of listing
*                                 Opcode   : X'58'  (L)
*                                 Register : X'3'   (R3 Lower-half)
*                                 Index    : X'0'
*                                 Base reg : X'C'   (R12)
*                                 Offset   : X'018' (6+4+4+2+1 dw/al)
*                                 Instruct : X'5830 C018'
*                                 Length   : 2 Halfwords (4 bytes)
*                                 R3  --->   X'.... .... 0000 0064'
*
         LH    4,=H'-100'         Value    : X'FF9C'
*                                 Location : End of listing
*                                 Opcode   : X'48'  (LH)
*                                 Register : X'4'   (R4 Lower-half)
*                                 Index    : X'0'
*                                 Base reg : X'C'   (R12)
*                                 Offset   : X'01C' (X'018' + 4)
*                                 Instruct : X'4840 C01C'
*                                 Length   : 2 Halfwords (4 bytes)
*                                 R4  --->   X'.... .... FFFF FF9C'
*
         LR     5,4               Value    : X'FFFF FF9C'
*                                 Location : End of listing
*                                 Opcode   : X'18'  (LR)
*                                 1st oprn : X'5'   (R5 Lower-half)
*                                 2nd oprn : X'4'   (R4 Lower-half)
*                                 Instruct : X'1854'
*                                 Length   : 1 Halfword  (1 bytes)
*                                 R5  --->   X'.... .... FFFF FF9C'
*
*---------------------------------------------------------------------*
         DC    H'0'               Invalid opcode causes abend S0C1
*                                 Instruct : X'0000'
*                                 Length   : 1 Halfword  (2 bytes)
*---------------------------------------------------------------------*
         END
