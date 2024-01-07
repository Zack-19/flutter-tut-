// ignore_for_file: prefer_const_constructors

import 'package:app_2/pages/fs_page.dart';
import 'package:app_2/pages/sec_page.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  List names = [
    'John',
    'Emily',
    'Michael',
    'Sophia',
    'Daniel',
    'Olivia',
    'Matthew',
    'Emma',
    'Andrew',
    'Ava',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        /*home: Scaffold(
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
        /*body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.deepPurple,
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.deepPurple[200],
            ),
          ],
        ),*/
        /*       body: GridView.builder(
            itemCount: 64,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
            itemBuilder: (context, index) => Container(
                  color: Color.fromARGB(255, 12, 136, 194),
                  margin: EdgeInsets.all(2),
                )),*/
        /*  body: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple[200],
            ),
          ],
        ),*/
        body: Center(
          child: GestureDetector(
              onTap: () {
                print("user tapped");
              },
              child: Container(
                height: 250,
                width: 250,
                color: Colors.deepPurple,
                child: Center(
                  child: Text("tap"),
                ),
              )),
        ),
      ),*/
        home: FirstPage(),
        routes: {
          '/sec': (context) => SecondPage(),
        });
  }
}
