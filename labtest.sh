#!/bin/bash

# Get TSO Address Space Key
echo "Connecting to TSO Address Space..."
export ASKEY=`zowe tso start address-space --sko`

# Send commands to TSO Address Space
echo "Lading test program $1..."
zowe tso send address-space $ASKEY --data "test ($1)"

# Initial state
echo "$1 -> Initial state"
echo "-----------------------"
echo " "
zowe tso send address-space $ASKEY --data "LISTPSW"  
zowe tso send address-space $ASKEY --data "l 0r:15r"

# Run all the way to the end of the program
zowe tso send address-space $ASKEY --data "go" 

# Final state
echo "$1 -> Final state"
echo "-----------------------"
echo " "
zowe tso send address-space $ASKEY --data "LISTPSW"  
zowe tso send address-space $ASKEY --data "l 0r:15r"

# End TSO Test session
echo "Ending TSO Address Space..."
zowe tso send address-space $ASKEY --data "end"     

# RUN THIS AS: ./labtest.sh LAB101
