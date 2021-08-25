
import 'package:flutter/material.dart';


Widget searchBar(){
  return Material(
    elevation: 10,
    color: Colors.blue,
    child: Container(
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