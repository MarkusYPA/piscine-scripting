#!/bin/bash

pwd
# Literally print the value of the PWD env variable, as demanded:
# echo"$PWD"
printenv | awk -F= '{print $1}' | grep 'H'
