import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 115, 192, 165),
      ),
      body: const Column(
        children: [
        
         Padding(
           padding: EdgeInsets.all(8.0),
           child: Card(
            elevation: 10,
            color: Colors.lightBlue,
            child: Text("Flutter Developer"),
           
           ),
         ),
         Card(
          child: Text("Flutter"),
         ),
        
        ],
      ),
    );
  }
}