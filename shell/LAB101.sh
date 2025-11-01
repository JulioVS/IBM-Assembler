# Get TSO Address Space Key
export ASKEY=`zowe tso start address-space --sko`

# Send commands to TSO Address Space
zowe tso send address-space $ASKEY --data "test (LAB101)"
zowe tso send address-space $ASKEY --data "LISTPSW"  

# Examine registers - Initial state
zowe tso send address-space $ASKEY --data "l 0r:15r"

# Run all the way to the end of the program
zowe tso send address-space $ASKEY --data "go" 
zowe tso send address-space $ASKEY --data "l 0r:15r"

# End TSO Test session
zowe tso send address-space $ASKEY --data "end"     
