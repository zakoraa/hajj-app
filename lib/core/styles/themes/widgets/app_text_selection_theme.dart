import 'package:flutter/material.dart';

import '../../colors/app_color.dart';

class AppTextSelectionTheme {
  const AppTextSelectionTheme._();

  static TextSelectionThemeData get main => TextSelectionThemeData(
        cursorColor: AppColor.main.black,
        selectionColor: AppColor.main.primary..withValues(alpha: 0.3),
        selectionHandleColor: AppColor.main.primary,
      );
}
