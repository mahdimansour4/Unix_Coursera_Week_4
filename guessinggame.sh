#!/bin/bash

guessing_game() {
    local files=$(ls -1 | wc -l)
    local guess=-1
    
    while [ $guess -ne $files ]; do
        read -p "How many files are in the current directory? " guess
        if [ $guess -lt $files ]; then
            echo "Your guess is too low."
        elif [ $guess -gt $files ]; then
            echo "Your guess is too high."
        else
            echo "Congratulations! You guessed correctly!"
        fi
    done
}

guessing_game
