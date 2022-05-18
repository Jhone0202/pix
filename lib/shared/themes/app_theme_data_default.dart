import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pix/shared/themes/app_theme.dart';
import 'package:pix/shared/themes/app_theme_data_interface.dart';

class AppThemeData extends IAppThemeData {
  @override
  ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppTheme.colors.grey900),
        actionsIconTheme: IconThemeData(color: AppTheme.colors.grey900),
        titleTextStyle: TextStyle(
          fontSize: 14,
          color: AppTheme.colors.grey900,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: const Color(0xFFF5F5F5),
        ),
      ),
    );
  }

  @override
  ThemeData darkThemeData(BuildContext context) {
    return ThemeData.dark();
  }
}
