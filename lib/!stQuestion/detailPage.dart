import 'package:flutter/material.dart';

class DetailPPage extends StatefulWidget {
  const DetailPPage({super.key});

  @override
  State<DetailPPage> createState() => _DetailPPageState();
}

class _DetailPPageState extends State<DetailPPage> {
  List<String> images = ["assets/aa.png", "assets/a2.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Container(
              height: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/aa.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(images[0]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star, color: Colors.orange, size: 20),
                          SizedBox(width: 5),
                          Text(
                            "4.8",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                     
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Product Name
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Lesent Galant",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            // Product Description
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "The inspiration for the design of this chair comes from the industrial style of the first half of the last century, "
                "which is complemented by modern features.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            // Price and Add to Cart
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$64.00",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    onPressed: () {
                      // Add to cart action
                    },
                    child: const Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
