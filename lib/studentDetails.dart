import 'package:flutter/material.dart';

class Studentdetails extends StatefulWidget {
  const Studentdetails({super.key});

  @override
  State<Studentdetails> createState() => _StudentdetailsState();
}

class _StudentdetailsState extends State<Studentdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        backgroundColor: const Color.fromARGB(255, 225, 99, 206),
        title: const Text(
          "Student List",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       
        children: [
         
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              Text(
                "Name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text("Anusha"),
              Text("Ashni"),
              Text("Aathira"),
              Text("Ajel"),
              Text("Amala"),
              Text("Aajila"),
              Text("Abinaya"),
              Text("Aashika"),
              Text("Ruhisha"),
              Text("Sharma"),
            ],
          ),
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
           
              Text(
                "Age",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text("20"),
              Text("21"),
              Text("23"),
              Text("24"),
              Text("25"),
              Text("26"),
              Text("27"),
              Text("28"),
              Text("29"),
              Text("20"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
              Text(
                "Location",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text("Kanyakumari"),
              Text("Trivandrum"),
              Text("Chennai"),
              Text("Trichy"),
              Text("Mumbai"),
              Text("Delhi"),
              Text("Kolkata"),
              Text("Agra"),
              Text("Gujarat"),
              Text("Bengal"),
            ],
          ),
        ],
      ),
    );
  }
}