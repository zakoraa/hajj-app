import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../di/injector.dart';
import '../../colors/theme_color.dart';
import '../../fonts/app_font.dart';

class AppInputDecorationTheme {
  const AppInputDecorationTheme._();
  static final mainColor = getIt<MainThemeColor>();

  static InputDecorationTheme main(BuildContext context) =>
      InputDecorationTheme(
        errorMaxLines: 3,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        hintStyle: AppFont.bodyMedium(context)?.textGrey,
        helperStyle: AppFont.bodyMedium(context)?.textGrey,
        errorStyle: AppFont.bodySmall(context)?.error,
        fillColor: Colors.transparent,
        labelStyle: AppFont.labelMedium(context)?.black,
        filled: true,
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(width: 0.8.w, color: mainColor.error),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(width: 0.8.w, color: mainColor.error),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(width: 0.3.w, color: mainColor.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(width: 0.8.w, color: Colors.black),
        ),
      );
}
