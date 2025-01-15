import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hajj_umrah_accessories/ui/user/main/screens/main_screen.dart';

import '../core/constants/common/locale_id_constant.dart';
import '../core/l10n/l10n.dart';
import '../main.dart';
import 'setting/view_models/setting_view_model.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => _buildMaterialApp(context, ref));
  }

  MaterialApp _buildMaterialApp(BuildContext context, WidgetRef ref) {
    final themeViewModel =
        ref.watch(settingViewModelProvider(context: context).notifier);
    themeData(BuildContext context) => themeViewModel.activeTheme(context);
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
          data: themeData(context),
          child: MainScreen(),
        );
      },
      supportedLocales: L10n.all,
      locale: Locale(LocaleIdConstant.ID),
    );
  }
}
