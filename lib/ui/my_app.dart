import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hajj_umrah_accessories/ui/user/home/screens/home_screen.dart';

import '../core/constants/common/locale_id_constant.dart';
import '../core/l10n/l10n.dart';
import '../main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          builder: (ctx, child) {
            ScreenUtil.init(ctx);
            return Theme(
              data: ThemeData(),
              child: HomeScreen(),
            );
          },
          supportedLocales: L10n.all,
          locale: Locale(LocaleIdConstant.ID),
        );
      },
    );
  }
}
