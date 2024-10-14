import 'package:flutter/material.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  List<String> images = [
    "assets/fish.jpeg",
    "assets/kingfisher.jpeg",
    "assets/fishs.jpeg",
    "assets/pets.jpeg",
  ];
  List<String> names = ["Anusha", 'Ajel', 'Ashni', 'Aathira'];
  List<String> times = [
    "today 1:23",
    'today 2:30',
    'today 5:00',
    'yesterday 9:00'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/kingfisher.jpeg"),
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("today 10:20 am"),
                trailing: Icon(Icons.more_vert),
              ),
              const SizedBox(height: 10),
              const Text(
                "Recent Updates",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: names.length,
                shrinkWrap: true,
                
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(
                      names[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(times[index]),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text(
                "Viewed Updates",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                itemCount: names.length, 
                shrinkWrap: true, 
                
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(
                      names[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(times[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
