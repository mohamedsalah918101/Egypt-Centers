
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sanater/providers/authentication_provider.dart';
import 'package:sanater/providers/main_provider.dart';
import 'package:sanater/ui/splash/app_splash.dart';
import 'package:sanater/utils/cache_helper.dart';
import 'package:sanater/utils/styles/colors.dart';
import 'package:sanater/utils/styles/themes.dart';
import 'package:sizer/sizer.dart';

import 'generated/l10n.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFFFE5E00),
  ));
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthenticationProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MainProvider(),
        ),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Elite Dashboard',
          theme: ThemeData(
            fontFamily:"tajawal",
            primarySwatch: Colors.orange,
            appBarTheme: const AppBarTheme(
                color: Colors.white,
                iconTheme: IconThemeData(color: Colors.black)),
            scaffoldBackgroundColor: AppColor.scaffoldBGLight,
          ),
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale("ar"),
          home: const AppSplash(),
        );
      }),
    );
  }
}
