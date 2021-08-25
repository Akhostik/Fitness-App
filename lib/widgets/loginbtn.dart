import 'package:flutter/material.dart';




Widget loginBtn( String btnText,){
 
  return RaisedButton(

     onPressed: () {
   
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
         child: Text('$btnText',
             style: TextStyle(fontSize: 20, color: Colors.white)
         ),
       ),
     ),
   );
}