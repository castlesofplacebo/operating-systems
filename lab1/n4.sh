#!/bin/bash
if [[ $PWD/ == $HOME/* ]];
then echo $PWD
exit 0;
else echo "ERROR"
exit 1;
fi;
