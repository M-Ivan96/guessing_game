#!/bin/bash
# guessinggame.sh

function compare()
{
        if ! [[ $user_input =~ $re ]]
        then
                echo "Error: Not a number"
        elif [ $no_of_files -lt $user_input ]
        then
                echo "Guess too high."
        elif [ $no_of_files -gt $user_input ]
        then
                echo "Guess too low."
        else
                echo "Correct guess. Congratulations."
                exit
        fi
}

re='^[0-9]+$'
no_of_files=$(ls -p | grep -v / | wc -l)

while true
do
        echo 'How many files are in the current directory?'
        read user_input 
        compare
done