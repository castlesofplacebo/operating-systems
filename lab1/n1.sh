#!/bin/bash
if [[ ( "$1" -gt "$2" ) && ( "$1" -gt "$3" ) ]];
then echo "Answer : $1";
else if [[ ( "$2" -gt "$1" ) && ( "$2" -gt "$3" ) ]];
then echo "Answer : $2";
else echo "Answer : $3";
fi;
fi;
