import 'package:flutter/material.dart';
import 'themeapp.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  IconData? dark = Icons.dark_mode ;
  IconData?  light = Icons.light_mode ;
  Color? colwhite = Colors.white ;
  Color? colblack = Colors.black ;
  var theme = FooderlichTheme.dark();
  @override
  Widget build(BuildContext context) {
    return new Theme(data: theme, child: Scaffold(
      // TODO: Style the title
      appBar: AppBar(

        title: Text(
          'Fooderlich',
          style: theme.textTheme.headline6,
        ),
        actions: [
          modifedIcon(dark!,colblack!,(){
    setState(() {
    theme = FooderlichTheme.dark();
    colwhite = Colors.white;
    colblack =  Colors.white ;

    print('hello');
    });
          }),


          modifedIcon(Icons.light_mode,colblack!,(){
            setState(() {
              theme = FooderlichTheme.light();
              colblack = Colors.black;
              colwhite = Colors.black ;
              print('hello');
            });}),
        ],
      ),
      // TODO: Style the body text
      body: Center(
        child: Text('Let\'s get cooking 👩‍🍳',
            style: theme.textTheme.headline1),
      ),
    ),);
  }
}
Widget modifedIcon (IconData i , Color col , void Function() e ){
  return  IconButton(
      icon : Icon(i ,color: col,
  ), onPressed: e);

}
