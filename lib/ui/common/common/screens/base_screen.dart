import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/common/margin_constant.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final bool resizeToAvoidBottomInset;
  final double? horizontalPadding;
  const BaseScreen({super.key, required this.child, this.resizeToAvoidBottomInset = false, this.horizontalPadding });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: SafeArea(
        child: Container(
          padding:  EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? MarginConstant.horizontalScreen,
          ),
          width: 1.sw,
          child: child,
        ),
      ),
    );
  }
}