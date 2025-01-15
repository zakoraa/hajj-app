import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/styles/colors/app_color.dart';

class MainColorScheme {
  const MainColorScheme._();
  static final color = AppColor.main;

  /// Main color scheme for the app
  static ColorScheme get main => ColorScheme(
        brightness: Brightness.light,

        // Primary colors
        primary: color.primary, // Warna utama (biasanya digunakan untuk AppBar dan tombol utama)
        onPrimary: color.onPrimary, // Warna teks/icon di atas warna utama
        primaryContainer: color.primaryContainer, // Warna untuk elemen sekunder seperti tombol tambahan
        onPrimaryContainer: color.onPrimaryContainer, // Teks/icon di atas primaryContainer
        primaryFixed: color.primaryFixed, // Warna tetap untuk bagian UI tertentu
        primaryFixedDim: color.primaryFixedDim, // Warna primary dengan opasitas lebih rendah
        inversePrimary: color.inversePrimary, // Warna kontras dengan primary (biasanya warna terang)

        // Secondary colors
        secondary: color.secondary, // Warna sekunder (biasanya untuk elemen pendukung seperti chip)
        onSecondary: color.onSecondary, // Warna teks/icon di atas warna sekunder
        secondaryContainer: color.secondaryContainer, // Warna kontainer elemen sekunder
        onSecondaryContainer: color.onSecondaryContainer, // Teks/icon di atas secondaryContainer
        secondaryFixed: color.secondaryFixed, // Warna tetap untuk elemen sekunder
        secondaryFixedDim: color.secondaryFixedDim, // Versi redup dari warna sekunder tetap

        // Tertiary colors
        tertiary: color.tertiary, // Warna tersier untuk elemen dekoratif
        onTertiary: color.onTertiary, // Teks/icon di atas warna tersier
        tertiaryContainer: color.tertiaryContainer, // Kontainer untuk elemen tersier
        onTertiaryContainer: color.onTertiaryContainer, // Teks/icon di atas kontainer tersier
        tertiaryFixed: color.tertiaryFixed, // Warna tetap untuk elemen tersier
        tertiaryFixedDim: color.tertiaryFixedDim, // Versi redup dari warna tersier tetap

        // Surface colors
        surface: color.surface, // Warna latar belakang utama
        onSurface: color.onSurface, // Warna teks/icon di atas latar belakang utama
        surfaceBright: color.surfaceBright, // Warna terang untuk elemen seperti kartu
        surfaceDim: color.surfaceDim, // Warna redup untuk elemen seperti dialog
        surfaceContainer: color.surfaceContainer, // Warna latar belakang untuk kontainer kecil
        surfaceContainerHigh: color.surfaceContainerHigh, // Versi lebih gelap dari surfaceContainer
        surfaceContainerHighest: color.surfaceContainerHighest, // Paling gelap dari surfaceContainer
        surfaceContainerLow: color.surfaceContainerLow, // Versi lebih terang dari surfaceContainer
        surfaceContainerLowest: color.surfaceContainerLowest, // Paling terang dari surfaceContainer
        surfaceTint: color.surfaceTint, // Warna aksen pada elemen surface
        inverseSurface: color.inverseSurface, // Warna kontras dengan surface
        onInverseSurface: color.onInverseSurface, // Teks/icon di atas inverseSurface

        // Error colors
        error: color.error, // Warna untuk status error
        onError: color.onError, // Teks/icon di atas warna error
        errorContainer: color.errorContainer, // Warna untuk kontainer status error
        onErrorContainer: color.onErrorContainer, // Teks/icon di atas errorContainer

        // Outline colors
        outline: color.outline, // Warna garis batas elemen
        outlineVariant: color.outlineVariant, // Varian garis batas

        // Shadows and scrim
        shadow: color.shadow, // Warna bayangan elemen
        scrim: color.scrim, // Warna untuk overlay semi-transparan

      );
}
