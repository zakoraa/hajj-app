import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/common/margin_constant.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final bool resizeToAvoidBottomInset;
  const BaseScreen({super.key, required this.child, this.resizeToAvoidBottomInset = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: MarginConstant.horizontalScreen,
          ),
          width: 1.sw,
          child: child,
        ),
      ),
    );
  }
}