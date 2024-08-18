import 'package:flutter/material.dart';

class NavigatorMenu extends StatelessWidget {
  const NavigatorMenu({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: NavigationBar(
        height:80,
        elevation:0,
        destinations: const[
          NavigationDestination(icon: Icon(Icons.home_max_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.search_off_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.plus_one_rounded), label: ''),
          NavigationDestination(icon: Icon(Icons.notification_add_outlined), label: ''),
          NavigationDestination(icon: Icon(Icons.person_2_rounded), label: ''),
        ],
      ),
    );
  }
}