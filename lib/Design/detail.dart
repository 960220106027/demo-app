import 'package:flutter/material.dart';
import 'package:homeapp/API/api.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
   static const routename = 'all_details_screen';
   final String id;
  const DetailsScreen({super.key,required this.id});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
List<String>movies=["assets/goat.jpeg"];

  @override
  Widget build(BuildContext context) {
   final moviedata = Provider.of<MovieProvider>(context, listen: false)
        .products
        .firstWhere((element) => element.filmId == widget.id);


    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            height: 400,
            child: Column(
              
              children: [
                Center(child: Image.asset("assets/goat.jpeg",height: 400,width: 500,),),
              ],
            ),
          ),
          Container(
            height: 60,
            
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                 
                   Text("The Greatest of All Time",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                  SizedBox(width: 30,),
                  Text("Ticket prize:Rs.100",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),
                ],
              ),
            ),
          ),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The Greatest of All Time (also marketed as GOAT) is a 2024 Indian Tamil-language action thriller film[7] directed by Venkat Prabhu and produced by AGS Entertainment. The film stars Vijay in a triple role, alongside Prashanth, Prabhu Deva, Mohan, Jayaram, Ajmal Ameer, Vaibhav, Yogi Babu, Premgi Amaren, Sneha, Laila, Meenakshi Chaudhary and Abyukta Manikandan. It is the twenty-fifth production of the studio and the penultimate film of Vijay before his political entry. The film follows Gandhi, the former leader of an anti-terrorism squad, who reunites with his squad members to address the problems which were stemmed from their previous actions. "),
                  
                ],
              ),
        ],),
      ),
     

    );
  }
}