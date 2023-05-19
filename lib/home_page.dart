import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
   Home(),
   // Text("Home"),
    Text("Learn"),
    Text("Words"),

  ];




  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GNav(tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          ),
        GButton(
          icon: Icons.favorite,
          text: 'Learn',
          ),
        GButton(
          icon: Icons.settings,
          text: 'Words',
          ),
      ],
      selectedIndex: _selectedIndex,
      onTabChange:(index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      ),
    





   );
   
    // return Container(
      
    // );
  }
}