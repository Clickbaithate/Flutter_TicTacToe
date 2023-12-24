// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tictactoe_finished/assets/colors.dart';
import 'package:tictactoe_finished/screens/full_game.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: 1000.ms,
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                animation = CurvedAnimation(
                  parent: animation,
                  curve: Curves.easeInOutSine
                );
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (context, animation, secondaryAnimation) {
                return TicTacToe();
              },
            )
          );
        },
        child: Scaffold(
          backgroundColor: primaryColor,
          body: Center(child: Text("T I C - T A C - T O E",style: googleFontBlack).animate(onPlay: (controller) => controller.repeat()).fadeIn(duration: 1200.ms).then(delay: 400.ms).fadeOut(duration: 1200.ms))
        ),
      ),
    );
  }
}