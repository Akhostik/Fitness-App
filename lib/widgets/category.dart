import 'package:flutter/material.dart';

Widget categoryCard(String image, catName){

  return Container(
    height: 100,
    child: Column(children: [
      Container(
        height: 70,
        child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(image))),
      SizedBox(height: 10,),
      Text('$catName', style: TextStyle(fontWeight: FontWeight.bold),)
    ],),
  );
}