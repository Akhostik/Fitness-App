import 'package:flutter/material.dart';
import 'package:flutter_app6/widgets/loginbtn.dart';


class Details extends StatelessWidget {
  String img;
  Details(this.img);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
            backgroundColor: Colors.orange,
                expandedHeight: 270.0,
                floating: true,
                pinned: true,
                snap: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Bolt Niggaz'),
                    centerTitle: true,
                    background: Image.asset('$img', fit: BoxFit.cover,),   
                    )
                ),
           SliverFillRemaining(
             child: Container(
               padding: EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                 SizedBox(height: 10),
                 Text('Bolt Niggaz', style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Run Along with waves', style: TextStyle(color: Colors.black, fontSize: 25)),
                       SizedBox(height: 10),
                        
                  Container(
                 margin: EdgeInsets.only(right:90),
                    child: Row(
              
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Icon(Icons.star, color: Colors.orange),
                           Icon(Icons.star,color: Colors.orange),
                           Icon(Icons.star, color: Colors.orange),
                           Icon(Icons.star),
                         ],
                       ),

                       Text('4.0/5.0'),
                       Text('1.3km nearby'),
                      ],
                    ),
                  ),
                   SizedBox(height: 10),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children:[
                       CircleAvatar(
                  radius: 20,
                  child: ClipRRect(
                    
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 200,
                      height: 70,
                      child: Image.asset('assets/user1.jpg')))
                ),
                 CircleAvatar(
                  radius: 20,
                  child: ClipRRect(
                    
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 200,
                      height: 70,
                      child: Image.asset('assets/user2.jpg')))
                ),
                 CircleAvatar(
                  radius: 20,
                  child: ClipRRect(
                    
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 200,
                      height: 70,
                      child: Image.asset('assets/user3.jpg')))
                ),
                 CircleAvatar(
                  radius: 20,
                  child: ClipRRect(
                    
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 200,
                      height: 70,
                      child: Image.asset('assets/user4.jpg')))
                ),  
                Text('+20 Others are going', style: TextStyle(color: Colors.grey[500]),),

                     ]
                   ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.grey[300],
                      padding: EdgeInsets.all(20),
                      child: Text('₦500 per person')),
                    Container(
                      width: 150,
                      child: loginBtn('Book Slot'))
                  ],
                )
                 ]
               ),
             )
           )
          
      
            ],
          
          ),
    
      );
    }
  
}