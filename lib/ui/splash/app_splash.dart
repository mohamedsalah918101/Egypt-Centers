import 'package:flutter/material.dart';
import 'package:sanater/ui/main_screens/main_screen.dart';

import '../onboarding/onboarding_screen.dart';
import '../widgets/custom_container.dart';
import '../widgets/navigate.dart';


class AppSplash extends StatefulWidget {
  const AppSplash({super.key});

  @override
  State<AppSplash> createState() => _AppSplashState();
}

class _AppSplashState extends State<AppSplash> with TickerProviderStateMixin{
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0)).then((value) => loadData());

    super.initState();
  }

  void loadData() async {

    await Future.delayed(const Duration(seconds: 3));
     navigateAndFinish(
      context, const OnboardingScreen(),
    );

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomSizedBox(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  CustomContainer(
                  height: 812,
                  width: 375,
                  image: DecorationImage(
                      image: AssetImage('assets/images/splash.png'),
                      fit: BoxFit.cover,
                  )),
              /*verticalSpace(20),
              const Visibility(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: DataLoader(useExpand: false),
                ),
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
