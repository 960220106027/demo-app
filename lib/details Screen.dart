import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
   List<String>images=["assets/burger11.png","assets/pizza.png","assets/sandwich1.png","assets/strawberry1.png","assets/avacado.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            height: 400,
            child: Column(
              
              children: [
                Center(child: Image.asset("assets/Big Burger.png",height: 350,width: 350,),),
              ],
            ),
          ),
          Container(
            height: 60,
            
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Royal Special Burger",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("Hot Beef Burger"),
                    ],
                  ),
                  SizedBox(width: 150,),
                  Text("Rs.100",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                ],
              ),
            ),
          ),
         Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, 
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 213, 213, 213),
                            ),
                            child: Column(
                              children: [
                                Image.asset(images[index],height: 80,width:50),
                               
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The combination of fresh and juicy vegetables gives the "),
                  Text("salad an invigarating flavor fillet maintain "),
                  Text("in with various"),
                ],
              ),
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 222, 234, 53),
        onPressed: (){},child: const Icon(Icons.shop,color: Colors.white,),),

    );
  }
}