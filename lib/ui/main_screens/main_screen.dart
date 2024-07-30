import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';


import '../../providers/main_provider.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final MainProvider mainProvider = Provider.of<MainProvider>(context,);
    return Scaffold(
      body: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10.h),
              child: mainProvider.tabs[mainProvider.selectedTap]),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [

            ],
          )
        ],
      ),
    );
  }

}
