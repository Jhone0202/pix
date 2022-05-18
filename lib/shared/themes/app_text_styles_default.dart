import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pix/shared/themes/app_text_styles_interface.dart';
import 'package:pix/shared/themes/app_theme.dart';

class AppTextStylesDefault extends IAppTextStyles {
  @override
  TextStyle get title1 => GoogleFonts.openSans(
        color: AppTheme.colors.grey900,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get title2 => GoogleFonts.openSans(
        color: AppTheme.colors.grey900,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 1.5,
      );

  @override
  TextStyle get subtitle1 => GoogleFonts.openSans(
        color: AppTheme.colors.grey900,
        fontSize: 16,
        height: 1.5,
      );

  @override
  TextStyle get headline1 => GoogleFonts.openSans(
        color: AppTheme.colors.grey900,
        fontWeight: FontWeight.w600,
        fontSize: 28,
      );

  @override
  TextStyle get headline2 => GoogleFonts.openSans(
        color: AppTheme.colors.grey900,
        fontWeight: FontWeight.w600,
        fontSize: 32,
      );
}
