import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/app_color.dart';
import '../../fonts/app_text_theme.dart';
import '../color_scheme/main_color_scheme.dart';
import '../widgets/app_app_bar_theme.dart';
import '../widgets/app_elevated_button_theme.dart';
import '../widgets/app_input_decoration_theme.dart';
import '../widgets/app_progress_indicator_theme.dart';
import '../widgets/app_text_button_theme.dart';
import '../widgets/app_text_selection_theme.dart';

enum AppThemeType { main }

class AppTheme {
  const AppTheme._();
  static final mainColor = getIt<AppColorMainTheme>();

  static ThemeData get mainThemeData => ThemeData(
        primaryColor: mainColor.primary,
        scaffoldBackgroundColor: mainColor.surface,
        indicatorColor: mainColor.primary,
        hintColor: mainColor.grey,
        highlightColor: mainColor.grey,
        focusColor: mainColor.black,
        disabledColor: mainColor.grey,
        cardColor: mainColor.white,
        brightness: Brightness.light,
        shadowColor: mainColor.shadow,
        dividerColor: mainColor.lightGrey,
        dialogBackgroundColor: mainColor.white,
        unselectedWidgetColor: mainColor.grey,
        
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
