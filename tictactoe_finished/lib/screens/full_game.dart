import 'package:flutter/material.dart';
import 'package:tictactoe_finished/assets/colors.dart';
import 'package:tictactoe_finished/screens/game_board.dart';
import 'package:tictactoe_finished/helper_methods/game_class.dart';
import 'player_scores.dart';
import 'replay_btn.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  // variables
  final Game game = Game();
  // methods
  updateBoard() { setState(() {}); }
  // class
  @override
  Widget build(BuildContext context) {
    return WillPopScope( 
      onWillPop: () async {
        return false;
      },
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            title: Center(
              child: Text(
                "T I C - T A C - T O E",
                style: googleFontWhite
              ),
            ),
            backgroundColor: primaryColor,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: PlayerScores(game: game)),
              Expanded(flex: 4, child: GameBoard(game: game, voidCallback: updateBoard)),
              Expanded(flex: 2, child: ReplayButton(game: game, voidCallback: updateBoard))
            ],
          ),
        ),
      ),
    );
  }
}