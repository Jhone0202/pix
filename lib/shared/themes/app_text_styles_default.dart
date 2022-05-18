import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pix/shared/themes/app_text_styles_interface.dart';

class AppTextStylesDefault extends IAppTextStyles {
  @override
  TextStyle get title1 => GoogleFonts.openSans(
        color: const Color(0xFF070C17),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get title2 => GoogleFonts.openSans(
        color: const Color(0xFF070C17),
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1.5,
      );

  @override
  TextStyle get subtitle1 => GoogleFonts.openSans(
        color: const Color(0xFF070C17),
        fontSize: 16,
        height: 1.5,
      );

  @override
  TextStyle get headline1 => GoogleFonts.openSans(
        color: const Color(0xFF070C17),
        fontSize: 40,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );
}
