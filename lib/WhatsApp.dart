import 'package:flutter/material.dart';
import 'package:homeapp/calls.dart';
import 'package:homeapp/chats.dart';
import 'package:homeapp/status.dart';

class WhattsApp extends StatefulWidget {
  const WhattsApp({super.key});

  @override
  State<WhattsApp> createState() => _WhattsAppState();
}

class _WhattsAppState extends State<WhattsApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 56, 34),
       
       title: const Text("WhatsApp",style: TextStyle(color: Colors.white),),
        actions: const [
          
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 20,),
           Icon(Icons.message,color: Colors.white,),
            SizedBox(width: 20,),
            Icon(Icons.more_vert,color: Colors.white,),
        ],
        bottom: const TabBar(
          unselectedLabelColor: Colors.white,
          indicatorColor: Colors.white,
         labelStyle: TextStyle(color: Colors.white),
         
          tabs:[
          Tab(

            text: "Chats",
            
          ),
          Tab(
            text: "Status",
          ),
          Tab(
            text: "Calls",
          ),
        ]),

      ),
      body: const TabBarView(children:[
        ChatView(),
        StatusView(),
        CallView(),
      ]),

    ));
  }
}