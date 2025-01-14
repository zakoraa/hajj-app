part of 'app_color.dart';

class AppColorMainTheme extends AppColor {
  Color get primary => const Color(0xFF00ad39);
  Color get onPrimary => white;
  Color get secondary => const Color(0xFF7A9976);
  Color get onSecondary => white;
  Color get tertiary => const Color(0xFF429DA8);
  Color get onTertiary => white;

  Color get primaryContainer => const Color(0xFF23ba45);
  Color get secondaryContainer => const Color(0xFFb3f5af);
  Color get tertiaryContainer => const Color(0xFF5fa3ff);

  Color get lightGrey => const Color(0xFFBBBBBB);
  Color get grey => const Color(0xFF1F1F1F);

  Color get bgAppColor => Colors.white;

  Color get shadowColor => Colors.white.withValues(alpha: 0.1);

  Color get errorColor => const Color(0xFFFF5449);

  Color get white => const Color(0xFFF6F6F6);
  Color get black => const Color(0xFF1D1D1F);

  // TODO: menginisialisasi color
}
