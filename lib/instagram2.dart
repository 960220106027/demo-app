import 'package:flutter/material.dart';

class Instagram2 extends StatefulWidget {
  const Instagram2({super.key});

  @override
  State<Instagram2> createState() => _Instagram2State();
}

class _Instagram2State extends State<Instagram2> {
    List<String>pets=["assets/fish.jpeg","assets/kingfisher.jpeg","assets/fishs.jpeg","assets/pets.jpeg","assets/pigeon.jpeg","assets/pomerian.jpeg","assets/puppy.jpeg","assets/fish.jpeg","assets/kingfisher.jpeg","assets/fishs.jpeg","assets/pets.jpeg","assets/pigeon.jpeg","assets/pomerian.jpeg","assets/puppy.jpeg",];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person),
          title: const Text("AnushaSharma",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          actions: const [
            Icon(Icons.add),
            SizedBox(width: 10,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  child: Icon(Icons.add,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                
                  Column(
                    children: [
                      Text("61",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Posts",style: TextStyle(fontSize: 18,),),
                    ],
                  ),
                   Column(
                    children: [
                      Text("997",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Followers",style: TextStyle(fontSize: 18,),),
                    ],
                  ),
                   Column(
                    children: [
                      Text("673",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("Following",style: TextStyle(fontSize: 18,),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text("Anusha"),
              const Text("I'm Not Perfect But"),
              const Text("I'm Limited Edition"),
              ElevatedButton(
                
                style: ElevatedButton.styleFrom(fixedSize:const Size(400, 10) ),
                onPressed: () {
                
              }, child: const Text("Edit Profile")),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Story Highlights",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        Icon(Icons.keyboard_arrow_down,size: 30,),
      ],
              ),
              const SizedBox(height: 10,),
            const TabBar(tabs: [
               Tab(
                icon: Icon(Icons.grid_4x4_outlined),
               ),
               Tab(
              icon: Icon(Icons.person),
            )
            ]),
            
             const SizedBox(height: 10,),
             Expanded(
               child: GridView.builder(
                itemCount: pets.length,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5), itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  height: 150,
                  decoration:const BoxDecoration(),
                  child: Image.asset(pets[index],fit: BoxFit.cover,),
                  
                );
                 
               },),
             ),
      
             
            ],
          ),
        ),
      ),
    );
  }
}