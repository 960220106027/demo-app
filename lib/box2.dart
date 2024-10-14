import 'package:flutter/material.dart';

class Box2 extends StatefulWidget {
  const Box2({super.key});

  @override
  State<Box2> createState() => _Box2State();
}

class _Box2State extends State<Box2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 48, 87),
        title: const Text("All Products"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.green,),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Text("Apple",style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                         Image.asset(
                        "assets/apple1.png",
                        width: 100,
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("price:200"),
                              Text("Qty:1"),
                            ],
                            
                          ),
                          
                           Container(
                        width: 100,
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                        ],
                      )
                      ],
                    ),
          
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.green,),
                    child: Column(
                      children: [
                        const Text("banana",style: TextStyle(fontWeight: FontWeight.bold),),
                         Image.asset(
                        "assets/banana.png",
                        width: 100,
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("price:200"),
                              Text("Qty:1"),
                            ],
                            
                          ),
                          
                           Container(
                        width: 100,
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                        ],
                      )
                      ],
                    ),
          
                  ),
                  
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.green,),
                    child: Column(
                      children: [
                        const Text("Grapes",style: TextStyle(fontWeight: FontWeight.bold),),
                         Image.asset(
                        "assets/grapes1.png",
                        width: 100,
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("price:200"),
                              Text("Qty:1"),
                            ],
                            
                          ),
                          
                           Container(
                        width: 100,
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                        ],
                      )
                      ],
                    ),
          
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.green,),
                    child: Column(
                      children: [
                        const Text("Kiwi",style: TextStyle(fontWeight: FontWeight.bold),),
                         Image.asset(
                        "assets/kiwi.png",
                        width: 100,
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("price:200"),
                              Text("Qty:1"),
                            ],
                            
                          ),
                          
                           Container(
                        width: 100,
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                        ],
                      )
                      ],
                    ),
          
                  ),
                  
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.green,),
                    child: Column(
                      children: [
                        const Text("Mango",style: TextStyle(fontWeight: FontWeight.bold),),
                         Image.asset(
                        "assets/mango.png",
                        width: 100,
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("price:200"),
                              Text("Qty:1"),
                            ],
                            
                          ),
                          
                           Container(
                        width: 100,
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                        ],
                      )
                      ],
                    ),
          
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    decoration: const BoxDecoration(color: Colors.green,),
                    child: Column(
                      children: [
                        const Text("Orange",style: TextStyle(fontWeight: FontWeight.bold),),
                         Image.asset(
                        "assets/orange.png",
                        width: 100,
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("price:200"),
                              Text("Qty:1"),
                            ],
                            
                          ),
                          
                           Container(
                        width: 100,
                        height: 30,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                      ),
                        ],
                      )
                      ],
                    ),
          
                  ),
                  
                ],
              ),
              const SizedBox(height: 10,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.green,),
                  child: Column(
                    children: [
                      const Text("Watermelon",style: TextStyle(fontWeight: FontWeight.bold),),
                       Image.asset(
                      "assets/watermelon.png",
                      width: 100,
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("price:200"),
                            Text("Qty:1"),
                          ],
                          
                        ),
                        
                         Container(
                      width: 100,
                      height: 30,
                      decoration: const BoxDecoration(color: Colors.black),
                      child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                    ),
                      ],
                    )
                    ],
                  ),
        
                ),
                Container(
                  width: 180,
                  height: 200,
                  decoration: const BoxDecoration(color: Colors.green,),
                  child: Column(
                    children: [
                      const Text("Apple",style: TextStyle(fontWeight: FontWeight.bold),),
                       Image.asset(
                      "assets/apple1.png",
                      width: 100,
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("price:200"),
                            Text("Qty:1"),
                          ],
                          
                        ),
                        
                         Container(
                      width: 100,
                      height: 30,
                      decoration: const BoxDecoration(color: Colors.black),
                      child: const Center(child: Text("Add to Cart",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
                    ),
                      ],
                    )
                    ],
                  ),
        
                ),
                
              ],
            ),
              
            ],
          ),
        ),
      ),
    );
  }
}