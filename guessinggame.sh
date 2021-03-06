#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
    guess=0
    file_count=$(ls . | wc -l)

    echo "Guess how many files are in the current directory:"

    while [[ $guess -ne $file_count ]]
    do
        read guess

        if [[ $guess =~ [^0-9] ]]
        then
            echo "Please enter a positive number:"
            # reset $guess to a number to prevent errors in the while loop
            guess=0
        elif [[ $guess -lt $file_count ]]
        then
            echo "Too low. Have another crack:"
        elif [[ $guess -gt $file_count ]]
        then
            echo "Too high. Have another crack:"
        else
            echo "Well done! Have a gold star."
        fi
    done
}

guessinggame
