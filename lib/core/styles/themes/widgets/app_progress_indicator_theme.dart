import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/theme_color.dart';

class AppProgressIndicatorTheme {
  const AppProgressIndicatorTheme._();
  static final mainColor = getIt<MainThemeColor>();

  static ProgressIndicatorThemeData get main => ProgressIndicatorThemeData(
        color: mainColor.primary,
        linearTrackColor: mainColor.primary,
        circularTrackColor: mainColor.grey,
      );
}
