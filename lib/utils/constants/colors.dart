import 'package:flutter/material.dart';

class AppColors {
   // App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFf2c94c);
  static const Color accent = Color(0xFFb0b0ff);

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c7570);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFf3f5ff);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = AppColors.white.withOpacity(0.1);
  static const Color cardBackgroundColor = Color(0xFFF7F5F1); // Theme Nightingale Gray 90

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c7570);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0xFFe6e6e6);

  // Error and Validation Colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);

  // -- Social Button Colors
  static const Color googleBackgroundColor = Color(0xFFDFEFFF);
  static const Color googleForegroundColor = Color(0xFF167EE6);
  static const Color facebookBackgroundColor = Color(0xFF1877F2);

  // Neutral Shades
  static const Color black = Color.fromARGB(255, 19, 19, 19);
  static const Color teal90 = Color(0xFF004D40);
  static const Color teal80 = Color(0xFF00695C);
  static const Color teal20 = Color(0xFF99F6E4);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color grey10 = Color(0xFFF3F4F6);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xfff43F5E);
}
