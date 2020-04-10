README.md: guessinggame.sh
	touch README.md
	echo "# Guessinggame.sh" > README.md
	echo "**Last run: ** $$(date)" >> README.md
	echo "**No. of lines in guessinggame.sh: $$(cat guessinggame.sh | wc -l) **" >> README.md

clean:
	rm README.md
