import 'package:flutter/material.dart';

class CallView extends StatefulWidget {
  const CallView({super.key});

  @override
  State<CallView> createState() => _CallViewState();
}

class _CallViewState extends State<CallView> {
  List<String> images = [
    'assets/pomerian.jpeg',
    'assets/pigeon.jpeg',
    'assets/kingfisher.jpeg',
    'assets/pets.jpeg',
    'assets/puppys.jpeg',
    'assets/fish.jpeg',
    'assets/fishs.jpeg',
    'assets/cat.jpeg',
   
  ];
  List<String> calls = [
    "Ashni",
    'Aajila',
    'Aathira',
    'Ajel',
    'Abinaya',
    'Amma',
    'Ruhisha',
    'Sharma',
    
  ];
  List<String> message = [
    "5 am",
    "6 am",
    "7 am",
    "12 pm",
    "2 pm",
    "4:15 pm",
    "7:14 pm",
    "8:54 pm",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recents",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 8), 
            Expanded(
              child: ListView.builder(
                itemCount: calls.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(
                      calls[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    subtitle: Row(
                      children: [
                        const Icon(Icons.call_made, color: Colors.red),
                        const SizedBox(width: 5),
                        Text(
                          message[index],
                          style: const TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.call,
                      color: Colors.red,
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
