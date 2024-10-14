import 'package:flutter/material.dart';
import 'package:homeapp/colors.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<String>pets=["assets/fish.jpeg","assets/kingfisher.jpeg","assets/fishs.jpeg","assets/pets.jpeg","assets/pigeon.jpeg","assets/pomerian.jpeg","assets/puppy.jpeg","assets/fish.jpeg","assets/kingfisher.jpeg","assets/fishs.jpeg","assets/pets.jpeg","assets/pigeon.jpeg","assets/pomerian.jpeg","assets/puppy.jpeg",];
  List<String>names=["Anusha","Ajel","Aathira",'Abinaya','Aajila','Aashika','Ashni',"Ajel","Aathira",'Abinaya','Aajila','Aashika','Ashni'];
  List<String>subnames=["Hloo","hii","how r u?","Good mrng","Good n8","See u 2mrw","Good bye","Hloo","hii","how r u?","Good mrng","Good n8","See u 2mrw","Good bye",];
  List<String>trail=["Yesterday","today","today","Yesterday","today","today","Yesterday","today","today","Yesterday","today","today","Yesterday","today",];
  List<String>numbers=["9","2","4","1","5","8","4","9","2","4","1","5","8","4",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(radius:30,backgroundImage: AssetImage(pets[index]),),
                  title: Text(names[index],style: const TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text(subnames[index]),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(trail[index],style:  TextStyle(color: Color.fromARGB(255, 86, 182, 51),fontSize: 15),),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(color: green,borderRadius: BorderRadius.circular(20)),
                        child: Center(child: Text(numbers[index],style: const TextStyle(fontSize: 15,color:Colors.white),),),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          );
        
      },),
    );
  }
}