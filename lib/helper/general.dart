//this class is basically the repository of the variables that are declared for gloabal use
// throughout the app,

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class General {
  final buttontextStyle = GoogleFonts.roboto(
      fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold);
  final backgroundColor = LinearGradient(colors: [
    Colors.blue.shade100.withAlpha(30).withGreen(50).withOpacity(0.3),
    Colors.pink.shade100.withGreen(30).withRed(10).withOpacity(0.3),
    Colors.indigo.shade100.withGreen(30).withOpacity(0.3)
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
}
