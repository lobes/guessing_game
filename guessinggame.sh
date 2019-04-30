#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
    guess=0
    file_count=$(ls . | wc -l)

    echo $file_count
}

guessinggame
