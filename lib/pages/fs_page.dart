// ignore_for_file: prefer_const_constructors

import "package:app_2/pages/sec_page.dart";
import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("page one")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('H O M E'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G S'),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/settings');
                }),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("go to the second page "),
          onPressed: () {
            /*Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ),
            );*/
            Navigator.pushNamed(context, "/sec");
          },
        ),
      ),
    );
  }
}
