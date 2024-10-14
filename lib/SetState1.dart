import 'package:flutter/material.dart';

class Setstate1 extends StatefulWidget {
  const Setstate1({super.key});

  @override
  State<Setstate1> createState() => _Setstate1State();
}

class _Setstate1State extends State<Setstate1> {
  bool isfavorite = false;
  int index=0;
 List<Color>cart=[Colors.green,Colors.yellow,Colors.purple,Colors.grey];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 58, 9),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Icon(
            isfavorite ? Icons.favorite : Icons.favorite_border,
            color: cart[index],
           
           
            size: 120,

            
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 86, 10)),
            onPressed: () {
              setState(() {
                isfavorite = !isfavorite;
                index=(index + 1) % cart.length;
               
              });
            },
            child: const Text(
              "counter",
              style: TextStyle(color: Colors.white),
            )),
      ]),
    );
  }
}
