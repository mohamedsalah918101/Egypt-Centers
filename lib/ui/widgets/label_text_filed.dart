
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../utils/styles/colors.dart';
import 'head_line.dart';

class LabelTextFormFiled extends StatelessWidget {
  const LabelTextFormFiled(
      {super.key,
      required this.label,
      required this.hintText,
      this.onChanged,
      this.keyboardType = TextInputType.text,
      this.suffixWidget,
      this.maxLines = 1,
      this.controller ,
      this.hasSuffix = false,
      this.optionalField = false,
      });

  final String label;
  final String hintText;
  final Widget? suffixWidget;
  final bool hasSuffix;
  final bool optionalField;
  final int? maxLines;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadLine(title: label, onSuffixLabelTapped: () {}),
        Padding(
          padding: EdgeInsets.only(bottom: 2.2.h, right: 5.w, left: 5.w),
          child: TextFormField(
            controller: controller,
            maxLines: maxLines,
            inputFormatters: keyboardType == TextInputType.number
                ? [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ]
                : [],
            validator: (val) =>
                val!.isEmpty && !optionalField? 'This Field Is Required' : null,
            onChanged: onChanged,
            keyboardType: keyboardType,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    fontSize: 11.5.sp,
                    ),
                suffixIcon: hasSuffix ? suffixWidget : const SizedBox(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                fillColor: Colors.white,
                filled: true,
                border: InputBorder.none,
                enabledBorder: buildOutlineInputBorder(),
                errorBorder: buildOutlineInputBorder(),
                focusedErrorBorder: buildOutlineInputBorder(),
                focusedBorder: buildOutlineInputBorder()),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
          width: .8, color: AppColor.hintColor.withOpacity(0.5)), //<-- SEE HERE
    );
  }
}
