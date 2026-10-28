import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage> {

  void _showSnackBar(){
      SnackBar snackBar = SnackBar( //SnackBar permet de dire par exemple à l'utilisateur qu'il est connecté ou déconnecrté
          content: const Text("Nous avons montré une SnackBar"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 5,
        margin: const EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating, //On mets ceci pour permttre le margin
        showCloseIcon: true, //Avoir l'icon e de la croix pour fermer la snackbar
        duration: const Duration(seconds: 8), //Duré de l'afichage du SnackBar
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pop Up et Nav"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: _showSnackBar, child: const Text("Montre moi un Snackbar"))
          ],
        ),
      ),
    );
  }
}