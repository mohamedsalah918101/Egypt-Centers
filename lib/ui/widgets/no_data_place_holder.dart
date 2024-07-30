import 'package:flutter/material.dart';
import 'package:sanater/ui/widgets/text_widget.dart';

import '../../generated/l10n.dart';
import '../../utils/styles/colors.dart';

class NoDataPlaceHolder extends StatelessWidget {
  const NoDataPlaceHolder({super.key, this.useExpand = true});
  final bool useExpand;

  @override
  Widget build(BuildContext context) {
    return useExpand
        ? Expanded(
            child: Container(
              alignment: Alignment.center,
              child: const TextWidget(
                text: 'No Data Available',
                color: Colors.grey,
              ),
            ),
          )
        : const Center(
            child: TextWidget(
              text: 'No Data Available',
              color: Colors.grey,
            ),
          );
  }
}
