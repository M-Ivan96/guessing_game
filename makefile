# this makefile will produce README.md when we call make function


make:

	echo "# Guessing game" > README.md
	date +"Now time is %FT%T" >> README.md
	wc -l < guessinggame.sh >> README.md