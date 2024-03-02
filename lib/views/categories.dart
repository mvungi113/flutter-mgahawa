import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';
import 'package:mgahawa/constant/apptheme.dart';
import 'package:mgahawa/widgets/drawer.dart';

class categories extends StatelessWidget {
  const categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green100,
        title: const Text(
          'Categories',
          style: appTheme.titleText,
        ),
        centerTitle: true,
        actions: [
          ElevatedButton.icon(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor: MaterialStateProperty.all(green100),
              ),
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
              label: const Text('0'))
        ],
      ),
      drawer: const DrawerNav(),
    );
  }
}
