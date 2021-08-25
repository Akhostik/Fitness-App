import 'package:flutter/material.dart';
import 'package:flutter_app6/widgets/clubCard.dart';

class Profile extends StatelessWidget {

  String catImage= 'assets/yoga.jpg';

 List<String> clubtImage= [
    'assets/people.jpg',
    'assets/eat.jpg',
    'assets/yoga.jpg',
    'assets/style.jpg'
  ];

  List<String> clubOwners= [
    'Joey',
    'Cynthia',
    'Morgan',
    'Freeman'
  ];

List<String> clubName= [
    'People',
    'Foodist',
    'Yogist',
    'Stylers'
  ];

  
  List<String> clubGoal= [
    'Do well with us',
    'Chilling for life!',
    'The best experience i ever had!',
    'Would love to visit here more often'
  ];


 


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
          child: Column(
        children:[
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.keyboard_arrow_left),
                CircleAvatar(
                  radius: 30,
                  child: ClipRRect(
                    
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 200,
                      height: 70,
                      child: Image.asset(catImage)))
                ),
                
              Icon(Icons.more_vert_outlined),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text('John GuruGuru', style: TextStyle(color: Colors.black, fontSize: 25),),
          Text('Yoga Instructor', style: TextStyle(color: Colors.grey),),
       SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             
              Column(
                children: [
            Text('5', style: TextStyle(color: Colors.black, fontSize: 15),),
          Text('Talks', style: TextStyle(color: Colors.grey),),
                ]
              ),
              Column(
                children: [
            Text('97%', style: TextStyle(color: Colors.black, fontSize: 15),),
          Text('Profile', style: TextStyle(color: Colors.grey),),
                ]
              ),
              Column(
                children: [
            Text('130', style: TextStyle(color: Colors.black, fontSize: 15),),
          Text('Followers', style: TextStyle(color: Colors.grey),),
                ]
              ),
              Column(
                children: [
            Text('100', style: TextStyle(color: Colors.black, fontSize: 15),),
          Text('Following', style: TextStyle(color: Colors.grey),),
                ]
              ),

            ],
          ),

      Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30,10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Going To', style: TextStyle(color: Colors.black, fontSize: 25, )),
          ],
        ),
      ),
      SizedBox(height: 10,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          clubCard('${clubtImage[0]}', '${clubOwners[0]}', '${clubGoal[0]}', '${clubName[0]}'),
            clubCard('${clubtImage[1]}', '${clubOwners[1]}', '${clubGoal[1]}', '${clubName[1]}')

        ],
      ),
     Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30,10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Recent Experiences', style: TextStyle(color: Colors.black, fontSize: 25, )),

          ],
        ),
      ),
   Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          clubCard('${clubtImage[2]}', '${clubOwners[2]}', '${clubGoal[2]}', '${clubName[2]}'),
            clubCard('${clubtImage[3]}', '${clubOwners[3]}', '${clubGoal[3]}', '${clubName[3]}')

        ],
      ),
        ]
      ),
    );
  }
}