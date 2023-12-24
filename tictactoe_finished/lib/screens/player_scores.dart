// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tictactoe_finished/assets/colors.dart';
import 'package:tictactoe_finished/helper_methods/game_class.dart';

class PlayerScores extends StatefulWidget {
  final Game game;
  const PlayerScores({super.key, required this.game});

  @override
  State<PlayerScores> createState() => _PlayerScoresState();
}

class _PlayerScoresState extends State<PlayerScores> {
  // variables
  
  // methods

  // class
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Player X Wins\n\n${widget.game.xScore}",
            style: googleFontSmallLetter,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 50,
            height: 50,
          ),
          Text(
            "Player O Wins\n\n${widget.game.oScore}",
            style: googleFontSmallLetter,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}