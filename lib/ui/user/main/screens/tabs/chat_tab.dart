import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.blue,
      height: 1.sh,
      width: 1.sw,
      child: const Center(
        child: Text("CHAT TAB"),
      ),
    );
  }
}