part of 'app_color.dart';

class AppColorMainTheme extends AppColor {
  // Primary colors
  Color get primary => const Color(0xFF013C5A);
  Color get onPrimary => white;
  Color get primaryContainer => const Color(0xFF23ba45);
  Color get onPrimaryContainer => white;
  Color get primaryFixed => primaryContainer;
  Color get primaryFixedDim => primaryContainer.withValues(alpha: 0.8);
  Color get inversePrimary => white;

  // Secondary colors
  Color get secondary => const Color(0xFFA7C958);
  Color get onSecondary => white;
  Color get secondaryContainer => const Color(0xFFb3f5af);
  Color get onSecondaryContainer => black;
  Color get secondaryFixed => secondaryContainer;
  Color get secondaryFixedDim => secondaryContainer.withValues(alpha: 0.8);

  // Tertiary colors
  Color get tertiary => const Color(0xFF717375);
  Color get onTertiary => white;
  Color get tertiaryContainer => const Color(0xFF5fa3ff);
  Color get onTertiaryContainer => white;
  Color get tertiaryFixed => tertiaryContainer;
  Color get tertiaryFixedDim => tertiaryContainer.withValues(alpha: 0.8);

  // Surface colors
  Color get surface => primary;
  Color get onSurface => white;
  Color get surfaceBright => white;
  Color get surfaceDim => primary.withValues(alpha: 0.9);
  Color get surfaceContainer => primary.withValues(alpha: 0.95);
  Color get surfaceContainerLow => primary.withValues(alpha: 0.98);
  Color get surfaceContainerHigh => primary.withValues(alpha: 0.8);
  Color get surfaceContainerHighest => primary.withValues(alpha: 0.6);
  Color get surfaceContainerLowest => primary.withValues(alpha: 01.0);
  Color get surfaceTint => primary;
  Color get inverseSurface => black;
  Color get onInverseSurface => white;

  // Error colors
  Color get error => const Color(0xFFCB3A31);
  Color get onError => white;
  Color get errorContainer => error.withValues(alpha: 0.1);
  Color get onErrorContainer => white;

  // Outline and shadow
  Color get outline => const Color(0xFFBABEC1);
  Color get outlineVariant => lightGrey;
  Color get shadow => Colors.black.withValues(alpha: 0.1);
  Color get scrim => Colors.black.withValues(alpha: 0.5);

  // Background and neutral colors
  Color get bgApp => const Color(0xFFFFFDF6);
  Color get lightGrey => const Color(0xFFBBBBBB);
  Color get grey => const Color(0xFF1F1F1F);
  Color get white => Colors.white;
  Color get black => Colors.black;
}
