import 'package:flutter/material.dart';

import '../../colors/app_color.dart';

class AppAppBarTheme {
  const AppAppBarTheme._();

  static AppBarTheme get main => AppBarTheme(
        backgroundColor: AppColor.main.primary,
        elevation: 0,
      );
}
