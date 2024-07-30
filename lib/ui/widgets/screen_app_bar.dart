
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../utils/styles/colors.dart';


class ScreenAppBar extends StatelessWidget {
  const ScreenAppBar(
      {super.key, required this.title, this.hasArrowBack = false, this.isFromVendor = false,this.onTapped});

  final String title;

  final bool hasArrowBack;
  final bool isFromVendor;
  final Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
            child: Column(
              children: [
                SizedBox(height: 3.h),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: Intl.getCurrentLocale() == "en" ? FontWeight
                          .w600 : FontWeight.w700),
                ),
                SizedBox(height: 1.h),
                if(!isFromVendor)
                  Divider(
                    color: AppColor.dividerColor,
                  )
              ],
            )),
        if (hasArrowBack)
          Positioned(
            left: Intl.getCurrentLocale() == "en" ? 4.w : null,
            right: Intl.getCurrentLocale() == "en" ? null : 4.w,
            bottom: !isFromVendor ? 2.2.h : 1.h,
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.arrow_back),
            ),
          ),
      ],
    );
  }
}
