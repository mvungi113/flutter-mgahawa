import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';
import 'package:mgahawa/constant/apptheme.dart';
import 'package:mgahawa/model/search_dishes.dart';
import 'package:mgahawa/widgets/drawer.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green100,
        title: const Text('Search', style: appTheme.titleText),
        centerTitle: true,
        actions: [
          ElevatedButton.icon(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor: MaterialStateProperty.all(green100)),
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined),
              label: const Text('0'))
        ],
      ),
      drawer: const DrawerNav(),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            decoration: const BoxDecoration(
                color: green100,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search Here....',
                icon: Icon(Icons.search),
                iconColor: green500,
                border: InputBorder.none,
              ),
            ),
          ),
          SearchDishes(),
        ],
      ),
    );
  }
}
