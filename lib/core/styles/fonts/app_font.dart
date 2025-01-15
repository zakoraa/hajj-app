import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di/injector.dart';
import '../colors/app_color.dart';

class AppFont {
  const AppFont._();

  static const double _scale = 1.0;

  static TextStyle get baseText => const TextStyle(
        fontFamily: "Poppins",
      );

  static TextStyle get text7 => baseText.copyWith(fontSize: 7.sp * _scale);
  static TextStyle get text8 => baseText.copyWith(fontSize: 8.sp * _scale);
  static TextStyle get text9 => baseText.copyWith(fontSize: 9.sp * _scale);
  static TextStyle get text10 => baseText.copyWith(fontSize: 10.sp * _scale);
  static TextStyle get text11 => baseText.copyWith(fontSize: 11.sp * _scale);
  static TextStyle get text12 => baseText.copyWith(fontSize: 12.sp * _scale);
  static TextStyle get text13 => baseText.copyWith(fontSize: 13.sp * _scale);
  static TextStyle get text14 => baseText.copyWith(fontSize: 14.sp * _scale);
  static TextStyle get text15 => baseText.copyWith(fontSize: 15.sp * _scale);
  static TextStyle get text16 => baseText.copyWith(fontSize: 16.sp * _scale);
  static TextStyle get text17 => baseText.copyWith(fontSize: 17.sp * _scale);
  static TextStyle get text18 => baseText.copyWith(fontSize: 18.sp * _scale);
  static TextStyle get text19 => baseText.copyWith(fontSize: 19.sp * _scale);
  static TextStyle get text20 => baseText.copyWith(fontSize: 20.sp * _scale);
  static TextStyle get text21 => baseText.copyWith(fontSize: 21.sp * _scale);
  static TextStyle get text22 => baseText.copyWith(fontSize: 22.sp * _scale);
  static TextStyle get text23 => baseText.copyWith(fontSize: 23.sp * _scale);
  static TextStyle get text24 => baseText.copyWith(fontSize: 24.sp * _scale);
  static TextStyle get text25 => baseText.copyWith(fontSize: 25.sp * _scale);
  static TextStyle get text26 => baseText.copyWith(fontSize: 26.sp * _scale);
  static TextStyle get text27 => baseText.copyWith(fontSize: 27.sp * _scale);
  static TextStyle get text28 => baseText.copyWith(fontSize: 28.sp * _scale);
  static TextStyle get text29 => baseText.copyWith(fontSize: 29.sp * _scale);
  static TextStyle get text30 => baseText.copyWith(fontSize: 30.sp * _scale);
  static TextStyle get text38 => baseText.copyWith(fontSize: 38.sp * _scale);
  static TextStyle get text40 => baseText.copyWith(fontSize: 40.sp * _scale);
  static TextStyle get text50 => baseText.copyWith(fontSize: 50.sp * _scale);
  static TextStyle get text60 => baseText.copyWith(fontSize: 60.sp * _scale);

  static TextStyle get button => text14;
}

extension TextStyleWeightExtension on TextStyle {
  TextStyle get extraThin => copyWith(fontWeight: FontWeight.w100);
  TextStyle get thin => copyWith(fontWeight: FontWeight.w200);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300); 
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400); 
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500); 
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600); 
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700); 
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800); 
  TextStyle get ultraBold => copyWith(fontWeight: FontWeight.w900); 
}

extension TextStyleHelpers on TextStyle {
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle letterSpace(double value) => copyWith(letterSpacing: value);
  TextStyle height(double value) => copyWith(height: value);
}

extension TextStyleColors on TextStyle {
  AppColor get color => getIt<AppColor>();
  
  TextStyle get red => copyWith(color: color.error);
  TextStyle get grey => copyWith(color: color.grey);
  TextStyle get black => copyWith(color: color.black);
  TextStyle get white => copyWith(color: color.white);
  TextStyle get primary => copyWith(color: color.primary);
  // TODO: menginisialisasi warna text
}
