import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sanater/ui/home/home_screen.dart';
import 'package:sanater/ui/onboarding/widgets/boarding_items_list.dart';
import 'package:sanater/ui/onboarding/widgets/page_view_items.dart';
import 'package:sanater/ui/widgets/custom_button.dart';
import 'package:sanater/ui/widgets/custom_container.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../generated/l10n.dart';
import '../../main.dart';
import '../../utils/cache_helper.dart';
import '../../utils/enum/shared_preference_keys.dart';
import '../../utils/styles/colors.dart';
import '../widgets/navigate.dart';
import '../widgets/spaces.dart';
import '../widgets/text_widget.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool _isLast = false;
  bool _firstPage = true;

  void submit() {
    CacheHelper.saveData(key: CacheKey.showOnBoarding, value: true)
        .then((value) {
      if (value) {
        navigateAndFinish(context, const HomeScreen());
      }
    });
  }

  @override
  void dispose() {
    CacheHelper.saveData(key: CacheKey.showOnBoarding, value: true);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var boardController = PageController();

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SvgPicture.asset('assets/svg/boardingTop.svg',width: 100.w,fit: BoxFit.fitWidth,),
              verticalSpace(15),
              SvgPicture.asset('assets/svg/logo.svg',),
              verticalSpace(10),
              TextWidget(text: S.of(context).welcomeToHesa,color: Colors.black,fontWeight: FontWeight.bold,),
              const Spacer(),
              SvgPicture.asset('assets/svg/boardingBottom.svg',),
            ],
          ),
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: boardController,
            itemBuilder: (context, index) =>
                PageViewItem(model: boardingItemsList[index]),
            itemCount: boardingItemsList.length,
            onPageChanged: (int index) {
              if (index == boardingItemsList.length - 1) {
                setState(() {
                  _isLast = true;
                });
              } else {
                setState(() {
                  _isLast = false;
                });
              }
              if (index == 0) {
                setState(() {
                  _firstPage = true;
                });
              } else {
                setState(() {
                  _firstPage = false;
                });
              }
            },
          ),
          Positioned(
            top: 6.h,
            right: 6.w,
            child: Visibility(
              visible: _isLast ? false : true,
              child: GestureDetector(
                onTap: () {
                  submit();
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svg/arrowRight.svg',width: 5.w,),
                    horizontalSpace(3),
                    TextWidget(
                      text: S.of(context).skip,
                      color: Colors.white,
                      size: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),

                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 17.h,
            left: 43.w,
            child: SmoothPageIndicator(
              controller: boardController,
              count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColor.primary,
                dotColor: AppColor.primary.withOpacity(0.2),
                dotHeight: 8,
                dotWidth: 7,
                expansionFactor: 1.1,
                spacing: 3.w,
              ),
            ),
          ),
          Positioned(
            bottom: 10.h,
            child: SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomGradientButton(
                    text: _isLast ? S.of(context).getstarted : S.of(context).next,
                    textSize: 16,
                    function: (){
                      _isLast ? submit()
                      : boardController.nextPage(
                        duration: const Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                    },
                    height: 40,
                    width: 75,
                  ),
                  horizontalSpace(10),
                  Visibility(
                    visible: _firstPage ? false : true,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        onTap: () {
                          boardController.previousPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn,
                          );
                        },
                        child: TextWidget(
                          text: S.of(context).previous,
                          color: AppColor.primary,
                          size: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
