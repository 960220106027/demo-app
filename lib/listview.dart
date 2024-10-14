import 'package:flutter/material.dart';

class Box3 extends StatefulWidget {
  const Box3({super.key});

  @override
  State<Box3> createState() => _Box3State();
}

class _Box3State extends State<Box3> {
  List<String> fruits=['assets/apple1.png','assets/banana.png','assets/kiwi.png','assets/grapes1.png','assets/mango.png','assets/orange.png','assets/watermelon.png'];
  List<String> names=["Apple","Banana","Kiwi","Grapes","Mango","Orange","Watermelon"];
 List<Color> colors=[Colors.green,Colors.red,Colors.blue,Colors.grey,const Color.fromARGB(255, 197, 98, 151),const Color.fromARGB(255, 199, 214, 88),const Color.fromARGB(255, 236, 151, 61)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: ListView.builder(
        itemCount: fruits.length,
        scrollDirection: Axis.horizontal,
      
        itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
                decoration: BoxDecoration(
                   color:colors[index],),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   
                  children: [
                    Image.asset(
                      fruits[index],
                      width: 100,
                      height: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text("Name :"),
                            Text(
                              names[index],
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text("Unit :"),
                            Text(
                              "Kg",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text("Prize :"),
                            Text(
                              "20",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: const BoxDecoration(color: Colors.black),
                      child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                    ),
                  ],
                ),
                
              
         ) );
      },),
    );
  }
}