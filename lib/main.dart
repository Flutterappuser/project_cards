import 'package:chapitre3/home.dart';
import 'package:flutter/material.dart';
import 'themeapp.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {


  // 2
  const Fooderlich({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {

    var theme = FooderlichTheme.dark();
    // 3
    return MaterialApp(
theme: theme,


      home: home(),

    );

  }
}
