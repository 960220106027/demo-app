import 'package:flutter/material.dart';

class Facebook2 extends StatefulWidget {
  const Facebook2({super.key});

  @override
  State<Facebook2> createState() => _Facebook2State();
}

class _Facebook2State extends State<Facebook2> {
  List<String> images = [
    "assets/cat.jpeg",
    "assets/fish.jpeg",
    "assets/fishs.jpeg",
    "assets/kingfisher.jpeg",
    "assets/pets.jpeg",
    "assets/luffy.jpeg"
  ];
  List<String> background = [
    "assets/bg3.jpg",
    "assets/bg4.jpg",
    "assets/bg5.jpg",
    "assets/bg2.jpg"
  ];
  List<String> image = [
    "assets/add.png",
    "assets/fish.jpeg",
    "assets/fishs.jpeg",
    "assets/kingfisher.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/pomerian.jpeg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "What's on your mind?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        Text(
                          "Live",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.browse_gallery,
                          color: Colors.green,
                        ),
                        Text(
                          "Photo",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.purple,
                        ),
                        Text(
                          "Room",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 8,
              color: Colors.grey,
            ),
            Container(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 80,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 4,
                          left: 50,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 8,
              color: Colors.grey,
            ),
            Container(
              height: 230,
            
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
            
                itemCount: background.length, 
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(background[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 210,
                      width: 150,
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(image[index]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
           Container(
            height: 70,
            
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/pomerian.jpeg"),),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      Text("AnushaSharma",style: TextStyle(fontSize: 20),),
                      Text("Anusha"),
                    ],
                  ),
                ),
                SizedBox(width: 110,),
               Row(
                children: [
                   Icon(Icons.thumb_up),
                   SizedBox(width: 10,),
                Icon(Icons.more_horiz),
                ],
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
