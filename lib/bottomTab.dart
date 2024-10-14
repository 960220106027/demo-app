import 'package:flutter/material.dart';  
    
  
class MyNavigationBar extends StatefulWidget {  
  const MyNavigationBar ({super.key});  
  
  @override  
  _MyNavigationBarState createState() => _MyNavigationBarState();  
}  
  
class _MyNavigationBarState extends State<MyNavigationBar > {  
  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Flutter BottomNavigationBar Example'),  
          backgroundColor: Colors.green  
      ),  
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
            icon: Icon(Icons.search),  
            label: 'Search',
      
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            label:'Profile',  
        
          ),  
        ],  
        type: BottomNavigationBarType.fixed,  
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.black,  
        iconSize: 30,  
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    );  
  }  
}  