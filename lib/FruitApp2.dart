import 'package:flutter/material.dart';

class FruitApp2 extends StatefulWidget {
  const FruitApp2({super.key});

  @override
  State<FruitApp2> createState() => _FruitApp2State();
}

class _FruitApp2State extends State<FruitApp2> {
  List<Color>Colors1=[Colors.white,const Color.fromARGB(255, 202, 228, 249),];
  List<String>names=["Small","Medium","Large"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 58, 19),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 58, 19),
        leading: IconButton(
          style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 8, 79, 27)),
          onPressed: () {},
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.lock,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 350,
              child: Row(
                children: [
                  Container(
                    height: 280,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Golden",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "PineApple",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Rs.50",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 280,
                    width: 180,
                    child: Column(
                      children: [
                        Center(
                            child: Image.asset(
                          "assets/pineapple.png",
                          fit: BoxFit.cover,
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Size",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      
                      height: 140,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection:Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                           children: [
                             Container(
                              height: 130,
                              width: 110,
                              decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 86, 158, 195)),color: Colors1[index],borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Image.asset("assets/pineapple.png",width: 60,height: 100,),
                                  Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                ],
                              ),
                             ),
                           ],
                                                 ),
                        );
                      },),
                    ),
                     Container(
            height: 60,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {
                  
                }, child: Text("+  2  -",style: TextStyle(fontSize: 20),)),
                Text("Rs.2000",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Container(
            height: 60,
           
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 60,
                 decoration: BoxDecoration(color: const Color.fromARGB(255, 200, 223, 243),borderRadius: BorderRadius.circular(20)),
                  child:   Icon(Icons.favorite_border,size:40,),
                ),
                 Container(
                  width: 300,
                  height: 60,
                 decoration: BoxDecoration(color: const Color.fromARGB(255, 17, 58, 19),borderRadius: BorderRadius.circular(20)),
                  child:  Center(child: Text("Add to Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                

               
              ],
            ),
          ),
                  ],
                ),
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
