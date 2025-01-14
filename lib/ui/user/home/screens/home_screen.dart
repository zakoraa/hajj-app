import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/styles/fonts/app_font.dart';
import '../../../../core/utils/lang.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Lang.of(context).home),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Lang.of(context).helloWorld,
          style: AppFont.text16,
        ),
      ),
    );
  }
}
