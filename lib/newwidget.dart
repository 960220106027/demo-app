import 'package:flutter/material.dart';

class Vegetablewidegt extends StatefulWidget {
  final String image;
  final String productname;
  final String weight;
  final String price;
  const Vegetablewidegt({super.key,required this.image,required this.productname,required this.weight,required this.price});

  @override
  State<Vegetablewidegt> createState() => _VegetablewidegtState();
}

class _VegetablewidegtState extends State<Vegetablewidegt> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromARGB(255, 10, 26, 10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                          child: Image.asset(widget.image,
                              width: 100, height: 100)),
                      Text(
                      widget.productname  ,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       Text(widget.weight),
                       Text(
                        "₹ : ${widget.price}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 4, 33, 10),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}