import 'package:flutter/material.dart';

class Exercise2card extends StatefulWidget {
  const Exercise2card({super.key});

  @override
  State<Exercise2card> createState() => _Exercise2cardState();
}

class _Exercise2cardState extends State<Exercise2card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
       backgroundColor:Colors.black,
       title: const Text("Simple Card Design",style: TextStyle(color:Colors.white),),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              elevation: 10,
              color: Color.fromARGB(255, 240, 185, 102),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.image,color: Colors.brown,size: 100,),
                      SizedBox(width: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Photo Album',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('TWICE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding:EdgeInsets.only(left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      
                      children: [
                        Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Create',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Delete',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  )
                ],
                
              ),
              
            ),
            Card(
              elevation: 10,
              color: Color.fromARGB(255, 91, 230, 124),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.lock_clock,color: Colors.brown,size: 100,),
                      SizedBox(width: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Time',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('TWICE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding:EdgeInsets.only(left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Create',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Delete',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  )
                ],
                
              ),
              
            ),
            Card(
              elevation: 10,
              color: Color.fromARGB(255, 230, 136, 169),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.person_3,color: Colors.brown,size: 100,),
                      SizedBox(width: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Access',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                          Text('TWICE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding:EdgeInsets.only(left: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Edit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Create',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('Delete',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
                      ],
                    ),
                  )
                ],
                
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}