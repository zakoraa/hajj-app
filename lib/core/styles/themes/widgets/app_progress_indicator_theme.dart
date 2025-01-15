import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/app_color.dart';

class AppProgressIndicatorTheme {
  const AppProgressIndicatorTheme._();
  static final mainColor = getIt<AppColorMainTheme>();

  static ProgressIndicatorThemeData get main => ProgressIndicatorThemeData(
        color: mainColor.primary,
        linearTrackColor: mainColor.primary,
        circularTrackColor: mainColor.grey,
      );
}
