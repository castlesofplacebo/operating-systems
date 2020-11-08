#!/bin/bash
wc -l /var/log/*.log 2>/dev/null | tail -n 1
