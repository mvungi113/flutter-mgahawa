import 'package:flutter/material.dart';
import 'package:mgahawa/views/categories.dart';
import 'package:mgahawa/views/search.dart';
import 'package:mgahawa/views/homepage.dart';
import 'package:mgahawa/views/profile.dart';
import 'package:mgahawa/widgets/btnNavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List screens = [
    MyHomeage(),
    Search(),
    profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: onItemTapped,
      ),
      body: Center(child: screens.elementAt(selectedIndex)),
    );
  }
}
