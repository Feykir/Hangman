import 'core/core.dart';
import 'dart:io';

class Game {
  //temp
  int incorrectGuesses = 0;
  Wordhandler wordHandler;
  String currentWord;
  Diagram diagram = Diagram();
  Inputhandler inputHandler = Inputhandler();

  Game(this.currentWord, this.wordHandler) {
    initializeGame();
    start();
  }

  initializeGame() {
    currentWord = Wordbank('words.txt').getWord();
    wordHandler = Wordhandler(currentWord);
    print(currentWord);
  }

  playRound() {
    //TODO: Make the terminal screen clear each time.
    print(Process.runSync('clear', [], runInShell: true).stdout);
    diagram.draw(incorrectGuesses);
    wordHandler.display();
    String guess = inputHandler.getGuess();

    if (wordHandler.checkChar(guess)) {
      wordHandler.addChar(guess);
    } else {
      handleWrongGuess();
    }

    if (hasWon()) {
      print('You Won!');
      reset();
    }
  }

  bool hasWon() {
    print(wordHandler.checkMatch());
    return wordHandler.checkMatch();
  }

  start() {
    //TODO: Make this dynamic (handle wins and losses)
    while (incorrectGuesses < 7) {
      playRound();
    }
  }

  handleWrongGuess() {
    //TODO: Probably more we need to do here.
    incorrectGuesses++;
  }

  reset() {
    incorrectGuesses = 0;
    wordHandler.reset();
    initializeGame();
  }
}
