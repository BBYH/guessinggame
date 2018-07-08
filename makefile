README: guessinggame.sh
	echo "## *Title:* " > README.md
	echo "guessinggame.sh" >> README.md
	echo "## *Date and Time:*" >> README.md
	date >> README.md
	echo "## *Number of lines in guessinggame.sh:*" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	
