all: README.md guessinggame.sh

README.md: guessinggame.sh
	touch README.md

clean:
	rm README.md
