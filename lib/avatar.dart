import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 187, 210),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: const Color.fromARGB(255, 173, 127, 181),
        title: const Text("Login Page",style: TextStyle(fontWeight: FontWeight.bold),),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
          children: [
            const Center(child: CircleAvatar(radius: 90,backgroundColor: Colors.black,backgroundImage: AssetImage("assets/male.png"),)),
            const Text("Aswin Saji",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            const Text("aswin@rocky11",style: TextStyle(fontSize: 20),),
            Container(
              height:40 ,
              width: 400,
              decoration: BoxDecoration(color:const Color.fromARGB(255, 173, 127, 181),borderRadius: BorderRadius.circular(10)),
              child: const Center(child: Text("Edit",style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
            const Row(
              
              children: [
               Icon(Icons.settings,size: 30,),
               SizedBox(width: 20,),
               Text("Settings",style: TextStyle(fontSize: 20),),
              ],
            ),
            const Row(
              
              children: [
               Icon(Icons.person,size: 30,),
               SizedBox(width: 20,),
               Text("Friend",style: TextStyle(fontSize: 20),),
              ],
            ),
            const Row(
              
              children: [
               Icon(Icons.group,size: 30,),
               SizedBox(width: 20,),
               Text("New Group",style: TextStyle(fontSize: 20),),
              ],
            ),
            const Row(
              
              children: [
               Icon(Icons.support,size: 30,),
               SizedBox(width: 20,),
               Text("Support",style: TextStyle(fontSize: 20),),
              ],
            ),
            const Row(
              
              children: [
               Icon(Icons.share,size: 30,),
               SizedBox(width: 20,),
               Text("Share",style: TextStyle(fontSize: 20),),
              ],
            )
          ],
        ),
      ),
    );
    
    
  }
}