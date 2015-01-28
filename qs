#!/bin/bash

date
total=`qstat | wc -l`
totalR=`qstat | grep -c " R "`
sharedR=`qstat | grep shared | grep -c " R "`
shared=`qstat | grep -c shared`
mem48gR=`qstat | grep mem48g  | grep -c " R "`
mem48g=`qstat | grep -c mem48g`
distR=`qstat | grep dist   | grep -c " R "`
dist=`qstat | grep -c dist`

echo "Total:  $totalR / $total  " `bc -l <<< $totalR/$total  `
echo "shared: $sharedR / $shared" `bc -l <<< $sharedR/$shared`
echo "mem48g: $mem48gR / $mem48g" `bc -l <<< $mem48gR/$mem48g`
echo "dist:   $distR / $dist    " `bc -l <<< $distR/$dist    `
