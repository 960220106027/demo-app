import 'package:flutter/material.dart';

class DrawerExercise extends StatefulWidget {
  const DrawerExercise({super.key});

  @override
  State<DrawerExercise> createState() => _DrawerExerciseState();
}

class _DrawerExerciseState extends State<DrawerExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.withOpacity(0.1),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/nature.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/pomerian.jpeg"),
                ),
                accountName: Text("Anusha"),
                accountEmail: Text("anushaanusha2302@gmail.com")),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text('Settings',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text('Settings',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text('Settings',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text('Settings',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
      body: Column(
children:[
             Center(child: Text("Anusha",style: TextStyle(fontSize: 40),)),
],
      ),
    );
  }
}
