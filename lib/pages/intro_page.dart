import "package:flutter/material.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: Column(
        children: [
          Image.asset('lib/images/nike_logo.png'),
        ],
      ),
    );
  }
}
