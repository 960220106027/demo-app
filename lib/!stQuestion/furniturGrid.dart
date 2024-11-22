import 'package:flutter/material.dart';

class FurnitureGrid extends StatefulWidget {
  const FurnitureGrid({super.key});

  @override
  State<FurnitureGrid> createState() => _FurnitureGridState();
}

class _FurnitureGridState extends State<FurnitureGrid> {
  List<String> products = ["Sofaa", "Chairs", "Tables", "Kitchen","Esy Chairs","Radios"];
  List<String> images = [
    "assets/aa.png",
    "assets/ch3.png",
     "assets/aa.png",
    "assets/ch3.png"
    
   
  ];
  List<String> names = [
    "Soft Element Jack",
    "Leset Galant",
    "Chester Chair",
    "Avora Chair"
  ];
  List<String> prize = ["\$700", "\$600", "\$200", "\$800"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.shop),
                SizedBox(width: 10),
                Icon(Icons.person),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Discover Products",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.shop),
              ],
            ),
            SizedBox(
              height: 50, 
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {
                     
                    },
                    child: Text(products[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          names[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          prize[index],
                          style: const TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
