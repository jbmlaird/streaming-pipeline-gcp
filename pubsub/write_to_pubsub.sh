#!/bin/bash

# If run from a parent directory, set the current directory to script's current directory for relative script paths
# https://stackoverflow.com/questions/6393551/what-is-the-meaning-of-0-in-a-bash-script
cd "${0%/*}"

./generate_message_json.sh "1" "track_start" "Disclosure" "Douha (Mali Mali)" &
./generate_message_json.sh "1" "track_start" "Basement Jaxx" "Red Alert" &
./generate_message_json.sh "1" "track_50_percent" "Basement Jaxx" "Red Alert" &
./generate_message_json.sh "1" "track_50_percent" "Disclosure" "Douha (Mali Mali)" &
./generate_message_json.sh "2" "track_start" "Disclosure" "Douha (Mali Mali)" &
./generate_message_json.sh "2" "track_start" "Basement Jaxx" "Red Alert" &
./generate_message_json.sh "2" "track_50_percent" "Basement Jaxx" "Red Alert" &
./generate_message_json.sh "2" "track_50_percent" "Disclosure" "Douha (Mali Mali)" &
