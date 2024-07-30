import 'package:flutter/material.dart';
import 'package:sanater/ui/widgets/spaces.dart';
import 'package:sanater/ui/widgets/text_widget.dart';
import 'package:sizer/sizer.dart';
import 'head_line.dart';



import '../../utils/styles/colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.width,
    this.height,
    this.radiusCircular = 10,
    this.child,
    this.padding,
    this.margin,
    this.alignment,
    this.backgroundColor,
    this.backgroundColorDark,
    this.borderColorDark,
    this.onTap,
    this.borderColor = Colors.transparent,
    this.image,
    this.clipBehavior = Clip.none,
    this.borderRadius,
    this.isCircle = false,
  });

  final double? width, height;
  final double radiusCircular;
  final Widget? child;
  final EdgeInsetsGeometry? padding, margin;
  final Color? backgroundColor, borderColor;
  final Color? backgroundColorDark, borderColorDark;
  final AlignmentGeometry? alignment;
  final GestureTapCallback? onTap;
  final DecorationImage? image;
  final Clip clipBehavior;
  final BorderRadiusGeometry? borderRadius;
  final bool isCircle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width != null ? (width! / screenWidth) * 100.w : null,
        height: height != null
            ? (height! / screenHeight) * 100.h // deduct safe area space
            : null,
        clipBehavior: clipBehavior,
        padding: padding ?? EdgeInsets.zero,
        alignment: alignment,
        margin: margin ?? const EdgeInsets.all(0),
        decoration: BoxDecoration(
          image: image,
          color: backgroundColor,
          borderRadius: borderRadius ?? BorderRadius.circular(radiusCircular),
          border: borderColor != null
              ? Border.all(
                  color: borderColor!)
              : null,
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
        ),
        child: child,
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox(
      {super.key, this.width, this.height, required this.child, this.onTap});
  final double? width, height;
  final GestureTapCallback? onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width != null ? (width! / screenWidth) * 100.w : null,
        height: height != null
            ? (height! / screenHeight) * 100.h // deduct safe area space
            : null,
        child: child,
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child, this.onTap});

  final Widget child;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: AppColor.primary.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}



class CustomLabelField extends StatelessWidget {
  const CustomLabelField({
    super.key,
    required this.label,
    required this.text,
  });

  final String label, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadLine(title: label, onSuffixLabelTapped: () {}),
        Container(
          width: double.infinity,
          height: 44,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.hintColor.withOpacity(0.5),
            ),
            color: Colors.white,
          ),
          padding: symmetricEdgeInsets(horizontal: 16),
          child: Row(
            children: [
              TextWidget(text: text, isTitle: true,),
            ],
          ),
        ),
      ],
    );
  }
}
