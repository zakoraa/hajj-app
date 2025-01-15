import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/styles/colors/theme_color.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/styles/themes/modes/app_theme.dart';

part 'setting_view_model.g.dart';

@riverpod
class SettingViewModel extends _$SettingViewModel {
  AppThemeType currentTheme = AppThemeType.main;

  @override
  AppThemeType build() {
    return AppThemeType.main;
  }

  void setTheme(AppThemeType theme) {
    currentTheme = theme;
  }

  ThemeData getTheme(AppThemeType type) {
    switch (type) {
      case AppThemeType.main:
        return AppTheme.mainThemeData;
    }
  }

  MainThemeColor getAppColor(AppThemeType type) {
    switch (type) {
      case AppThemeType.main:
        return MainThemeColor();
    }
  }

  ThemeData get activeTheme => getTheme(currentTheme);
  MainThemeColor get appColor => getAppColor(currentTheme);
}
