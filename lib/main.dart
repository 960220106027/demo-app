import 'package:flutter/material.dart';
import 'package:homeapp/AppBar.dart';
import 'package:homeapp/FruitApp2.dart';
import 'package:homeapp/SetState1.dart';
import 'package:homeapp/WhatsApp.dart';
import 'package:homeapp/avatar.dart';
import 'package:homeapp/bottomTab.dart';
import 'package:homeapp/box1.dart';
import 'package:homeapp/box2.dart';
import 'package:homeapp/button.dart';
import 'package:homeapp/buttonExercise1.dart';
import 'package:homeapp/calls.dart';
import 'package:homeapp/chats.dart';
import 'package:homeapp/details%20Screen.dart';
import 'package:homeapp/drawer.dart';
import 'package:homeapp/facebook2.dart';
import 'package:homeapp/fruitApp.dart';
import 'package:homeapp/fruitApp1.dart';
import 'package:homeapp/fruitlist.dart';
import 'package:homeapp/gridviewExercise.dart';
import 'package:homeapp/instagram1.dart';
import 'package:homeapp/instagram2.dart';
import 'package:homeapp/listview.dart';
import 'package:homeapp/gridview.dart';
import 'package:homeapp/listviewExercise.dart';
import 'package:homeapp/TabBar.dart';
import 'package:homeapp/facebook1.dart';
import 'package:homeapp/profile.dart';
import 'package:homeapp/setState.dart';
import 'package:homeapp/signin.dart';
import 'package:homeapp/box.dart';
import 'package:homeapp/cardExercise2.dart';
import 'package:homeapp/cardExersise.dart';
import 'package:homeapp/container.dart';
import 'package:homeapp/excersice1.dart';
import 'package:homeapp/card.dart';
import 'package:homeapp/login.dart';
import 'package:homeapp/status.dart';
import 'package:homeapp/textFormField.dart';
import 'package:homeapp/studentDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:DrawerExercise(),
    
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 46, 133, 170),
        title: const Text(
          "Flutter App Bar",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 40),
          Icon(
            Icons.print,
            color: Colors.white,
          ),
          SizedBox(width: 40),
          Icon(
            Icons.camera,
            color: Colors.white,
          )
        ],
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Flutter'),
          Text('Flutter'),
          Text('Flutter'),
          Text('Flutter'),
          Text('Flutter'),
          Text('Flutter'),
        ],
      ),
    );
  }
}
