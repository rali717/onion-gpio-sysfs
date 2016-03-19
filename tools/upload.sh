#!/bin/sh

# check for argument
if [ "$1" == "" ]
then
    echo "ERROR: expecting Omega hex code as argument!"
    echo "$0 <hex code>"
    exit
fi

# python class
localPath="python/onionGpio.py"
remotePath="/root/gpio/onionGpio.py"

cmd="rsync -va --progress $localPath root@omega-$1.local:$remotePath"
echo "$cmd"
eval "$cmd"


# python test script 
localPath="python/examples/gpio-test.py"
remotePath="/root/gpio/gpio-test.py"

cmd="rsync -va --progress $localPath root@omega-$1.local:$remotePath"
echo "$cmd"
eval "$cmd"


# python test script #2
localPath="python/examples/gpio-active-low-test.py"
remotePath="/root/gpio/gpio-active-low-test.py"

cmd="rsync -va --progress $localPath root@omega-$1.local:$remotePath"
echo "$cmd"
eval "$cmd"