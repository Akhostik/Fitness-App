import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app6/screens/homeNav.dart';
import 'package:flutter_app6/screens/homepage.dart';
import 'package:flutter_app6/widgets/loginbtn.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Container(
    margin: EdgeInsets.all(30),
    child: Column(
 
     mainAxisAlignment: MainAxisAlignment.end,
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(height:180),
        // Icon(Icons.keyboard_arrow_left),

        SizedBox(height:20),
        Text('Welcome Charlie!  ', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        TextFormField(
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Enter username',
      
    ),
),
TextFormField(
    decoration: InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'Enter Password',
      
      
    ),
),
  SizedBox(height:20),
RaisedButton(

     onPressed: () {
   Navigator.push(context, MaterialPageRoute(builder:(context)=>HomeNav()));
     }, 
     textColor: Colors.white,
     padding: const EdgeInsets.all(0.0),
     shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
     child: Container(
       width: 300,
       decoration: const BoxDecoration(
         gradient: LinearGradient(
           colors: <Color>[
             Colors.orange,
             Colors.orange,
             Colors.yellow,
           ],
         ),
         borderRadius: BorderRadius.all(Radius.circular(80.0))
       ),
       padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
       child: Center(
         child: Text('Login',
             style: TextStyle(fontSize: 20, color: Colors.white)
         ),
       ),
     ),
   ),

   SizedBox(height: 20,),
   Center(
     child: Text('Forgot Password?',
               style: TextStyle(fontSize: 15, color: Colors.grey)),
   )

      ],
    ),
  )
),
    );
  }
}

// void nav(context){
//   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageMain()));
// }