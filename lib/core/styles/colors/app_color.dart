import 'package:flutter/material.dart';

class AppColor {
  const AppColor._();

  static theme(BuildContext context) => Theme.of(context);

  static Color primary(BuildContext context) => theme(context).colorScheme.primary;
  static Color onPrimary(BuildContext context) => theme(context).colorScheme.onPrimary;
  static Color borderPrimary(BuildContext context) => theme(context).colorScheme.primary;
  static Color containerColorPrimary(BuildContext context) => theme(context).colorScheme.primaryContainer;
  static Color onContainerColorPrimary(BuildContext context) => theme(context).colorScheme.onPrimaryContainer;

  static Color secondary(BuildContext context) => theme(context).colorScheme.secondary;
  static Color onSecondary(BuildContext context) => theme(context).colorScheme.onSecondary;
  static Color borderSecondary(BuildContext context) => theme(context).colorScheme.secondary;
  static Color containerColorSecondary(BuildContext context) => theme(context).colorScheme.secondaryContainer;
  static Color onContainerColorSecondary(BuildContext context) => theme(context).colorScheme.onSecondaryContainer;

  static Color tertiary(BuildContext context) => theme(context).colorScheme.tertiary;
  static Color onTertiary(BuildContext context) => theme(context).colorScheme.onTertiary;
  static Color borderTertiary(BuildContext context) => theme(context).colorScheme.tertiary;
  static Color containerColorTertiary(BuildContext context) => theme(context).colorScheme.tertiaryContainer;
  static Color onContainerColorTertiary(BuildContext context) => theme(context).colorScheme.onTertiaryContainer;

  static Color backgroundApp(BuildContext context) => theme(context).colorScheme.surface;
  static Color onBackgroundApp(BuildContext context) => theme(context).colorScheme.onSurface;
  static Color borderBackgroundApp(BuildContext context) => theme(context).colorScheme.surfaceContainerLow;
  static Color containerColorBackgroundApp(BuildContext context) => theme(context).colorScheme.surfaceContainer;
  static Color onContainerColorBackgroundApp(BuildContext context) => theme(context).colorScheme.onSurfaceContainer;

  static Color textColor(BuildContext context) => theme(context).colorScheme.onSurface;

  static Color disableButton(BuildContext context) => theme(context).colorScheme.surfaceContainerHigh;
  static Color disableTextOrIcon(BuildContext context) => theme(context).colorScheme.surfaceContainerHigh;

  static Color error(BuildContext context) => theme(context).colorScheme.error;
  static Color onError(BuildContext context) => theme(context).colorScheme.onError;

  static Color outline(BuildContext context) => theme(context).colorScheme.outline;
  static Color shadow(BuildContext context) =>theme(context).colorScheme.shadow;
}
