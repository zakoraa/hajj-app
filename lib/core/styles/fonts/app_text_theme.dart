import 'package:flutter/material.dart';

import 'app_font.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme main(BuildContext context) => ThemeData.light().textTheme.copyWith(
        headlineSmall: AppFont.text12(context),
        headlineMedium: AppFont.text14(context),
        headlineLarge: AppFont.text18(context),
        titleSmall: AppFont.text14(context),
        titleMedium: AppFont.text16(context),
        titleLarge: AppFont.text22(context),
        bodySmall: AppFont.text10(context),
        bodyMedium: AppFont.text14(context),
        bodyLarge: AppFont.text20(context),
      );

  // TODO: menginisialisasi class tema text
}
