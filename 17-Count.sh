#!/bin/bash
x="mississippi"
y=grep -o "s" <<<"$x" | wc -l
echo "Total no.of s is : $y"