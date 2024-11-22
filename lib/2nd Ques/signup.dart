import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:homeapp/2nd%20Ques/loginPage.dart';
import 'package:http/http.dart' as http;


class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _TextFormState();
}

class _TextFormState extends State<SignPage> {
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController dobcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  Future<void> signupAdopter(
      String firstname,
      String lastname,
      String dob,
      String phone,
      String email,
      String password,
      String address,
      String gender) async {
    const url =
        'http://campus.sicsglobal.co.in/Project/homemade_crafts/API/registration.php';

    Map<String, String> body = {
      'firstname': firstname,
      'lastname': lastname,
     
     
      
      'email': email,
      'phone': phone,
      'password': password,
     
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        body: body,
      );
      var jsonData = json.decode(response.body);

      if (response.statusCode == 200) {
        if (jsonData['status'] == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: const Text(
                'Registration Successful!',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              duration: const Duration(seconds: 4),
            ),
          );
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
          print(body);
          print("Response body${response.body}");
        }
        print(body);
        print("Response body${response.body}");
        print('Registration successful');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.white,
            content: Text(
              'Already email and password Exists',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            duration: Duration(seconds: 4),
          ),
        );
        print('Error: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 177, 172),
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bg2.jpg"),fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text(
                    "Most Welcome!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 253, 152, 80),
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (firstnamecontroller.text.isEmpty) {
                        return "please enter firstname";
                      } else {
                        return null;
                      }
                    },
                    controller: firstnamecontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        prefixIcon: const Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(90)),
                        hintText: "firstname",
                        prefixIconColor: Colors.black,
                        hintStyle: const TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (lastnamecontroller.text.isEmpty) {
                        return "please enter lastname";
                      } else {
                        return null;
                      }
                    },
                    controller: lastnamecontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(90),
                            borderSide: const BorderSide(color: Colors.white)),
                        prefixIcon: const Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(90)),
                        hintText: "Lastname",
                        prefixIconColor: Colors.white,
                        hintStyle: const TextStyle(color: Colors.white)),
                  ),
                 
                  
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                 
                 
                  TextFormField(
                    validator: (value) {
                      if (emailcontroller.text.isEmpty) {
                        return "please enter email";
                      } else {
                        return null;
                      }
                    },
                    controller: emailcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(90)),
                        prefixIcon: const Icon(Icons.mail),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(90)),
                        hintText: "Email",
                        prefixIconColor: Colors.white,
                        hintStyle: const TextStyle(color: Colors.white)),
                  ),
                   TextFormField(
                    validator: (value) {
                      if (phonecontroller.text.isEmpty) {
                        return "please enter phone no";
                      } else {
                        return null;
                      }
                    },
                    controller: phonecontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(90)),
                        prefixIcon: const Icon(Icons.phone),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(90)),
                        hintText: "Phone no",
                        prefixIconColor: Colors.white,
                        hintStyle: const TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (passwordcontroller.text.isEmpty) {
                        return "please enter password";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(90)),
                        prefixIcon: const Icon(Icons.remove_red_eye),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(90)),
                        hintText: "Password",
                        prefixIconColor: Colors.white,
                        hintStyle: const TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  
                  
                  
                  
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 241, 142, 71),
                          fixedSize: Size(100, 40)),
                      onPressed: () {
                        signupAdopter(
                          firstnamecontroller.text.toString(),
                          lastnamecontroller.text.toString(),
                          dobcontroller.text.toString(),
                          phonecontroller.text.toString(),
                          emailcontroller.text.toString(),
                          passwordcontroller.text.toString(),
                          addresscontroller.text.toString(),
                          gendercontroller.text.toString(),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                 
                 
                 
                 
                 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}