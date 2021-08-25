import 'package:flutter/material.dart';



Widget fitItem(String img, clubName, benefit){
  return Container(
    margin: EdgeInsets.only(left:10, right:10),
    child: Column(
      children: [
        Container(
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(img))),
        Text('$clubName', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Text('$benefit')
      ],
    ),
  );
}


//  Container(
//           padding: EdgeInsets.all(16.0),
//           child: GridView.builder(
//             itemCount: images.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
//             itemBuilder: (BuildContext context, int index){
//               return Image.network(images[index]);
//             },
//         )),
//       ),
//     );