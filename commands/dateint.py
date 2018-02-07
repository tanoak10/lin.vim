#! /usr/bin/env sh

cmdname=${0##*/}

helpmsg() {
    echo "Brief:"
    echo "    1. transform [yyyy-MM-dd] to timestamp"
    echo "    2. transform [yyyy-MM-dd HH:mm:ss] to timestamp"
    echo "Usage:"
    echo "    1. $cmdname [yyyy-MM-dd]"
    echo "    2. $cmdname [yyyy-MM-dd HH:mm:ss]"
    echo "Try again"
    echo ""
}

if [ "$1" == "--help" || "$1" == "-h" ]; then
    helpmsg
    exit 1
fi

if [ $# -lt 1 ]; then
    helpmsg
    exit 1
fi

if [ $# -gt 2 ]; then
    helpmsg
    exit 1
fi

datetime="$@"

#if [ $(uname) == "Darwin" ]; then
    #if [ $# -lt 2 ]; then
        #date -f "yyyy-mm-dd" "$datetime" "+%s"
    #else
        #date -f "yyyy-mm-dd HH:MM:ss" "$datetime" "+%s"
    #fi
#else
date -d "$datetime" "+%s"
#fi