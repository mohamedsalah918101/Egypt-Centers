import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomDialogButton extends StatelessWidget {
  const CustomDialogButton({
    super.key,
    required this.title,
    required this.onTapped,
    required this.containerBG,
    required this.textColor,
  });

  final String title;
  final Color containerBG;
  final Color textColor;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: 33.w,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: .5,
            blurRadius: 5,
            offset: const Offset(1, 1), // changes position of shadow
          ),
        ], color: containerBG, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 13.sp,
            ),
          ),
        ),
      ),
    );
  }
}
