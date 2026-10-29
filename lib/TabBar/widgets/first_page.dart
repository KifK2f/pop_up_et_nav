import 'package:flutter/material.dart';
import 'package:pop_up_et_nav/pages/second_page.dart';
import 'package:pop_up_et_nav/pages/third_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
        children : [
          TextButton(onPressed: (){
            MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){
              return SecondPage();
            });
            Navigator.of(context).push(route);
          }, child: const Text("Aller à la page suivante")),
          
          TextField(
            decoration: const InputDecoration(
              hintText: "Entrer le texte à passer",
              border: OutlineInputBorder()
            ),
            onSubmitted: (stringToPass){
              MaterialPageRoute route = MaterialPageRoute(builder: ((context) => ThirdPage(text: stringToPass)));
              // Navigator.of(context).push(route);
              Navigator.push(context, route); //C'est la mm chose que of(context).push(route)
              // Navigator.of(context).pushReplacement(route); //Pour ne plus afficher la flêche de retour en arrière

              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return ThirdPage(text: stringToPass);
              // }));
            },
          )
        ]
    );
  }
}