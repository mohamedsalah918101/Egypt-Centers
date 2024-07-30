import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanater/ui/onboarding/widgets/step_widget.dart';
import 'package:sanater/ui/widgets/custom_container.dart';
import 'package:sanater/ui/widgets/text_widget.dart';
import 'package:sanater/utils/styles/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../generated/l10n.dart';
import '../../widgets/spaces.dart';
import '../../../models/onboarding_item_model.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.model,
  });

  final OnBoardingItemsModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(50),
        CustomSizedBox(
          height: 265,
          width: 265,
          child: Padding(
            padding: EdgeInsets.all(model.paddingAll),
            child: SvgPicture.asset('assets/svg/${model.svgVectorName}.svg',
            ),
          ),
        ),
        verticalSpace(160),
        TextWidget(text: model.textTitle,color: AppColor.primary,size: 22.sp,),
        verticalSpace(10),
        model.pageNum == 1
            ? Padding(
              padding: symmetricEdgeInsets(vertical: 20,horizontal: 20),
              child: TextWidget(text: S.of(context).dontWorryOurAppMakesItEasy,
                textAlign: TextAlign.center,
                height: 1.7,
                size: 16,
              ),
            )
            : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: StepWidget(
                    stepNumber: '1',
                    title: S.of(context).getCode,
                    description: S.of(context).getAUniqueCodeFromYourTeacher,
                    isActive: model.pageNum == 2 ? true : false,
                    isLineRight: model.pageNum >= 3 ? true : false,

                  ),
                ),
                horizontalSpace(5),
                Expanded(
                  child: StepWidget(
                    stepNumber: '2',
                    title: S.of(context).enterCode,
                    description: S.of(context).registerAndUseTheCode,
                    isActive: model.pageNum == 3 ? true : false,
                    isLineLeft: model.pageNum >= 3 ? true : false,
                    isLineRight: model.pageNum >= 4 ? true : false,

                  ),
                ),
                horizontalSpace(5),
                Expanded(
                  child: StepWidget(
                    stepNumber: '3',
                    title: S.of(context).followTheClass,
                    description: S.of(context).followTheClassOnTheAppAn,
                    isActive: model.pageNum == 4 ? true : false,
                    isLineLeft: model.pageNum >= 4 ? true : false,
                  ),
                ),
              ],
            )
        // Image.asset('assets/images/b.png',fit: BoxFit.fitWidth,width: 100.w,),
      ],
    );
  }
}





