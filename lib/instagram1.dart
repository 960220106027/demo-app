import 'package:flutter/material.dart';

class InstagramView extends StatefulWidget {
InstagramView({super.key});

  @override
  State<InstagramView> createState() => _InstagramViewState();
}

class _InstagramViewState extends State<InstagramView> {
  List<String> pets = [
    "assets/fish.jpeg",
    "assets/kingfisher.jpeg",
    "assets/fishs.jpeg",
    "assets/pets.jpeg",
    "assets/pigeon.jpeg",
    "assets/pomerian.jpeg",
    "assets/puppy.jpeg",
    "assets/fish.jpeg",
    "assets/kingfisher.jpeg",
    "assets/fishs.jpeg",
    "assets/pets.jpeg",
    "assets/pigeon.jpeg",
    "assets/pomerian.jpeg",
    "assets/puppy.jpeg",
  ];
  List<String> names = [
    "Anusha",
    "Ajel",
    "Aathira",
    'Abinaya',
    'Aajila',
    'Aashika',
    'Ashni',
    "Ajel",
    "Aathira",
    'Abinaya',
    'Aajila',
    'Aashika',
    'Ashni'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text(
          "Instagram",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
        ),
        actions:[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.message_rounded),
          ),
        ],
      ),
      body: Padding(
        padding:EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                  Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("assets/pomerian.jpeg"),
                            ),
                            Positioned(
                              bottom: 2,
                              right: 2,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.blue,
                                child: Icon(Icons.add,color:Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "your story",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: names.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(pets[index]),
                                ),
                                Text(
                                  names[index],
                                  style:TextStyle(fontWeight: FontWeight.bold),
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
            SizedBox(height: 20,),
              Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
              Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       
                       children: [
                         CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/kingfisher.jpeg"),),
                         SizedBox(width: 10,),
                         Text("AnushaSharma",style: TextStyle(fontWeight: FontWeight.bold),),
                       ],
                     ),
                     Row(
                       children: [
                         Icon(Icons.more_vert),
                       ],
                     ),
                   ],
                 ),
              SizedBox(height: 10,),
                 SizedBox(
                   height: 300,
                   child:Image(
                     image: AssetImage("assets/luffy.jpeg"),
                     fit: BoxFit.cover,
                   ),
                 ),
                 SizedBox(
                        height: 50,
                        child:Row(
                        
                         children: [
                           Icon(Icons.favorite,color: Colors.red,),
                           SizedBox(width: 20,),
                           Icon(Icons.comment),
                           SizedBox(width: 20,),
                           Icon(Icons.share),
                           SizedBox(width: 250,),
                           Icon(Icons.save_alt_outlined),
                           
                         ],
                        ),
                 ),
              Text("2,33,589 likes"),
              Text("Anusha: hloo cheen dapak dam damm",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("View all 34,500 comments"),
              SizedBox(height: 10,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                  Row(
                       children: [
                         CircleAvatar(backgroundImage: AssetImage("assets/pomerian.jpeg"),),
                         SizedBox(width: 10,),
                         Text("Add a comment"),
                         
                         
                         
                       ],
                     ),
                     Row(
                       children: [
                         
                         Image.asset("assets/smile1.png",width: 20,height: 20,),
                      SizedBox(width: 10,),
                         Image.asset("assets/smile2.png",width: 20,height: 20,),
                      SizedBox(width: 10,),
                         Image.asset("assets/add.png",width: 20,height: 20,),
                       ],
                     ),
                   ],
                 ),
              Text("2 days ago"),
                 
               ],
                              ),
            ],
          ),
        ),
      ),
    );
  }
}
