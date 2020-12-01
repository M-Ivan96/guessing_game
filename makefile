# this makefile will produce README.md when we call make function

LINE_CNT = $$(wc -l < guessinggame.sh)

make:

	echo "# Guessing game" > README.md
	echo $$(date) "\\" >> README.md
	echo "Number of lines:" $(LINE_CNT) >> README.md