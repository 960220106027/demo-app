import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/bg2.jpg'),fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Most Welcome!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
              TextFormField(
                decoration: InputDecoration(
                    border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(90),),
                    prefixIcon: const Icon(Icons.person),
                     enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                   
                    labelText: "Enter Username",
                    prefixIconColor: Colors.white,
                    labelStyle: const TextStyle(color: Colors.white)
                    ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(90),borderSide: const BorderSide(color: Colors.white)),
                    prefixIcon: const Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Email",
                      prefixIconColor: Colors.white,
                    hintStyle: const TextStyle(color: Colors.white)),
                   
              ),
              TextFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(90)),
                    prefixIcon: const Icon(Icons.phone),
                    enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                    
                    hintText: "Enter Mobile Number",
                      prefixIconColor: Colors.white,
                    hintStyle: const TextStyle(color: Colors.white)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(90)),
                    prefixIcon: const Icon(Icons.credit_card),
                    enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Credit Card Number",
                      prefixIconColor: Colors.white,
                    hintStyle: const TextStyle(color: Colors.white)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(90)),
                    prefixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(20)),
                    hintText: "Enter Password",
                      prefixIconColor: Colors.white,
                    hintStyle: const TextStyle(color: Colors.white)),
              ),
             Center(
               child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blue),
                
                           child: const Center(child: Text("Register",style: TextStyle(color:Colors.white,fontSize: 20),)),
                           
                           
                
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
