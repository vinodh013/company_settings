
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;
   Color color;
   CustomText(
      { required this.text, required this.weight, required this.size,  this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: size,
        fontWeight: weight,
        color: color 
      )
    );
  }
}
