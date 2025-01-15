import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/styles/colors/theme_color.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/styles/themes/modes/app_theme.dart';
import '../../../di/injector.dart';

part 'setting_view_model.g.dart';

@riverpod
class SettingViewModel extends _$SettingViewModel {
  AppThemeType currentTheme = AppThemeType.main;

  @override
  AppThemeType build({BuildContext? context}) {
    return AppThemeType.main;
  }

  void setTheme(AppThemeType theme) {
    currentTheme = theme;
  }

  ThemeData getTheme(BuildContext context, AppThemeType type) {
    switch (type) {
      case AppThemeType.main:
        return AppTheme.mainThemeData(context);
    }
  }

  ThemeColor getAppColor(AppThemeType type) {
    switch (type) {
      case AppThemeType.main:
        return getIt<MainThemeColor>();
    }
  }

  ThemeData activeTheme(BuildContext context) =>
      getTheme(context, currentTheme);
  ThemeColor get appColor => getAppColor(currentTheme);
}
