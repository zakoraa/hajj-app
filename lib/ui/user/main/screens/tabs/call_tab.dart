import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallTab extends StatelessWidget {
  const CallTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 1.sh,
      width: 1.sw,
      child: const Center(
        child: Text("CALL TAB"),
      ),
    );
  }
}