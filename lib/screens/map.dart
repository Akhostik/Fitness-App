import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Text('Locate', style: TextStyle(color: Colors.black)),
      Icon(Icons.location_pin, size:200, color:Colors.orange),
      Container(
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
                  child: RaisedButton(
                    color: Colors.black,
                    onPressed: (){},
          child: Text('Locate', style: TextStyle(color: Colors.white)),
          ),
        ),
      )
    ]
  ),
),
    );
  }
}