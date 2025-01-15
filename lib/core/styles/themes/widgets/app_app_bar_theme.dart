import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/theme_color.dart';

class AppAppBarTheme {
  const AppAppBarTheme._();
  static final mainColor = getIt<MainThemeColor>();

  static AppBarTheme get main => AppBarTheme(
        backgroundColor: mainColor.primary,
        elevation: 0,
      );
}
