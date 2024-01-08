// ignore_for_file: prefer_const_constructors

import "package:app_2/pages/home_page.dart";
import "package:app_2/pages/profile_page.dart";
import "package:app_2/pages/sec_page.dart";
import "package:app_2/pages/settings_page.dart";
import "package:flutter/material.dart";

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List _pages = [HomePage(), ProfilePage(), SettingsPage()];

  int selectedIdx = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      selectedIdx = index;
    });
  }

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
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIdx,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
          ]),
      body: _pages[selectedIdx],
    );
  }
}
