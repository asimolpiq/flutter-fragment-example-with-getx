import 'package:flutter/material.dart';

import '../views/fragments/fragment_screen.dart';
import '../views/myacountscreen.dart';
import '../views/supportscreen.dart';

class ProjectLists {
  static ProjectLists instance = ProjectLists._();

  final bottomNavItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(icon: Icon(Icons.support_outlined), label: "Support"),
    const BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "My Account"),
  ];

  final List<Widget> pages = [
    FragmentPage(),
    const SupportScreen(),
    const MyAccountScreen()
  ]; //AppMain syafasında göstereceğimiz Sayfalar

  ProjectLists._();
}
