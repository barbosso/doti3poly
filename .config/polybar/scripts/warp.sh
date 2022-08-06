#!/bin/bash
if [ $(warp-cli status | grep update | cut -d ' ' -f 3) == 'Connected' ];then 
    warp-cli disconnect 1>/dev/null 2>&1
else warp-cli connect 1>/dev/null 2>&1
fi
echo $(warp-cli status | grep update | cut -d ' ' -f 3)