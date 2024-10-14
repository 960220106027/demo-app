import 'package:flutter/material.dart';
import 'package:homeapp/details%20Screen.dart';

class FruitListScreen extends StatefulWidget {
  const FruitListScreen({super.key});

  @override
  State<FruitListScreen> createState() => _FruitListScreenState();
}

class _FruitListScreenState extends State<FruitListScreen> {
  List<String>images=["assets/burger11.png","assets/pizza.png","assets/sandwich1.png","assets/strawberry1.png"];
  List<String>names=["Burger","Pizza","Sandwich","Fruits"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 237),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Find Your",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Delicious Food",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, 
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 130,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image.asset(images[index],height: 80,width:50),
                              Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
    
            Container(
              
              height: 50,
              child: Text("Popular Burger",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Container(
              height: 190,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
},

                    child: Container(
                      height: 190,
                      width: 160,
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/burger11.png",height: 110,width: 120,),
                            Text("Royal Burger",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                            Text("spicy wing",style: TextStyle(fontSize: 13, ),),
                           Row(
                            children: [
                               Text("Rs.100",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        SizedBox(width: 50,),
                               Container(
                                     height: 20,
                                     width: 30,
                                   decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 210, 54),borderRadius: BorderRadius.circular(30)),
                                   child: Center(child: Icon(Icons.add,color: Colors.white,size: 20,)),
                               ),
                            ],
                           ),
                        
                          ],
                        ),
                        
                      ),
                      
                    ),
                  ),
                   Container(
                    height: 190,
                    width: 160,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/beef burger.png",height: 110,width: 120,),
                          Text("Patty Burger",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          Text("spicy wing",style: TextStyle(fontSize: 13, ),),
                         Row(
                          children: [
                             Text("Rs.200",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
    SizedBox(width: 50,),
                             Container(
                                   height: 20,
                                   width: 30,
                                 decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 210, 54),borderRadius: BorderRadius.circular(30)),
                                 child: Center(child: Icon(Icons.add,color: Colors.white,size: 20,)),
                             ),
                          ],
                         ),
                      
                        ],
                      ),
                      
                    ),
                    
                  ),
                ],
              ),
    
            ),
            SizedBox(height: 20,),
           
            Container(
              height: 190,
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 190,
                    width: 160,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/beef burger.png",height: 110,width: 120,),
                          Text("Beef Burger",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          Text("spicy wing",style: TextStyle(fontSize: 13, ),),
                         Row(
                          children: [
                             Text("Rs.400",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
    SizedBox(width: 50,),
                             Container(
                                   height: 20,
                                   width: 30,
                                 decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 210, 54),borderRadius: BorderRadius.circular(30)),
                                 child: Center(child: Icon(Icons.card_travel,color: Colors.white,size: 15,)),
                             ),
                          ],
                         ),
                      
                        ],
                      ),
                      
                    ),
                    
                  ),
                   Container(
                    height: 190,
                    width: 160,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/burger11.png",height: 110,width: 120,),
                          Text("Black Burger",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          Text("spicy wing",style: TextStyle(fontSize: 13, ),),
                         Row(
                          children: [
                             Text("Rs.500",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
    SizedBox(width: 50,),
                             Container(
                                   height: 20,
                                   width: 30,
                                 decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 210, 54),borderRadius: BorderRadius.circular(30)),
                                 child: Center(child: Icon(Icons.add,color: Colors.white,size: 20,)),
                             ),
                          ],
                         ),
                      
                        ],
                      ),
                      
                    ),
                    
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