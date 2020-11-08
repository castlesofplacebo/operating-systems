#!/bin/bash
man bash | grep -o "[[:alpha:]]\{4,\}" | tr A-Z a-z | sort | uniq -c | sort -nr -k 1 -k 2 | awk '{print $2}' | head -n 3
