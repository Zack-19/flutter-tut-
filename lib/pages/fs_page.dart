import "package:app_2/pages/sec_page.dart";
import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("page one")),
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
