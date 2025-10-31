*---------------------------------------------------------------------*
*                                                                     *
*---+----1----+----2----+----3----+----4----+----5----+----6----+----7*
LAB001   CSECT ,             COMMA REQUIRED IF COMMENT ON THIS STMT
*---------------------------------------------------------------------*
*
*  --->  Define a halfword labelled H1, containing decimal 100
*
H1       DC    H'100'             Should be: X'0064'
*                                 Alignment: Halfword boundary
*
*  --->  Define a halfword labelled H2, containing decimal -1
*
H2       DC    H'-1'              Should be: X'FFFF'
*
*  --->  Define a halfword labelled H3, containing decimal 32767
*
H3       DC    H'32767'           Should be: X'7FFF'
*
*  --->  Define a fullword labelled F1, containing decimal 100
*
F1       DC    F'100'             Should be: X'0000 0064'
*                                 Alignment: Fullword boundary
*
*  --->  Define a fullword labelled F2, containing decimal -1
*
F2       DC    F'-1'              Should be: X'FFFF FFFF'
*
*  --->  Define a fullword labelled F3, containing decimal 32768
*
F3       DC    F'32768'           Should be: X'0000 8000'
*
*  --->  Define a doubleword labelled D1, containing decimal 100
*
D1       DC    FD'100'            Should be: X'0000 0000 0000 0064'
*                                 Alignment: Doubleword boundary
*
*  --->  Define a doubleword labelled D2, containing decimal 0
*
D2       DC    FD'0'              Should be: X'0000 0000 0000 0000'
*
*  --->  Define a doubleword labelled D3, containing decimal -4095
*
D3       DC    FD'-4095'          Should be: X'FFFF FFFF FFFF F001'
*
*---------------------------------------------------------------------*
         END
