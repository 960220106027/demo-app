import 'package:flutter/material.dart';
import 'package:homeapp/login.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({super.key});

  @override
  State<SplashScreeen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
@override
void initState(){
  super.initState();
  navigationhome();
}

  navigationhome()async{
   await Future.delayed(Duration(milliseconds: 1500));

Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignupPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(image: DecorationImage(image:AssetImage("assets/bg6.jpg"),fit: BoxFit.cover))
      ),
    );
  }
}