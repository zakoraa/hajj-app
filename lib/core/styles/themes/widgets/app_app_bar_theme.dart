import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/app_color.dart';

class AppAppBarTheme {
  const AppAppBarTheme._();
  static final mainColor = getIt<AppColorMainTheme>();

  static AppBarTheme get main => AppBarTheme(
        backgroundColor: mainColor.primary,
        elevation: 0,
      );
}
