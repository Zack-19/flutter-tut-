import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("HOME")),
      // ignore: prefer_const_constructors
      body: Center(
        child: Text('home'),
      ),
    );
  }
}
