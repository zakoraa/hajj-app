import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/theme_color.dart';
import '../../fonts/app_font.dart';

class AppInputDecorationTheme {
  const AppInputDecorationTheme._();
  static final mainColor = getIt<MainThemeColor>();

  static InputDecorationTheme main(BuildContext context) =>
      InputDecorationTheme(
        errorMaxLines: 3,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        hintStyle: AppFont.text13(context).grey,
        helperStyle: AppFont.text14(context).grey,
        errorStyle: AppFont.text10(context).red,
        fillColor: Colors.transparent,
        labelStyle: AppFont.text14(context).black,
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 0.8, color: mainColor.error),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 0.8, color: mainColor.error),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 0.3, color: mainColor.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 0.8, color: Colors.black),
        ),
      );
}
