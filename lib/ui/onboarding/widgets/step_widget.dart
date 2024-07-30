
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/custom_container.dart';
import '../../widgets/text_widget.dart';

class StepWidget extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String description;
  final bool isActive;
  final bool isLineLeft;
  final bool isLineRight;

  const StepWidget({super.key,
    required this.stepNumber,
    required this.title,
    required this.description,
    this.isActive = false,
    this.isLineLeft= false,
    this.isLineRight= false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Visibility(
                visible: isLineLeft,
                  child: SvgPicture.asset('assets/svg/scratchLine.svg')),
            ),
            CircleAvatar(
              radius: 16,
              backgroundColor: isActive ? const Color(0xFFFE5E00) : const Color(0xFFFFE6E6),
              child: TextWidget(
                text: stepNumber,
                color: Colors.white,
                size: isActive ? 16 : 14,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Expanded(
              child: Visibility(
                  visible: isLineRight,
                  child: SvgPicture.asset('assets/svg/scratchLine.svg')),
            ),
          ],
        ),
        const SizedBox(height: 8),
        TextWidget(
          text: title,
          fontWeight: FontWeight.bold,
          color: isActive ? const Color(0xFF263238) : const Color(0xFF263238).withOpacity(0.2),
        ),
        const SizedBox(height: 8),
        CustomContainer(
          width: 115,
          height: 65,
          padding: const EdgeInsets.all(5),
          backgroundColor: isActive ? const Color(0xFFFFEDD3) : const Color(0xFFFFE6E6),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: isActive ? const Color(0xFF3E3E3E) : const Color(0xFF808080),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
