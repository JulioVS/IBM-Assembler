*---------------------------------------------------------------------*
*                                                                     *
*---+----1----+----2----+----3----+----4----+----5----+----6----+----7*
LAB002   CSECT ,             COMMA REQUIRED IF COMMENT ON THIS STMT
*---------------------------------------------------------------------*
*
*  --->  Define field labelled HI, containing the characters 'Hello'
*
HI       DC    C'Hello'           Should be: X'C8 85 93 93 96'
*                                 Alignment: None (byte boundary)
*
*  --->  Same as above, but this time
*        the label is HI2 and the field is 10 bytes long
*
HI2      DC    CL10'Hello'        Should be: X'C885939396 4040404040'
*
*  --->  Use the Length (L) attribute to define a 4-byte field
*        without label and containing the characters 'XXXYYYZZZ'
*        What happens?
*
         DC    CL4'XXXYYYZZZ'     Should be: X'E7 E7 E7 E8' ('XXXY')
*
*  --->  Define a field labelled C1 containg the charater '*'
*        repeated 8 times
*
C1       DC    8C'*'              Should be: X'5C5C5C5C 5C5C5C5C'
*
*  --->  Define a field labelled C2 containg 8 charaters '*'
*
C2       DC    C'********'        Should be: X'5C5C5C5C 5C5C5C5C'
*
*  --->  Define a 2-byte field without label
*        repeated 3 times and
*        containing one charater '*'
*
         DC    3CL2'*'            Should be: X'5C40 5C40 5C40'
*
*  --->  Define a field labelled X1, containing hexadecimal A000
*
X1       DC    X'A000'            Should be: X'A000'
*                                 Alignment: None (byte boundary)
*
*  --->  Define a halfword labelled H1,
*        containing decimal -24576
*
*        Q2. Is it the same as X1?
*
H1       DC    H'-24576'          Should be: X'A000'
*                                 Alignment: Halfword boundary
*
*  --->  Define a field labelled X2, containing hexadecimal 1A2B
*
X2       DC    X'1A2B'                 Should be: X'1A2B'
*
*  --->  Define a bit string labelled B2, with the same contents as X2
*
B2       DC    B'0001 1010 0010 1011'  Should be: X'1A2B'
*                                 Alignment: None (byte boundary)
*
*  --->  Define a one-byte bit string labelled B3,
*        containing B'1111 0000' and aligned on fullword boundary
*
*        Enter your instruction here (for the fullword alignment)
*
         DC    0F                 Alignment: Fullword boundary
*
*                                 Should start on a 'multiple of 4'
*                                 memory address! (x0,x4,x8 or xC)
*
*                                 For that, the assembler may need to
*                                 previouly allocate from 1 to 3 empty
*                                 bytes (ie. X'00' to X'000000')
*
*        Enter your instruction here (for the definition)
*
B3       DC    B'1111 0000'       Should be: X'F0'
*
*---------------------------------------------------------------------*
         END
