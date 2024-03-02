import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';
import 'package:mgahawa/constant/apptheme.dart';
import 'package:mgahawa/data/user_list.dart';

class userModel_view extends StatelessWidget {
  const userModel_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(10),
      // color: green100,
      width: double.infinity,
      height: 100,
      child: ListView.builder(
        itemCount: users.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width * 0.2,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(users[index].imgUrl),
              ),
              Text(
                users[index].title,
                style: appTheme.avatorText,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),

        
      ),
    );
  }
}
