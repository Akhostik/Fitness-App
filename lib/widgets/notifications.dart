import 'package:flutter/material.dart';

Widget notificationItem(String img, notifDetails){
  return Container(
    margin: EdgeInsets.only(left:15, right:15),
    child: Column(
      children: [
        Row(

          children: [
            Column(
              children: [
                 CircleAvatar(
                       
                      radius: 20,
                      child: ClipRRect(
                        
                        borderRadius: BorderRadius.circular(60),
                        child: Container(
                       
                          width: 100,
                          height: 100,
                          child: Image.asset(img)))
                    ),
              ],
            ),
            SizedBox(width: 20,),
            Column(
                children: [
                  Text('$notifDetails'),
                   
                ],
            )
          ],
        ),
        Divider(),
      ],
    ),
  );

}