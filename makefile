# this makefile will produce README.md when we call make function


make:
	line_count=$(wc -l guessinggame.sh)
	echo "# Guessing game" > README.md 
	echo $(shell date) >> README.md
	echo $(line_count) >> README.md