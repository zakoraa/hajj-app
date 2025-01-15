import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'di/injector.dart';
import 'ui/my_app.dart';

export 'package:flutter_gen/gen_l10n/app_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  configureDependencies();
  await ScreenUtil.ensureScreenSize();

  runApp(const  ProviderScope(child:MyApp()));
}
