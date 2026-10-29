import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final String text;

  const ThirdPage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Avec des paramètres"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Text("Le message passé est : $text"),
    );
  }
}