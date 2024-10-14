import 'package:flutter/material.dart';
import 'package:homeapp/newwidget.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List<String> images = [
    "assets/barcoli.png",
    "assets/onion.png",
    "assets/tomato.png",
    "assets/brinjal.png",
    "assets/cabbage.png",
    "assets/carrot.png",
    "assets/potato.png",
    "assets/ginger.png",
    "assets/cucumber.png",
  ];
  List<String>names=["Barcoli","Onion","Tomato","Brinjal","Cabbage","Carrot","Potato","Ginger","Cucumber"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 11, 37, 11),
          title: const Text(
            "Vegetables",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: GridView.builder(
          itemCount:images.length ,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 0.5),
          itemBuilder: (context, index) {
            return Vegetablewidegt(
              image: images[index],
              productname: names[index],
              weight: '600 g',
              price: '200');
          },
        ));
  }
}
