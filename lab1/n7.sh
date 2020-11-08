#!/bin/bash
grep -EIorsh "[[:alnum:]._%+-]+\@[[:alnum:]._-]+\.[[:alnum:]]+" /etc/* | tr "\n" " ,"o>email.lst
