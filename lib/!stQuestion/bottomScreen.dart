import 'package:flutter/material.dart';
import 'package:homeapp/!stQuestion/detailPage.dart';
import 'package:homeapp/!stQuestion/furniturGrid.dart';
import 'package:homeapp/!stQuestion/homeFurniture.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeFurniture(),
    FurnitureGrid(),
    DetailPPage(),
   
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Details',
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.pink,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}