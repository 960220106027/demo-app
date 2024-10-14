import 'package:flutter/material.dart';
import 'package:homeapp/facebook2.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  int _selectedIndex=0;
  List<Widget> _widgetOptions=<Widget>[
    Facebook2(),
    Text("Profile"),
    Text("Status"),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("facebook",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.search,),
          Stack(children: [
            IconButton(onPressed: () {
              
            }, icon: Icon(Icons.messenger_outline_outlined)),
            Positioned(
              left: 20,
              child: CircleAvatar(radius: 10,backgroundColor: Colors.red,child: Text("2",style: TextStyle(color: Colors.white),),))
          ],)
        ],
      ),
       body:Center(
          child: _widgetOptions.elementAt(_selectedIndex),
       ),
       bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
       
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "call"
      ),
       BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "call"
      ),
       BottomNavigationBarItem(icon: Icon(Icons.shop),label: "call"
      ),
       BottomNavigationBarItem(icon: Icon(Icons.connect_without_contact_sharp),label: "call"
      ),
       BottomNavigationBarItem(icon: Icon(Icons.notification_add),label: "call"
      ),
      
        BottomNavigationBarItem(icon: Icon(Icons.menu),label: "call"
      ),
      
       ],
           type: BottomNavigationBarType.fixed,  
        currentIndex: _selectedIndex,  
        selectedItemColor: const Color.fromARGB(255, 91, 163, 222),  
        iconSize: 30,  
        onTap: _onItemTapped,  
        elevation: 5  
       ),
  

       



  
    );
  }
}