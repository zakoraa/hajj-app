import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/color_scheme/main_color_scheme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_app_bar_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_elevated_button_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_input_decoration_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_progress_indicator_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_text_button_theme.dart';
import 'package:hajj_umrah_accessories/core/styles/themes/widgets/app_text_selection_theme.dart';

import '../../colors/app_color.dart';
import '../../fonts/app_text_theme.dart';

enum AppThemeType { main }

class AppTheme {
  const AppTheme._();

  static ThemeData get mainThemeData => ThemeData(
        primaryColor: AppColor.main.primary,
        scaffoldBackgroundColor: AppColor.main.bgApp,
        indicatorColor: AppColor.main.primary,
        hintColor: AppColor.main.grey,
        highlightColor: AppColor.main.grey,
        focusColor: AppColor.main.black,
        disabledColor: AppColor.main.grey,
        cardColor: AppColor.main.white,
        brightness: Brightness.light,
        shadowColor: AppColor.main.shadow,
        dividerColor: AppColor.main.lightGrey,
        dialogBackgroundColor: AppColor.main.white,
        unselectedWidgetColor: AppColor.main.grey,
        
        appBarTheme: AppAppBarTheme.main,
        elevatedButtonTheme: AppElevatedButtonTheme.main,
        progressIndicatorTheme: AppProgressIndicatorTheme.main,
        textTheme: AppTextTheme.main,
        textButtonTheme: AppTextButtonTheme.main,
        textSelectionTheme: AppTextSelectionTheme.main,
        inputDecorationTheme: AppInputDecorationTheme.main,

        splashFactory: InkRipple.splashFactory,

        colorScheme: MainColorScheme.main
      );
}
