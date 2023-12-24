// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:tictactoe_finished/assets/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Game {

  // player scores
  int xScore = 0;
  int oScore = 0;

  // game checks
  bool gameFinished = false;
  bool xWon = false;
  bool oWon = false;
  bool playerTurn = true;
  
  // List that holds all the values of the board
  List<String> tileValues = 
  [
    "", "", "", 
    "", "", "", 
    "", "", ""
  ];

  // List that holds all the colors of each tile in the board
  List<Color> tileColors = 
  [
    secondaryColor, secondaryColor, secondaryColor, 
    secondaryColor, secondaryColor, secondaryColor, 
    secondaryColor, secondaryColor, secondaryColor
  ];

  // Class Methods 
  void checkWin() {

    // Checking Rows
    if (tileValues[0] == tileValues[1] && tileValues[1] == tileValues[2] && tileValues[2] != "") {
      gameFinished = true;
      if (tileValues[0] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[0] = accentColor; tileColors[1] = accentColor; tileColors[2] = accentColor;
    }
    else if (tileValues[3] == tileValues[4] && tileValues[4] == tileValues[5] && tileValues[5] != "") {
      gameFinished = true;
      if (tileValues[3] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[3] = accentColor; tileColors[4] = accentColor; tileColors[5] = accentColor;
    }
    else if (tileValues[6] == tileValues[7] && tileValues[7] == tileValues[8] && tileValues[8] != "") {
      gameFinished = true;
      if (tileValues[6] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[6] = accentColor; tileColors[7] = accentColor; tileColors[8] = accentColor;
    }
    // Checking Rows

    // Checking Columns
    else if (tileValues[0] == tileValues[3] && tileValues[3] == tileValues[6] && tileValues[6] != "") {
      gameFinished = true;
      if (tileValues[0] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[0] = accentColor; tileColors[3] = accentColor; tileColors[6] = accentColor;
    }
    else if (tileValues[1] == tileValues[4] && tileValues[4] == tileValues[7] && tileValues[7] != "") {
      gameFinished = true;
      if (tileValues[1] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[1] = accentColor; tileColors[4] = accentColor; tileColors[7] = accentColor;
    }
    else if (tileValues[2] == tileValues[5] && tileValues[5] == tileValues[8] && tileValues[8] != "") {
      gameFinished = true;
      if (tileValues[2] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[2] = accentColor; tileColors[5] = accentColor; tileColors[8] = accentColor;
    }
    // Checking Columns

    // Checking Diagonals
    else if (tileValues[0] == tileValues[4] && tileValues[4] == tileValues[8] && tileValues[0] != "") {
      gameFinished = true;
      if (tileValues[0] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[0] = accentColor; tileColors[4] = accentColor; tileColors[8] = accentColor;
    }
    else if (tileValues[2] == tileValues[4] && tileValues[4] == tileValues[6] && tileValues[2] != "") {
      gameFinished = true;
      if (tileValues[2] == "X") {xWon = true; xScore++;} 
      else {oWon = false; oScore++;}
      tileColors[2] = accentColor; tileColors[4] = accentColor; tileColors[6] = accentColor;
    }
    // Checking Diagonals

  }
  
  void updateTile(int index) {
    if (tileValues[index] == "") {
      if (playerTurn) {
        tileValues[index] = "X";
        playerTurn = !playerTurn;
      }
      else {
        tileValues[index] = "O";
        playerTurn = !playerTurn;
      }
    }
  }

  void resetBoard() {

  // game checks
  gameFinished = false;
  xWon = false;
  oWon = false;
  playerTurn = true;
  
  // List that holds all the values of the board
  tileValues = 
  [
    "", "", "", 
    "", "", "", 
    "", "", ""
  ];

  // List that holds all the colors of each tile in the board
  tileColors = 
  [
    secondaryColor, secondaryColor, secondaryColor, 
    secondaryColor, secondaryColor, secondaryColor, 
    secondaryColor, secondaryColor, secondaryColor
  ];
  }

  String whatPlayerWon() {

    Random random = Random();
    List<String> victoryEmojis = ["🥱", "😎", "🤫", "😹", "😴", "🤣", "😂", "😜", "🤭", "💪", "🖕"];

    int randomInt = random.nextInt(10);

    if (xWon)
      return "Player X Wins! ${victoryEmojis[randomInt]}";
    else if (oWon)
      return "Player O Wins! ${victoryEmojis[randomInt]}";
    else if (!hasGameStarted())
      return "Let's Play! 😡";
    else
      return "Game Has Started! 😼";
  }

  bool hasGameStarted() {
    for (int i = 0; i < 9; i++) 
      if (tileValues[i] != "")
        return true;
    return false;
  }

  bool hasGameFinished() {
    if (gameFinished)
      return true;
    else 
      for (int i = 0; i < 9; i++) 
        if (tileValues[i] == "")
          return false;
    return true;
  }

}