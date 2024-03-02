import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';
import 'package:mgahawa/constant/apptheme.dart';
import 'package:mgahawa/model/cardview.dart';
import 'package:mgahawa/model/dishes.dart';
import 'package:mgahawa/model/popuardishes.dart';
import 'package:mgahawa/model/usermodelView.dart';
import 'package:mgahawa/widgets/drawer.dart';

class MyHomeage extends StatefulWidget {
  const MyHomeage({super.key});

  @override
  State<MyHomeage> createState() => _MyHomeageState();
}

class _MyHomeageState extends State<MyHomeage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green100,
        title: const Text(
          'Homepage',
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
      body: ListView(
        children: [
          userModel_view(),
          CardView(),
          populardishes(),
          DishesList(),
        ],
      ),
    );
    ;
  }
}
