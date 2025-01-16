import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/theme_color.dart';
import '../../fonts/app_font.dart';

class AppTextButtonTheme {
  const AppTextButtonTheme._();
  static final mainColor = getIt<MainThemeColor>();

  static TextButtonThemeData main(BuildContext context) => TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(mainColor.primary),
          textStyle: WidgetStatePropertyAll(AppFont.text16(context).primary),
        ),
      );
}
