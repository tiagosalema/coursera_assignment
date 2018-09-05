all: README.md

README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	date +"%F / %R" >> README.md
	echo "Number of lines in _guessinggame.sh_"  >> README.md
	cat guessinggame.sh | wc -l

clean:
	rm README.md
