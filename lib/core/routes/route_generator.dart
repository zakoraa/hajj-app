import 'package:flutter/material.dart';
import '../../ui/common/login/screens/login_screen.dart';
import '../../ui/user/home/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'route_name.dart';

class RouteGenerator {
  const RouteGenerator._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    const int duration = 500;
    const Curve curve = Curves.easeIn;
    switch (settings.name) {
      case RouteName.login:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
          duration: const Duration(milliseconds: duration),
          curve: curve,
          isIos: true,
        );

      case RouteName.home:
        return PageTransition(
          child: const HomeScreen(),
          type: PageTransitionType.rightToLeft,
          settings: settings,
          duration: const Duration(milliseconds: duration),
          curve: curve,
          isIos: true,
        );

      // TODO: Menambahkan halaman sesuai dengan route name

      default:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
    }
  }
}
