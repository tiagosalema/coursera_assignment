all: README.md

README.md:
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	date +"%F / %R" >> README.md
	echo "Number of lines in **guessinggame.sh**:"  >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
