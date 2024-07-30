import 'package:flutter/material.dart';
import 'package:sanater/utils/styles/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';


class HeadLine extends StatelessWidget {
  const HeadLine(
      {super.key,
      required this.title,
      this.suffixLabel = "",
      this.hasSuffixLabel = false,
      this.topPadding = 1.5,
      this.bottomPadding = 1.5,
        this.onSuffixLabelTapped});

  final String title;
  final double topPadding;
  final double bottomPadding;
  final String suffixLabel;
  final bool hasSuffixLabel;
  final Function()? onSuffixLabelTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: AppColor.mainTextColor,
              fontSize: 13.sp,
              fontWeight:Intl.getCurrentLocale() == "en" ? FontWeight.w600 : FontWeight.w700),
        ),
        hasSuffixLabel
            ? GestureDetector(
                onTap: onSuffixLabelTapped,
                child: Text(
                  suffixLabel,
                  style: TextStyle(
                    color: AppColor.primary,
                    fontSize: 11.sp,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
