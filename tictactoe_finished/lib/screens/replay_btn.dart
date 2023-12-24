// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tictactoe_finished/assets/colors.dart';
import 'package:tictactoe_finished/helper_methods/game_class.dart';

class ReplayButton extends StatefulWidget {
  final Game game;
  final VoidCallback voidCallback;
  const ReplayButton({super.key, required this.game, required this.voidCallback});

  @override
  State<ReplayButton> createState() => _ReplayButtonState();
}

class _ReplayButtonState extends State<ReplayButton> {
  // variables

  // methods
  void updateBoard() {
    widget.game.resetBoard();
    widget.voidCallback();
  }
  // class
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.game.whatPlayerWon(), 
            style: googleFontBlack
          ),
          Visibility(
            visible: widget.game.hasGameFinished(),
            child: SizedBox(
              height: 25,
            ),
          ),
          Visibility(
            visible: widget.game.hasGameFinished(),
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextButton(
                onPressed: updateBoard, 
                child: Center(
                  child: Text(
                    "Play Again!",
                    style: googleFontBlack
                  ),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}