import 'package:flutter/material.dart';

class Taskbar extends StatefulWidget {
  const Taskbar({super.key});

  @override
  State<Taskbar> createState() => _TaskbarState();
}

class _TaskbarState extends State<Taskbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
          title: const Text(
            "AppBar Example",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 46, 133, 170),
          actions: const [
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.share,
              color: Colors.white,
            ),
            SizedBox(width: 40),
            Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          ],
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Icon(Icons.person),
                SizedBox(width: 40),
                Text(
                  "Add member",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.camera),
                SizedBox(width: 40),
                Text("Camera",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 40),
                Text("Edit",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.favorite_border_outlined),
                SizedBox(width: 40),
                Text("Like",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.person_add),
                SizedBox(width: 40),
                Text("add",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.alarm),
                SizedBox(width: 40),
                Text("Alarm",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.save),
                SizedBox(width: 40),
                Text("Save",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.call),
                SizedBox(width: 40),
                Text("Call",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.map),
                SizedBox(width: 40),
                Text("Map",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 40),
                Text("Settings",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ));
  }
}
