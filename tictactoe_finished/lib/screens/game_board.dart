// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:tictactoe_finished/assets/colors.dart';
import 'package:tictactoe_finished/helper_methods/game_class.dart';

class GameBoard extends StatefulWidget {
  final Game game;
  final VoidCallback voidCallback;
  const GameBoard({super.key, required this.game, required this.voidCallback});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  // variables

  // methods
  void updateBoard(int index) {
    setState(() {
      widget.game.updateTile(index);
      widget.game.checkWin();
      widget.voidCallback();
    });
  }
  // class
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        itemCount: 9,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (!widget.game.hasGameFinished())
              updateBoard(index);
          },
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: widget.game.tileColors[index],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  widget.game.tileValues[index],
                  style: googleFontBigLetter
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}