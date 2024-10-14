import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: double.infinity,
              
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.green,width: 8),
              gradient: const LinearGradient(colors: [Colors.green,Colors.blue,Color.fromRGBO(255, 235, 59, 1),Colors.black])
              ),
              child: const Center(child: Text('Flutter')),
            ),
          ),
            
        ],
      ),
    );
  }
}