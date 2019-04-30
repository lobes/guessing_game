all: README.md guessinggame.sh

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "Welcome to the Guessing Game project." >> README.md
	echo "" >> README.md
	echo "This file was created on: $$(date)" >> README.md
	echo "" >> README.md
	echo "The number of lines of code in guessinggame.sh: $$(egrep -c ^ guessinggame.sh)" >> README.md
	echo "" >> README.md

clean:
	rm README.md
