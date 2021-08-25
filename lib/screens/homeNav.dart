import 'package:flutter/material.dart';
import 'package:flutter_app6/screens/homepage.dart';
import 'package:flutter_app6/screens/map.dart';
import 'package:flutter_app6/screens/notifications.dart';
import 'package:flutter_app6/screens/profile.dart';


class HomeNav extends StatefulWidget {
  @override
  _HomeNavState createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {

  int selectedItem =0;


  void onTap(index){
    setState(() {
      selectedItem = index;
    });
  }

List<Widget> pages =[
  HomePageMain(),
  MapPage(),
  NotificationsPage(),
  Profile()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


bottomNavigationBar: BottomNavigationBar(
  onTap: onTap,
  currentIndex: selectedItem,
  selectedFontSize: 15,
  unselectedItemColor: Colors.grey,
  selectedItemColor: Colors.orange,
  items: [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home,)
    ),
    BottomNavigationBarItem(
          label: 'Map',
      icon: Icon(Icons.location_pin)
    ),
    BottomNavigationBarItem(
            label: 'Notifications',
      icon: Icon(Icons.notifications_rounded)
    ),
    BottomNavigationBarItem(

          label: 'Profile',
      icon: Icon(Icons.person)
    )
  ],
),
body: pages.elementAt(selectedItem),
    );
  }
}