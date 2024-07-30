import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sanater/ui/widgets/spaces.dart';
import 'package:sanater/ui/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';


import '../../utils/styles/colors.dart';


class DefaultButtonWithIcon extends StatelessWidget {
  const DefaultButtonWithIcon({
    super.key,
    this.width,
    this.height,
    this.elevation,
    this.labelSize,
    this.textColor,
    this.backgroundButton,
    this.borderRadius,
    required this.icon,
    required this.onPressed,
    required this.labelText,
    this.padding,
    this.border = false,
    this.borderColor,
  });

  final double? width, height, elevation, labelSize;
  final Color? textColor, backgroundButton, borderColor;
  final BorderRadiusGeometry? borderRadius;
  final bool border;
  final VoidCallback onPressed;
  final String labelText;
  final Widget icon;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width != null ? (width! / screenWidth) * 100.w : null,
      height: height != null
          ? (height! / screenHeight) * 100.h // deduct safe area space
          : null,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Text(
          labelText,
        ),
        icon: icon,
        style: ElevatedButton.styleFrom(
            alignment: Alignment.centerLeft ,
            foregroundColor: textColor ?? Colors.white,
            backgroundColor: backgroundButton ?? AppColor.primary,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(5),
                side: border
                    ? BorderSide(
                        width: 1, // the thickness
                        color: borderColor ??
                            Colors.black // the color of the border
                        )
                    : BorderSide.none),
            padding: padding ?? EdgeInsets.symmetric(horizontal: 1.w),
            textStyle: TextStyle(fontSize: labelSize)),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.borderColor,
    this.elevation = 2,
    this.fontSize = 12,
    this.enabled = true,
    this.border = false,
    this.padding,
    this.radiusCircular,
    this.fontWeight = FontWeight.w400,
  });
  final double? width, height, elevation, fontSize, radiusCircular;
  final Color? backgroundColor, textColor, borderColor;
  final String text;
  final VoidCallback onPressed;
  final bool border;
  final bool enabled;
  final EdgeInsetsGeometry? padding;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width != null ? (width! / screenWidth) * 100.w : null,
      height: height != null
          ? (height! / screenHeight) * 100.h // deduct safe area space
          : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: padding,
            backgroundColor: backgroundColor ?? AppColor.primary,
            disabledBackgroundColor: backgroundColor ?? AppColor.primary,
            elevation: elevation,
            shape: RoundedRectangleBorder(
                side: border
                    ? BorderSide(color: borderColor ?? Colors.grey, width: .5)
                    : BorderSide.none,
                borderRadius: BorderRadius.circular(radiusCircular ?? 5))),
        onPressed: enabled ? onPressed : null,
        child: TextWidget(
          text: text,
          fontWeight: fontWeight,
          color: textColor!,
          size: fontSize!,
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.horizontalMargin = 0,
    this.verticalMargin = 0,
    this.color = AppColor.primary,
    required this.title,
    this.hasLoader = false,
    required this.onTapped,
  });

  final String title;
  final Color color;
  final double horizontalMargin;
  final double verticalMargin;
  final bool hasLoader;
  final Function() onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        height: 7.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        margin: EdgeInsets.symmetric(
            horizontal: horizontalMargin.w, vertical: verticalMargin.h),
        decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
        child: !hasLoader ? Center(
          child: Text(
            title.toCapitalized(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700),
          ),
        )
            : Stack(
          children: [
            Center(
              child: Text(
                title.toCapitalized(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
            if (Intl.getCurrentLocale() == "en")
              Positioned(
                right: 2.w,
                child: SizedBox(
                    height: 2.5.h,
                    width: 2.5.h,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    )),
              ),
            if (Intl.getCurrentLocale() == "ar")
              Positioned(
                left: 2.w,
                child: SizedBox(
                    height: 2.5.h,
                    width: 2.5.h,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    )),
              ),
          ],
        ),
      ),
    );
  }
}

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    required this.text,
    required this.function,
    this.boxShadow,
    required this.height,
    required this.width,
    this.textSize= 14,
  });

  final String text;
  final double height, width, textSize;
  final VoidCallback function;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (height / screenHeight) * 100.h,
      width: (width / screenWidth) * 100.w,
      decoration: BoxDecoration(
        gradient: AppColor.gradientPrimary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: boxShadow,
      ),
      child: MaterialButton(
        onPressed: function,
        child: TextWidget(
          text: text,
          size: textSize,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
