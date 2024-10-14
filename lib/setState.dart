import 'package:flutter/material.dart';

class SetView extends StatefulWidget {
  const SetView({super.key});

  @override
  State<SetView> createState() => _SetViewState();
}

class _SetViewState extends State<SetView> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 16, 60),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            counter.toString(),
            style: const TextStyle(fontSize: 120),
          )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 77, 22, 71),
                  fixedSize: const Size(100, 60)),
              onPressed: () {
                setState(() {
                    counter++;
                print(counter);
                });
              
              },
              child: const Text(
                "Counter",
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
