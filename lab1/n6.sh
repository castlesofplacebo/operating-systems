#!/bin/bash
cat /var/log/anaconda/X.log | awk '{if ($3="WW") { $3="Warning:"; print $0 }}' > full.log
cat /var/log/anaconda/X.log | awk '{if ($3="II") { $3="Information:"; print $0 }}' >> full.log
cat full.log
