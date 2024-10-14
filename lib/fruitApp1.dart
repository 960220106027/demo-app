import 'package:flutter/material.dart';

class FruitApp1 extends StatefulWidget {
  const FruitApp1({super.key}); 

  @override
  State<FruitApp1> createState() => _FruitApp1State();
}

class _FruitApp1State extends State<FruitApp1> {
  List<String> names = ["PineApple", "Orange", "Banana", "Apple", "Watermelon"];
  List<Color> colors = [
    const Color.fromARGB(255, 8, 88, 10),
    const Color.fromARGB(255, 191, 174, 19)
  ];
  List<String>fruits=["assets/pineapple.png","assets/banana.png"];
  List<String>fruit=["Golden Pineapple","Banana"];
  List<String>items=["assets/avacado.png","assets/orange.png","assets/kiwi.png","assets/grapes1.png"];
  List<Color>itemcolor=[const Color.fromARGB(255, 250, 205, 205),const Color.fromARGB(255, 215, 237, 255),const Color.fromARGB(255, 244, 215, 248),const Color.fromARGB(255, 252, 239, 199)];
  List<String>rupees=["Rs.100","Rs.50","Rs.150","Rs.70"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Seasonal",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Fresh Fruits",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 42,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              names[index],
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 360,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 360,
                              width: 240,
                              decoration: BoxDecoration(
                                  color: colors[index],
                                  borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 180),
                                            child: Icon(Icons.favorite,color: Colors.white,size: 30,),
                                          ),
                                          Center(child: Image.asset(fruits[index],height: 200,width: 200,)),
                                          Text(fruit[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                          Text("Rs.200",style: TextStyle(color: Colors.white,fontSize: 20),),
                                    
                                      ],
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Text("Today's Sale",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 10,),
                Container(
                 
                  height: 120,
                  child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Container(
                          height: 100,
                          width: 100,
                           decoration:BoxDecoration( color: itemcolor[index],borderRadius: BorderRadius.circular(20)) ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(items[index],height: 60,width: 100,),
                          Text(rupees[index],style: TextStyle(fontWeight: FontWeight.bold),),
            
                        ],
                      ),
                        ),
                      ],),
                    );
                  },),
                 
            
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
