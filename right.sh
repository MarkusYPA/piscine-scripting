#!/bin/bash

ls | grep -v '\.txt' | column > filtered_files.txt
