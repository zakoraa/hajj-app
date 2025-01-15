import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 1.sh,
      width: 1.sw,
      child: const Center(
        child: Text("PROFILE TAB"),
      ),
    );
  }
}