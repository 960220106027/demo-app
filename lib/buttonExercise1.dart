import 'package:flutter/material.dart';

class ButtonExersice extends StatefulWidget {
  const ButtonExersice({super.key});

  @override
  State<ButtonExersice> createState() => _ButtonExersiceState();
}

class _ButtonExersiceState extends State<ButtonExersice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 88, 23),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 53, 41, 41),fixedSize: const Size(220,60)),
                  onPressed: (){}, child: const Row(
                    
                    children: [
                      Text("Settings",style: TextStyle(fontSize: 20,color:Colors.white),),
                      SizedBox(width: 90,),
                      Icon(Icons.menu,color: Colors.white)
                    ],
                  )),
                  
                  IconButton(
                    style: IconButton.styleFrom(backgroundColor:  const Color.fromARGB(255, 53, 41, 41),iconSize: 30),
                    onPressed: (){}, icon:const Icon(Icons.more_horiz,color: Colors.white,)),
                   
                    IconButton(
                    style: IconButton.styleFrom(backgroundColor:  const Color.fromARGB(255, 53, 41, 41),iconSize: 30),
                    onPressed: (){}, icon:const Icon(Icons.arrow_downward_outlined,color: Colors.white,)),
              ],
            ),  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                      style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 84, 87, 18),fixedSize: const Size(220,60)),
                      onPressed: (){}, child: const Row(
                        
                        children: [
                          Text("Sign Up today",style: TextStyle(fontSize: 20,color:Colors.white),),
                          SizedBox(width: 40,),
                          Icon(Icons.arrow_right_alt_outlined,color: Colors.white),
                        ],
                      )),
                        TextButton(
                  style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 84, 87, 18),fixedSize: const Size(120,60)),
                  onPressed: (){}, child: const Row(
                    
                    children: [
                      Text("Menu",style: TextStyle(fontSize: 20,color:Colors.white),),
                      SizedBox(width: 20,),
                      Icon(Icons.menu,color: Colors.white)
                    ],
                  )),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                      style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 101, 21, 73),fixedSize: const Size(220,60)),
                      onPressed: (){}, child: const Row(
                        
                        children: [
                          Text("Confirm",style: TextStyle(fontSize: 20,color:Colors.white),),
                          SizedBox(width: 90,),
                          Icon(Icons.confirmation_num_outlined,color: Colors.white),
                        ],
                      )),
                        TextButton(
                  style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 101, 21, 73),fixedSize: const Size(120,60)),
                  onPressed: (){}, child: const Row(
                    
                    children: [
                      Text("Share",style: TextStyle(fontSize: 20,color:Colors.white),),
                      SizedBox(width: 10,),
                      Icon(Icons.share,color: Colors.white)
                    ],
                  )),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                      style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 15, 59, 87),fixedSize: const Size(220,60)),
                      onPressed: (){}, child: const Row(
                        
                        children: [
                          Text("Cancel",style: TextStyle(fontSize: 20,color:Colors.white),),
                          SizedBox(width: 100,),
                          Icon(Icons.wrong_location,color: Colors.white),
                        ],
                      )),
                        TextButton(
                  style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 15, 59, 87),fixedSize: const Size(120,60)),
                  onPressed: (){}, child: const Row(
                    
                    children: [
                      Text("Junk",style: TextStyle(fontSize: 20,color:Colors.white),),
                      SizedBox(width: 20,),
                      Icon(Icons.garage_outlined,color: Colors.white)
                    ],
                  )),
              ],
            ),

          ],
        ),
      ),
    );
  }
}