import 'package:flutter/material.dart';

class Exercise3 extends StatefulWidget {
  const Exercise3({super.key});

  @override
  State<Exercise3> createState() => _Exercise3State();
}

class _Exercise3State extends State<Exercise3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(60),borderSide: BorderSide.none),
              prefixIcon: const Icon(Icons.email),
              hintText: 'Email',
              fillColor: Colors.green,
              filled: true,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(border:OutlineInputBorder(borderRadius:BorderRadius.circular(90)),
              suffixIcon: const Icon(Icons.lock),
              hintText: "Password",
              fillColor:  Colors.grey,
              filled:true,
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}