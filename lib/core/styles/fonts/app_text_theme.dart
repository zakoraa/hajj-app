import 'package:flutter/material.dart';

import 'app_font.dart';

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme get main => ThemeData.light().textTheme.copyWith(
        headlineSmall: AppFont.text12,
        headlineMedium: AppFont.text14,
        headlineLarge: AppFont.text18,
        titleSmall: AppFont.text14,
        titleMedium: AppFont.text16,
        titleLarge: AppFont.text22,
        bodySmall: AppFont.text10,
        bodyMedium: AppFont.text14,
        bodyLarge: AppFont.text20,
      );

  // TODO: menginisialisasi class tema text
}
