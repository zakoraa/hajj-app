import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_elevated_button_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_input_decoration_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_progress_indicator_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_text_button_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_text_selection_theme.dart';

import '../../colors/app_color.dart';
import '../../fonts/app_text_theme.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get mainThemeData => ThemeData(
        scaffoldBackgroundColor: AppColor.main.bgAppColor,
        splashFactory: InkRipple.splashFactory,
        elevatedButtonTheme: AppElevatedButtonTheme.main,
        progressIndicatorTheme: AppProgressIndicatorTheme.main,
        textTheme: AppTextTheme.main,
        textButtonTheme: AppTextButtonTheme.main,
        textSelectionTheme: AppTextSelectionTheme.main,
        inputDecorationTheme: AppInputDecorationTheme.main,
      );

  Theme mainTheme(Widget? child) => Theme(
        data: mainThemeData.copyWith(primaryColor: AppColor.main.primary),
        child: child!,
      );
}
