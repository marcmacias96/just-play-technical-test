import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppTheme {
  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFE5B5F),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.white,
            ),
            foregroundColor: MaterialStateProperty.all<Color>(
              const Color(0xFFFE5B5F),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              GoogleFonts.teko(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.teko(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.teko(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
          titleMedium: GoogleFonts.teko(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          titleSmall: GoogleFonts.teko(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: GoogleFonts.teko(),
          labelMedium: GoogleFonts.teko(),
        ),
      );
}
