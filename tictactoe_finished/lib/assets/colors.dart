// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFFff4b4b);
const Color secondaryColor = Color(0xFFffca27);
const Color accentColor = Color(0xFF4169e8);
const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;

var googleFontWhite = GoogleFonts.coiny(
  textStyle: const TextStyle(
    color: Colors.white,
    letterSpacing: 3,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 0.7
  ),
);

var googleFontBlack = GoogleFonts.coiny(
  textStyle: const TextStyle(
    color: Colors.black,
    letterSpacing: 3,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 0.7
  ),
);

var googleFontSmallLetter = GoogleFonts.coiny(
  textStyle: const TextStyle(
    color: Colors.black,
    letterSpacing: 3,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    height: 0.7
  ),
);

var googleFontBigLetter = GoogleFonts.coiny(
  textStyle: const TextStyle(
    color: Colors.black,
    fontSize: 72,
    fontWeight: FontWeight.bold,
    height: 0.7
  ),
);