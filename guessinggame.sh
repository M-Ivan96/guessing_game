#!/usr/bin/bash
# guessinggame

function compare()
{
        if [ $no_of_files -lt $user_input ]
        then
                echo Guess too high.
        elif [ $no_of_files -gt $user_input ]
        then
                echo Guess too low.
        else
                echo Correct guess. Congratulations.
                exit
        fi
}

no_of_files=$(ls -al | wc -l)

while true
do
        echo 'How many files are in the current directory?'
        read user_input 
        compare
done