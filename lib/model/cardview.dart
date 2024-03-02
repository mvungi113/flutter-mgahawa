import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';
import 'package:mgahawa/constant/apptheme.dart';

class CardView extends StatelessWidget {
  const CardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: green500,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 0.5,
                spreadRadius: 0.5,
                color: green200,
              )
            ],
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Best Easy Dinners',
                        style: appTheme.card,
                      ),
                      const Text(
                        'We’ve rounded up more than 60 best, easy dinner recipes! From grilled steak to braised chickpeas to allll the sheet pan dinners—we’ve got you covered.',
                        style: appTheme.cardPara,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.next_plan_outlined),
                        label: const Text('Check Out'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset('assets/images/coffee-cup.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
