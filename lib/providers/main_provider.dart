import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sanater/ui/home/home_screen.dart';

import '../main.dart';


class MainProvider with ChangeNotifier {

  bool _isUserLoggedIn = false;

  bool get isUserLoggedIn => _isUserLoggedIn;

  set isUserLoggedIn(bool value) {
    _isUserLoggedIn = value;
    notifyListeners();
  }

  final List<Widget> tabs = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];


  int selectedTap= 0;

  // int get selectedTap => _selectedTap!;
  //
  void setSelectedTap(int value) {
    selectedTap = value;
    notifyListeners();
  }




}
