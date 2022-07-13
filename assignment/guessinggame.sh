##!/usr/bin/env bash

file_count=$(find . -type f | wc -l)

function guess_file()
{
    while true;
    do
        echo "Your guess: "
        read usr_guess
        if [[ $usr_guess -gt $file_count ]]
        then
            echo ">> your guess is to high, try decrease your number"
        elif [[ $usr_guess -lt $file_count ]]
        then
            echo ">> your guess is to low, try increase your number"
        else
            echo "!! Congratulation !!"
            break;
        fi
    done
}

echo "[Welcome to guessinggame...]"
echo "Please take a guess on the number of files in current directory"
guess_file