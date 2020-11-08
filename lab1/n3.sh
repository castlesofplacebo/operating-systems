#!/bin/bash
echo "Select to open : 1) nano
2) vi
3) links
4) to exit menu"
read a
case "$a" in
1) /bin/nano
;;
2) /bin/vi
;;
3) /bin/links
;;
4) exit
;;
esac

