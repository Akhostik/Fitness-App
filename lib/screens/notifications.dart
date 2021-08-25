import 'package:flutter/material.dart';
import 'package:flutter_app6/widgets/notifications.dart';

class NotificationsPage extends StatelessWidget {


  List<String> notifUsers= [
    'assets/user1.jpg',
    'assets/user2.jpg',
    'assets/user3.jpg',
    'assets/user4.jpg',
    'assets/user5.jpg',
  ];

  List<String> notifDetails= [
    'John Doe started following you',
    'Susan dike is attending yoga club',
    'Your name has been updated',
    'Visit recent stories',
    'Alibaba wants to say hi',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Text('Notifications', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),

          ),
          Divider(),

          Container(
            height: 500,
            child: ListView.builder(
              itemCount: notifUsers.length,
              itemBuilder: (contex, index){
                return notificationItem('${notifUsers[index]}', '${notifDetails[index]}');
              },
            ),
          )
        ],
      ),
    );
  }
}



class Following extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class You extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}