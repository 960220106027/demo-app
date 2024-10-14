     import 'package:flutter/material.dart';
import 'package:homeapp/FruitApp2.dart';
import 'package:homeapp/fruitApp1.dart';  
    
  
class FruitApp extends StatefulWidget {  
  const FruitApp ({super.key});  
  
  @override  
  _FruitAppState createState() => _FruitAppState();  
}  
  
class _FruitAppState extends State<FruitApp > {  
  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    FruitApp1() , 
    FruitApp2(),
    Text("hehehehe"),
   
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
        leading: const Icon(Icons.menu), 
        actions: [
          ElevatedButton(onPressed: () {
            
          }, child: const Icon(Icons.lock))
        ],
          backgroundColor: Colors.white,  
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
            icon: Icon(Icons.grid_4x4_rounded),  
            label: 'Menu',
      
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
   
