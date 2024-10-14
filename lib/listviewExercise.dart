import 'package:flutter/material.dart';
import 'package:homeapp/newListWidget.dart';

class ListExercise extends StatefulWidget {
  ListExercise({super.key});

  @override
  State<ListExercise> createState() => _ListExerciseState();
}

class _ListExerciseState extends State<ListExercise> {
  List<String> pets = [
    'assets/puppy.jpeg',
    'assets/cat.jpeg',
    'assets/fish.jpeg',
    'assets/pigeon.jpeg',
  ];
  List<String> pet = [
    'assets/pigeon.jpeg',
    'assets/puppys.jpeg',
    'assets/fishs.jpeg',
    'assets/kingfisher.jpeg',
  ];
  List<String> names = ['Prince', 'Ram', 'Rom', 'Rose'];
  List<String> value = ['male', 'female', 'male', 'female'];
  List<String> age = ['3', '2', '1', '3'];
  List<String> year = ['2 years', '5 years', '4 years', '6 years'];
  List<String> type = [
    'Fantail pigeon',
    'American eskimo',
    'Angel fish',
    'Kingfisher'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 183, 183),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 19, 113, 107),
        leading: const Icon(Icons.menu, color: Colors.white),
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Pets Adaption',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Kollam, India',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/puppy.jpeg",
                  width: 30,
                  height: 30,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: const BorderSide(color: Colors.black)),
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.black26),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Categories',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pets.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 55,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(pets[index]), // Corrected here
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              const Text('Popular Pets Near You',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 1000,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: pet.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                image: DecorationImage(
                                  image: AssetImage(pet[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 180,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(names[index]),
                                    Text(value[index]),
                                    Text(age[index]),
                                    Text(year[index]),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/puppy.jpeg'), // You can change this
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(type[index]),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
