// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //عشان اقيم  الخط الاحمر
      theme: ThemeData.light(useMaterial3: true),
      home: English(),
    );
  }
}

class English extends StatelessWidget {
  const English({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        title: Text(
          "My Card ",
          style: TextStyle(
              color: Colors.white,
              fontSize: 44,
              fontFamily: "Myfont",
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 66,
                  backgroundImage: AssetImage("assets/img/wardphoto.jpg"),
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue[100],
                  size: 27,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Name:",
                  style: TextStyle(fontSize: 30, color: Colors.grey[50]),
                ),
                Text(
                  "Ward Dara..",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: "Myfont",
                      fontSize: 44,
                      color: Colors.amberAccent),
                ),
                SizedBox(
                  height: 33,
                ),
                Text(
                  "Current Level:",
                  style: TextStyle(fontSize: 30, color: Colors.grey[50]),
                ),
                Text(
                  "Advanced",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: "Myfont",
                      fontSize: 44,
                      color: Colors.amberAccent),
                ),
                SizedBox(
                  height: 33,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.grey[50],
                      size: 27,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "warddaraghmeh5@gmail.com",
                      style: TextStyle(fontSize: 21, color: Colors.grey[50]),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
