import 'dart:io';

class Wordbank {
  List<String> words;
  int wordIndex = 0;

  Wordbank(fileName) {
    words = File(fileName).readAsLinesSync();
    //randomises the list of words at start of each game
    words.shuffle();
  }

  getWord() {
    //fetches first word from randomised list and then removes it once used
    String word = words[0];
    words.removeAt(0);
    return word;
  }
}
