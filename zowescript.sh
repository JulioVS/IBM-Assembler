# IBM Z XPLORE Assembler Repository
# Zowe CLI commands to download files from z/OS

# CLEANUP
rm -r mvs

# TSO/MVS LIBRARIES (PDS)
zowe files download amm "Z45864.ASM" "D*,L*" -e ".asm" --po  
zowe files download amm "Z45864.JCL" "ASM*"  -e ".jcl" --po  

# RENAME
mv Z45864 mvs

# RUN THIS AS: ./zowescript.sh
