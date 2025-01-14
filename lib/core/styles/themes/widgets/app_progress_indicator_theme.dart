import 'package:flutter/material.dart';

import '../../colors/app_color.dart';

class AppProgressIndicatorTheme {
  const AppProgressIndicatorTheme._();

  static ProgressIndicatorThemeData get main => ProgressIndicatorThemeData(
        color: AppColor.main.primary,
        linearTrackColor: AppColor.main.primary,
        circularTrackColor: AppColor.main.grey,
      );
}
