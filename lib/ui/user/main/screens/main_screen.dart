import 'package:flutter/material.dart';

import '../../common/screens/base_screen.dart';
import '../widgets/tab_bar_view_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreen(
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          TabBarViewWidget(),
          // BottomNavbar(),
        ],
      ),
    );
  }
}
