import 'package:flutter/material.dart';

import '../../../../di/injector.dart';
import '../../colors/app_color.dart';

class MainColorScheme {
  const MainColorScheme._();
  static final color = getIt<AppColorMainTheme>();

  /// Main color scheme for the app
  static ColorScheme get main => ColorScheme(
        brightness: Brightness.light,

        // Primary colors
        primary: color.primary,
        onPrimary: color.onPrimary,
        primaryContainer: color.primaryContainer,
        onPrimaryContainer: color.onPrimaryContainer,
        primaryFixed: color.primaryFixed,
        primaryFixedDim: color.primaryFixedDim,
        inversePrimary: color.inversePrimary,

        // Secondary colors
        secondary: color.secondary,
        onSecondary: color.onSecondary,
        secondaryContainer: color.secondaryContainer,
        onSecondaryContainer: color.onSecondaryContainer,
        secondaryFixed: color.secondaryFixed,
        secondaryFixedDim: color.secondaryFixedDim,

        // Tertiary colors
        tertiary: color.tertiary,
        onTertiary: color.onTertiary,
        tertiaryContainer: color.tertiaryContainer,
        onTertiaryContainer: color.onTertiaryContainer,
        tertiaryFixed: color.tertiaryFixed,
        tertiaryFixedDim: color.tertiaryFixedDim,

        // Surface colors
        surface: color.surface,
        onSurface: color.onSurface,
        surfaceBright: color.surfaceBright,
        surfaceDim: color.surfaceDim,
        surfaceContainer: color.surfaceContainer,
        surfaceContainerHigh: color.surfaceContainerHigh,
        surfaceContainerHighest: color.surfaceContainerHighest,
        surfaceContainerLow: color.surfaceContainerLow,
        surfaceContainerLowest: color.surfaceContainerLowest,
        surfaceTint: color.surfaceTint,
        inverseSurface: color.inverseSurface,
        onInverseSurface: color.onInverseSurface,

        // Error colors
        error: color.error,
        onError: color.onError,
        errorContainer: color.errorContainer,
        onErrorContainer: color.onErrorContainer,

        // Outline colors
        outline: color.outline,
        outlineVariant: color.outlineVariant,

        // Shadows and scrim
        shadow: color.shadow,
        scrim: color.scrim,
      );
}
