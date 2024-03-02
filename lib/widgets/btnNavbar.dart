import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';

class BottomMenu extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  BottomMenu({this.selectedIndex, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
    
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onClicked,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: green500,
      backgroundColor: green100,
      unselectedItemColor: gray400,
    );
  }
}
