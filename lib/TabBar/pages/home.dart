import 'package:flutter/material.dart';
import 'package:pop_up_et_nav/model/tabs.dart';
import 'package:pop_up_et_nav/widgets/first_page.dart';
import 'package:pop_up_et_nav/widgets/body.dart';

//Ce fichier contient un Sacffold donce sera une page ==> va dans le dossier pages
class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  HomePage({super.key});

  // final List<Widget> _bodies = const [
  //   Body(),
  //   FirstPage()
  // ];

  final List<Tabs> _tabs =  [
    Tabs(name: "Pop Up", iconData: Icons.nature_people, widget: const Body()),
    Tabs(name: "Navigation", iconData: Icons.navigation, widget: const FirstPage()),
    Tabs(name: "Inconnu", iconData: Icons.question_mark, widget: const Center(child: Text("Ne connait pas "),)),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pop Up et Nav"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          bottom: TabBar(
            indicatorColor: Colors.deepPurple,
            labelColor: Colors.deepPurple,
            unselectedLabelColor: Colors.white,
            tabs: _tabs.map((t) => t.tab).toList()
          ),
        ),
        body: TabBarView(
            children: _tabs.map((t) => t.widget).toList()
        ),
      ),
    );
  }
}