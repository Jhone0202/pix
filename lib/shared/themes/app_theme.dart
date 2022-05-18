import 'package:pix/shared/themes/app_colors_default.dart';
import 'package:pix/shared/themes/app_colors_interface.dart';
import 'package:pix/shared/themes/app_text_styles_default.dart';
import 'package:pix/shared/themes/app_text_styles_interface.dart';
import 'package:pix/shared/themes/app_theme_data_default.dart';
import 'package:pix/shared/themes/app_theme_data_interface.dart';

class AppTheme {
  static IAppColors get colors => AppColorsDefault();
  static IAppTextStyles get textStyles => AppTextStylesDefault();
  static IAppThemeData get themes => AppThemeData();
}
