import 'package:flutter/material.dart';

///IMPORTAN: "core/*" and "game.dart" are currently unused, will be integrated/removed later

void main() => runApp(const Hangman());

class Hangman extends StatelessWidget {
  const Hangman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              //TODO:1 Add background image here (something thematic with hangman, wild west?)
              image: AssetImage('TBD')),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //TODO:2 Add element for hangman images/assets
            //TODO:3 Add buttons for alphabet
            //TODO:4 Add row for incorrect guesses
            children: [],
          ),
        ),
      ),
    );
  }
}
