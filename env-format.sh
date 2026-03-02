#!/bin/bash

pwd
printenv | awk -F= '{print $1}' | grep 'H'
