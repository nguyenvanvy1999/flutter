import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.amber),
      child: const Center(
        child: Text(
          'Welcome',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}
