import 'dart:ui';
import 'package:pix/shared/themes/app_colors_interface.dart';

class AppColorsDefault extends IAppColors {
  @override
  Color get primaryColor => const Color(0xFF2F80ED);

  @override
  Color get grey700 => const Color(0xFF4F4F4F);

  @override
  Color get grey900 => const Color(0xFF000000);
}
