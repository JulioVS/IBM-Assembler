*---------------------------------------------------------------------*
*                                                                     *
*---+----1----+----2----+----3----+----4----+----5----+----6----+----7*
LAB101   CSECT ,             COMMA REQUIRED IF COMMENT ON THIS STMT
*---------------------------------------------------------------------*
         LARL  12,LAB101          Load the address of LAB101 in R12
         USING LAB101,12          Use R12 as base register
*                                 Instruct : X'C0C0 0000 0000'
*                                 Length   : 3 Halfwords (6 bytes)
*---------------------------------------------------------------------*
*        Part 1: "Original" instructions
*---------------------------------------------------------------------*
*
         L     2,=F'170'          Instruct : X'5820 C030'
*                   030           Length   : 2 Halfwords (4 bytes)
*                                 R2  --->   X'.... .... 0000 00AA'
*
         LH    3,=H'4095'         Instruct : X'4830 C03C'
*                   03C           Length   : 2 Halfwords (4 bytes)
*                                 R3  --->   X'.... .... 0000 0FFF'
*
         LR    4,3                Instruct : X'1843'
*                                 Length   : 1 Halfword  (2 bytes)
*                                 R4  --->   X'.... .... 0000 0FFF'
*
*---------------------------------------------------------------------*
*        Part 2: Using literal second operands (as shown above),
*                code LONG DISPLACEMENT instructions to:
*---------------------------------------------------------------------*
*
*  --->  Load a fullword containing 187 (X'BB') into R5 low half
*
         LY    5,=F'187'          Instruct : X'E350 C034 0058'
*                   034           Length   : 3 Halfwords (6 bytes)
*                                 R5  --->   X'.... .... 0000 00BB'
*
*  --->  Load a halfword containing 2048 (X'800') into R6 low half
*
         LHY   6,=H'2048'         Instruct : X'E360 C03E 0078'
*                   03E              Length   : 3 Halfwords (6 bytes)
*                                 R6  --->   X'.... .... 0000 0800'
*
*---------------------------------------------------------------------*
*        Part 3: Using literal second operands (as shown above),
*                code RELATIVE ADDRESSING instructions to:
*---------------------------------------------------------------------*
*
*  --->  Load a fullword containing 1024000 (X'FA000') into R7 low half
*
         LRL   7,=F'1024000'      Instruct : X'C47D 0000 000E'
*                   038           Length   : 3 Halfwords (6 bytes)
*                                 R7  --->   X'.... .... 000F A000'
*
*  --->  Load a halfword containing 255 (X'FF') into R8 low half
*
         LHRL  8,=H'255'          Instruct : X'C485 0000 000F'
*                   040           Length   : 3 Halfwords (6 bytes)
*                                 R8  --->   X'.... .... 0000 00FF'
*
*
*---------------------------------------------------------------------*
         DC    H'0'               Invalid opcode causes abend S0C1
*                                 Instruct : X'0000'
*                                 Length   : 1 Halfword  (2 bytes)
*---------------------------------------------------------------------*
         END
