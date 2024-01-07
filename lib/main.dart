// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("app bar"),
          backgroundColor: Colors.redAccent,
          leading: Icon(Icons.menu),
          elevation: 0,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
        ),
        /*body: Center(
          child: Container(
            height: 250,
            width: 250,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(25)),
            child: Text(
              "Hello world",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),*/
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              color: Colors.deepPurple,
            )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.deepPurple[400],
                )),
            Expanded(
                child: Container(
              color: Colors.deepPurple[200],
            )),
          ],
        ),
      ),
    );
  }
}