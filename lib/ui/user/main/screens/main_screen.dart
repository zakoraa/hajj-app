import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/ui/user/common/screens/base_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      child: Column(
        children: [
          Text("HALLO")
        ],
      ),
    );
  }
}