import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pix/app_routes.dart';
import 'package:pix/shared/themes/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themes.lightThemeData(context),
      routes: routes,
      localizationsDelegates: const [GlobalMaterialLocalizations.delegate],
      supportedLocales: const <Locale>[Locale('pt', 'BR')],
    );
  }
}
