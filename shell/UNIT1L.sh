# Get TSO Address Space Key
export ASKEY=`zowe tso start address-space --sko`

# Send commands to TSO Address Space
zowe tso send address-space $ASKEY --data "test (UNIT1L)"
zowe tso send address-space $ASKEY --data "LISTPSW"  
# Examine registers - Initial state
zowe tso send address-space $ASKEY --data "l 0r:15r"

# Set breakpoints and examine registers
zowe tso send address-space $ASKEY --data "at +0A"
zowe tso send address-space $ASKEY --data "go" 
zowe tso send address-space $ASKEY --data "l 0r:15r"
# --> R3 is now updated!

# Set breakpoints and examine registers
zowe tso send address-space $ASKEY --data "at +0E"
zowe tso send address-space $ASKEY --data "go" 
zowe tso send address-space $ASKEY --data "l 0r:15r"
# --> R4 is now updated!

# Set breakpoints and examine registers
# Run all the way to the end of the program
zowe tso send address-space $ASKEY --data "go" 
zowe tso send address-space $ASKEY --data "l 0r:15r"
# --> R5 is now updated!

# End TSO Test session
zowe tso send address-space $ASKEY --data "end"     

# RUN THIS AS: ./shell/UNIT1L.sh
