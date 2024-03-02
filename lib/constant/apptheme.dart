import 'package:flutter/material.dart';
import 'package:mgahawa/constant/appcolor.dart';

class appTheme {
  static const titleText = TextStyle(
    color: gray400,
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
  );

  static const avatorText = TextStyle(
    color: grey500,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
  );

  static const card = TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.w500,
  );

  static const cardPara = TextStyle(
    color: green100,
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );

  static const dishesCard = TextStyle(
    color: secondary,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
  );

  static const linethrough = TextStyle(
    decoration: TextDecoration.lineThrough,
    color: Colors.redAccent,
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
  );

  static const realPrice = TextStyle(
    color: Colors.redAccent,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static const CardView = TextStyle(
    color: gray400,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  static const BoxDeco =  BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    color: green200,
  );
}
