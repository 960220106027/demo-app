import 'package:flutter/material.dart';
import 'package:homeapp/!stQuestion/bottomScreen.dart';
import 'package:homeapp/!stQuestion/furniturGrid.dart';

class HomeFurniture extends StatefulWidget {
  const HomeFurniture({super.key});

  @override
  State<HomeFurniture> createState() => _HomeFurnitureState();
}

class _HomeFurnitureState extends State<HomeFurniture> {
  List<String> name = ["Chester Chair", "Leset Galant"];
  List<String> images = ["assets/aa.png", "assets/ch3.png"];
  List<String> prize = ["\$6100", "\$6400"];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 58, 19),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/wallb.jpg",),fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 90, right: 90),
              child: Container(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 280,
                    width: 180,
                    child: Column(
                      children: [
                         Text(
                          "Renovate",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        SizedBox(height: 10,),
                         Text(
                          "Your Interior",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         SizedBox(height: 10,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                           
                          },
                          child:  Text("Go to catalog"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Popular Products",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                           GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                            },
                             child: const Text(
                              "View All",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                                                       ),
                           ),
        
                        ],
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 140,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 86, 158, 195),
                                  ),
                                  
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      images[index],
                                      width: 100,
                                      height: 140,
                                    ),
                                    Text(
                                      name[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(prize[index]),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
