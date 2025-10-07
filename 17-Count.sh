#!/bin/bash
x="mississippi"
grep -o "s" <<<"$x" | wc -l
# echo "Total no.of s is : $y"