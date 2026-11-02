import 'package:flutter/material.dart';
import 'package:pop_up_et_nav/model/tabs.dart';
import 'package:pop_up_et_nav/widgets/first_page.dart';
import 'package:pop_up_et_nav/widgets/body.dart';

//Ce fichier contient un Sacffold donce sera une page ==> va dans le dossier pages
class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}

class HomeState extends State<HomePage> {

  int index = 0;
  Widget _widget = const Body();

  final List<Tabs> _tabs =  [
    Tabs(name: "Pop Up", iconData: Icons.nature_people, widget: const Body()),
    Tabs(name: "Navigation", iconData: Icons.navigation, widget: const FirstPage()),
    Tabs(name: "Inconnu", iconData: Icons.question_mark, widget: const Center(child: Text("Ne connait pas "),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pop Up et Nav"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        bottom: PreferredSize(
            preferredSize: Size(
                MediaQuery.of(context).size.width,
                65
            ),
            child: NavigationBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              selectedIndex: index,
              onDestinationSelected: (newIndex){
                setState(() {
                  index = newIndex;
                });
              },
              destinations : _tabs.map((t) => t.destination).toList(),
            ),),
      ),
      body: _tabs[index].widget,
    );
  }
}