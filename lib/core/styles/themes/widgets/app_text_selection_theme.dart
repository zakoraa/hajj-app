import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/app_color.dart';

class AppTextSelectionTheme {
  const AppTextSelectionTheme._();
  static final mainColor = getIt<AppColorMainTheme>();

  static TextSelectionThemeData get main => TextSelectionThemeData(
        cursorColor: mainColor.black,
        selectionColor: mainColor.primary..withValues(alpha: 0.3),
        selectionHandleColor: mainColor.primary,
      );
}
