import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AuthorCard.dart';
import 'themeapp.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);
  // 1
  final String Name = 'Mike Katz';
  final String title = 'Smoothie Connoisseur';
  final String description_left = 'Smoothies';
  final String description_right = 'Recipe';

  // 2
  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Container(

        // TODO: Card1 Decorate Container
        child: Column(
          children: [

            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/avatar.jpg'),
            ),
        Expanded(
          child: Stack(
            children: [
              // 3
              Positioned(
                bottom: 16,
                right: 16,
                child: Text(
                  'Recipe',
                  style: FooderlichTheme.lightTextTheme.headline1,
                ),
              ),
              // 4
              Positioned(
                bottom: 70,
                left: 16,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text(
                    'Smoothies',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                ),
              ),
            ],
          ),
        ),




          ],
        ),


        padding: const EdgeInsets.all(16),
        // 2
        constraints: const BoxConstraints.expand(

          width: 350,
          height: 450,
        ),
        // 3
        decoration: const BoxDecoration(
          // 4
          image: DecorationImage(
            // 5
            image: AssetImage('assets/mag5.png'),
            // 6
            fit: BoxFit.cover,
          ),
          // 7
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),

      ),
    );
  }


}

