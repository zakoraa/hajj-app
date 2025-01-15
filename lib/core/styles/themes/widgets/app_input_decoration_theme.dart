import 'package:flutter/material.dart';

import '../../colors/app_color.dart';
import '../../fonts/app_font.dart';

class AppInputDecorationTheme {
  const AppInputDecorationTheme._();

  static InputDecorationTheme get main => InputDecorationTheme(
        errorMaxLines: 3,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        hintStyle: AppFont.text13.grey,
        helperStyle: AppFont.text14.grey,
        errorStyle: AppFont.text10.red,
        fillColor: Colors.transparent,
        labelStyle: AppFont.text14.black,
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 0.8, color: AppColor.main.error),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 0.8, color: AppColor.main.error),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 0.3, color: AppColor.main.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(width: 0.8, color: Colors.black),
        ),
      );
}
