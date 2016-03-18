#!/bin/sh

# check for argument
if [ "$1" == "" ]
then
    echo "ERROR: expecting Omega hex code as argument!"
    echo "$0 <hex code>"
    exit
fi

# python class
localPath="python/omegaGpio.py"
remotePath="/root/gpio/omegaGpio.py"

cmd="rsync -va --progress $localPath root@omega-$1.local:$remotePath"
echo "$cmd"
eval "$cmd"


# test script python
localPath="python/examples/gpio-test.py"
remotePath="/root/gpio/gpio-test.py"

cmd="rsync -va --progress $localPath root@omega-$1.local:$remotePath"
echo "$cmd"
eval "$cmd"
