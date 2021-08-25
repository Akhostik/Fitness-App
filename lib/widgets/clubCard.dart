import 'package:flutter/material.dart';

Widget clubCard(String img, clubOwner, clubGoal, clubName){
  return Container(
    width: 160,
    child: Card(
      child: Container(
          padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
            
              children: [
                 CircleAvatar(
                 
                radius: 30,
                child: ClipRRect(
                  
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    width: 200,
                    height: 70,
                    child: Image.asset(img)))
              ),
               SizedBox(width: 10,),
              Text('$clubOwner', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
              ],
            ),
          Text('$clubGoal', style: TextStyle(color: Colors.grey[600])),

          SizedBox(height: 50,),
          Text('$clubName', style: TextStyle(color: Colors.orange))

          ],
        ),
      ),
    ),
  );
}