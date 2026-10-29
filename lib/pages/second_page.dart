import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Seconde page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(onPressed: (){
            Navigator.pop(context);
        }, child: const Text("Retour en arrière")),
      ),
    );
  }


}