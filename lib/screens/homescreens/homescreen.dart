import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hiremi'),
      ),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
