#!/bin/bash

curl -s https://01.gritlab.ax/assets/superhero/all.json \
| jq '.[] | select(.id == 1) | {name, power: .powerstats.power}' \
| grep -E '"name"|"power"'

# force indentation
#curl -s https://01.gritlab.ax/assets/superhero/all.json \
#| jq -r '.[] | select(.id == 1) | "  \"name\": \"\(.name)\",\n    \"power\": \(.powerstats.power),"'
