#!/bin/bash
let num=$RANDOM
if [ $num -gt 23000 ] 
then
    echo "Answer number 1"
else
    echo "Answer number 2"
fi