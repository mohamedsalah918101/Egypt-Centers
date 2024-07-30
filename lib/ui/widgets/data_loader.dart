import 'package:flutter/material.dart';

import '../../utils/styles/colors.dart';

class DataLoader extends StatelessWidget {
  const DataLoader({super.key, this.useExpand = false});
  final bool useExpand;
  @override
  Widget build(BuildContext context) {
    return useExpand
        ? const Expanded(
            child: Center(
                child: CircularProgressIndicator(
            color: AppColor.primary,
          )))
        : const Center(
            child: CircularProgressIndicator(
            color: AppColor.primary,
          ));
  }
}
