import 'package:flutter/material.dart';

class Box5 extends StatefulWidget {
  const Box5({super.key});

  @override
  State<Box5> createState() => _Box5State();
}

class _Box5State extends State<Box5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 16,crossAxisSpacing: 16), itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
        );
      },),
    );
  }
}