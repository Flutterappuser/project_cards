import 'Card1.dart';
import 'Card2.dart';

import 'package:flutter/material.dart';
import 'Card3.dart';
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

  // 7
  int selectedIndex = 0;

// 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    Card1(),
    // TODO: Replace with Card2
    Card2(),
    // TODO: Replace with Card3
    Card3(),
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }



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
      body: pages[selectedIndex],
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor:
        Theme.of(context).textSelectionTheme.selectionColor,
        // 10
        currentIndex: selectedIndex,
// 11
        onTap: _onItemTapped,
        // 6
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),

    ),);
  }
}
Widget modifedIcon (IconData i , Color col , void Function() e ){
  return  IconButton(
      icon : Icon(i ,color: col,
  ), onPressed: e);

}
