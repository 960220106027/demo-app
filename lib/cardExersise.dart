import 'package:flutter/material.dart';

class CardExercise extends StatefulWidget {
  const CardExercise({super.key});

  @override
  State<CardExercise> createState() => _CardExerciseState();
}

class _CardExerciseState extends State<CardExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 173, 205, 231),
      ),
      body:const Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                   Card(
                    elevation: 10,
              color: Colors.blue,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
             Card(
               elevation: 10,
              color: Colors.yellow,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
              ],
            ),
           Row(
              children: [
                   Card(
                     elevation: 10,
              color: Colors.green,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
             Card(
               elevation: 10,
              color: Colors.pink,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
              ],
            ), Row(
              children: [
                   Card(
                     elevation: 10,
              color: Colors.red,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
             Card(
               elevation: 10,
              color: Colors.lightBlue,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
              ],
            ),  Row(
              children: [
                   Card(
                     elevation: 10,
              color: Colors.purple,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
             Card(
               elevation: 10,
              color: Colors.green,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
              ],
            ),
            Row(
              children: [
                   Card(
                     elevation: 10,
              color: Colors.yellow,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
             Card(
               elevation: 10,
              color: Colors.orange,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
              ],
            ),
            Row(
              children: [
                   Card(
                     elevation: 10,
              color: Colors.pink,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
             Card(
               elevation: 10,
              color: Colors.green,
              
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  
                  children: [
                    
                    Icon(Icons.home_filled,size: 50,),
                    SizedBox(width:20),
                  Column(
                    children: [
                      Text("Heart",style: TextStyle(fontSize: 20),),
                      Text("Shaker",style: TextStyle(fontSize: 20),),
                    ],
                  )
                   
                  ],
                ),
              ),
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}