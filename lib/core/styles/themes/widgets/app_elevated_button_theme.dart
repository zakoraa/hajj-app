import 'package:flutter/material.dart';

import '../../colors/app_color.dart';
import '../../fonts/app_font.dart';

class AppElevatedButtonTheme {
  const AppElevatedButtonTheme._();

  static ElevatedButtonThemeData get main => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          splashFactory: InkRipple.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          foregroundColor: AppColor.main.onPrimary,
          elevation: 0.5,
          textStyle: AppFont.text14.semiBold,
          backgroundColor: AppColor.main.primary,
        ),
      );
}
