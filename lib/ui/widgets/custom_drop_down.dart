import 'package:flutter/material.dart';
import 'package:sanater/ui/widgets/spaces.dart';

import '../../utils/styles/colors.dart';
import 'head_line.dart';

class CustomDropDownField extends StatelessWidget {
  const CustomDropDownField({
    super.key,
    required this.label,
    required this.dropDown,
  });

  final String label;
  final Widget dropDown;

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
          child: DropdownButtonHideUnderline(
            child: dropDown,
          ),
        ),
      ],
    );
  }
}
