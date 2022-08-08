#!/bin/bash

function status() {
    if [ $(warp-cli status | grep update | cut -d ' ' -f 3) == 'Connected' ];then
        echo "WARP: "
    else echo "WARP: "
    fi
}

function connect() {
    if [ $(warp-cli status | grep update | cut -d ' ' -f 3) == 'Connected' ];then
        warp-cli disconnect 1>/dev/null 2>&1
    else warp-cli connect 1>/dev/null 2>&1
    fi
}

function getOptVal() {
    if [[ "$1" = *=* ]]; then
        val="${1//*=/}"
        return 1
    fi

    val="$2"
}

case $1 in
    help)
        usage
        ;;
    status)
        status
        ;;
    connect)
        connect
        ;;
esac




# if [ $(warp-cli status | grep update | cut -d ' ' -f 3) == 'Connected' ];then 
#     warp-cli disconnect 1>/dev/null 2>&1
# else warp-cli connect 1>/dev/null 2>&1
# fi


# echo $(warp-cli status | grep update | cut -d ' ' -f 3)
