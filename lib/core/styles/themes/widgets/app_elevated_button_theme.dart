import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/theme_color.dart';
import '../../fonts/app_font.dart';

class AppElevatedButtonTheme {
  const AppElevatedButtonTheme._();
  static final mainColor = getIt<MainThemeColor>();

  static ElevatedButtonThemeData main(BuildContext context) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          splashFactory: InkRipple.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          foregroundColor: mainColor.onPrimary,
          elevation: 0.5,
          textStyle: AppFont.text14(context).semiBold,
          backgroundColor: mainColor.primary,
        ),
      );
}
