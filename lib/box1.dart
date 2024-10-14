import 'package:flutter/material.dart';

class ImageAdd extends StatefulWidget {
  const ImageAdd({super.key});

  @override
  State<ImageAdd> createState() => _ImageAddState();
}

class _ImageAddState extends State<ImageAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Product List",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_cart_checkout,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 141, 155, 167)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                children: [
                  Image.asset(
                    "assets/apple1.png",
                    width: 100,
                    height: 100,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Name :"),
                          Text(
                            "Apple",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Unit :"),
                          Text(
                            "Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
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
              
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 141, 155, 167)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                children: [
                  Image.asset(
                    "assets/mango.png",
                    width: 100,
                    height: 100,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Name :"),
                          Text(
                            "Mango",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Unit :"),
                          Text(
                            "Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
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
              
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 141, 155, 167)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                children: [
                  Image.asset(
                    "assets/banana.png",
                    width: 100,
                    height: 100,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Name :"),
                          Text(
                            "Banana",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Unit :"),
                          Text(
                            "Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
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
              
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 141, 155, 167)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                children: [
                  Image.asset(
                    "assets/grapes1.png",
                    width: 100,
                    height: 100,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Name :"),
                          Text(
                            "Grapes",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Unit :"),
                          Text(
                            "Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
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
              
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 141, 155, 167)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                children: [
                  Image.asset(
                    "assets/watermelon.png",
                    width: 100,
                    height: 100,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Name :"),
                          Text(
                            "Melon",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Unit :"),
                          Text(
                            "Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
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
              
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 141, 155, 167)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 
                children: [
                  Image.asset(
                    "assets/kiwi.png",
                    width: 100,
                    height: 100,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Name :"),
                          Text(
                            "Kiwi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Unit :"),
                          Text(
                            "Kg",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
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
              
            ),

          ],
        ),
      ),
    );
  }
}
