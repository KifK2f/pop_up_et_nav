import 'package:flutter/material.dart';

class Tabs {
  String name;
  IconData iconData;
  Widget widget;

  Tab get tab => Tab(icon: Icon(iconData), text: name);

  BottomNavigationBarItem get item => BottomNavigationBarItem(icon: Icon(iconData), label: name);

  NavigationDestination get destination => NavigationDestination(icon: Icon(iconData), label: name);

  Tabs({required this.name, required this.iconData, required this.widget});
}