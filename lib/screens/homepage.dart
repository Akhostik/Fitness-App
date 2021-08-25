import 'package:flutter/material.dart';
import 'package:flutter_app6/screens/detail.dart';
import 'package:flutter_app6/widgets/category.dart';
import 'package:flutter_app6/widgets/fitness.dart';
import 'package:flutter_app6/widgets/searchbar.dart';
import 'package:flutter/src/rendering/box.dart';


class HomePageMain extends StatefulWidget {
  @override
  _HomePageMainState createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {

  List<String> catImage= [
    'assets/people.jpg',
    'assets/eat.jpg',
    'assets/yoga.jpg',
    'assets/style.jpg'
  ];


 List<String> gridImage =[
   'assets/running.jpg',
   'assets/skating.jpg',
   'assets/eat.jpg',
    'assets/yoga.jpg',
 ];

 List<String> clubName=[
   'Bolt Niggaz',
   'Skaters',
   'Food Club',
   'Yoga Apostles'
 ];

 List<String> benefit =[
   'Run like the wind',
   'Learn skating',
   'Gain some calories!',
   'Workout those thies'
 ];
  List<String> catName =[
    'People',
    'Places to Eat',
    'Yoga',
    'style'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
body: SingleChildScrollView(
  child: Container(
    padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
    child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        Container(
          height:100,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Card(
          
                    child: Row(
              children: [
             Icon(Icons.search),
              Text('Try Searching')
              ],
            ),
          ),
        ),
        SizedBox(height: 30,),


        Container(
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              categoryCard(catImage[0], catName[0]),
               categoryCard(catImage[1], catName[1]),
                categoryCard(catImage[2], catName[2]),
                    categoryCard(catImage[3], catName[3])

            ],
          ),
        ),
         SizedBox(height: 30,),
         Container(
           padding:EdgeInsets.all(15),
           child: Text('Fitness and Run Clubs', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,))
           ),
          SizedBox(height: 30,),

          Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Details('${gridImage[0]}')
                  ));
                },
                child: fitItem(gridImage[0], '${clubName[0]}', '${benefit[0]}')),
              fitItem(gridImage[1], '${clubName[1]}', '${benefit[1]}'),
            ],
          ),
           SizedBox(height: 30,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              fitItem(gridImage[2], '${clubName[2]}', '${benefit[2]}'),
              fitItem(gridImage[3], '${clubName[3]}', '${benefit[3]}'),
            ],
          ),

          
    // Container(
     
    //       child: GridView.builder(
    //         itemCount: gridImage.length,
    //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
    //         itemBuilder: (BuildContext context, int index){
    //           return fitItem(gridImage[index], '${clubName[index]}', '${benefit[index]}');
    //         },
    //     )
    //     ),
      
    

    //  Container(
    //    height: 200,
    //    child: ListView.builder(
    //      padding: EdgeInsets.only(left:5, right:5),

    //      scrollDirection: Axis.horizontal,
    //      itemCount: catImage.length,
    //      itemBuilder: (context, index){
    //        return categoryCard('${catImage[index]}', '${catName[index]}');
    //      }
    //    ),
    //  )
       
        
      ],
    ),
  ),
),
    );
  }
}

Widget searchBar(){
  return Material(
    elevation: 10,
  
    child: Container(
        color: Colors.blue,
      child: Row(
        children: [
          Icon(Icons.search),
          TextField(
            
        decoration: new InputDecoration(
            
            hintText: 'Mobile Number',
        ),
    ),
        ],
      ),
    ),
  );
}