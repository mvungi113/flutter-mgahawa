import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';
import 'package:mgahawa/constant/apptheme.dart';
import 'package:mgahawa/widgets/drawer.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green100,
        title: const Text(
          'User profile',
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
      body: ListView(children: [
        Container(
          color: green100,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/users/user1.jpg'),
                ),
              ),
              Text(
                'mailuser@gmail.com',
                style: TextStyle(
                  color: green500,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          // color: green100,
          padding: const EdgeInsets.all(10),
          decoration: appTheme.BoxDeco,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Phone Number',
              style: appTheme.CardView,
            ),
            Text(
              '076975809',
              style: appTheme.realPrice,
            ),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          // color: green100,
          padding: const EdgeInsets.all(10),
          decoration: appTheme.BoxDeco,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Username',
              style: appTheme.CardView,
            ),
            Text(
              'Ndanda',
              style: appTheme.realPrice,
            ),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          // color: green100,
          padding: const EdgeInsets.all(10),
          decoration: appTheme.BoxDeco,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Password',
              style: appTheme.CardView,
            ),
            Text(
              '******',
              style: appTheme.realPrice,
            ),
          ]),
        ),
        Container(
          width: 200,
          margin: const EdgeInsets.symmetric(
            horizontal: 60,
          ),
          child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
              label: Text(
                'Delete Account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              )),
        )
      ]),
    );
  }
}
