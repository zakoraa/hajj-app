import 'package:flutter/material.dart';

import '../../colors/app_color.dart';
import '../../fonts/app_font.dart';

class AppTextButtonTheme {
  const AppTextButtonTheme._();

  static TextButtonThemeData get main => TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(AppColor.main.primary),
          textStyle: WidgetStatePropertyAll(AppFont.text16.primary),
        ),
      );
}
