import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

import 'styles/colors.dart';

class AppLoader {
  static void showLoader(BuildContext context) {
    Loader.show(context,
        progressIndicator:
        const CircularProgressIndicator(color: AppColor.primary));
  }

  static void stopLoader() {
    Loader.hide();
  }
}
