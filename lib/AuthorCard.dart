import 'package:flutter/material.dart';
import 'themeapp.dart';
import 'Cercle_image.dart';

class AuthorCard extends StatelessWidget {
  // 1
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  }) : super(key: key);

  // 2
  @override
  Widget build(BuildContext context) {
    const AuthorCard(
      authorName: 'Mike Katz',
      title: 'Smoothie Connoisseur',
      imageProvider: AssetImage('assets/author_katz.jpeg'),
    );

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          // 1
          Row(
            children: [
              cercleimage(
                imageProvider: imageProvider,
                imageRaduis: 28,
              ),
              // 2
              const SizedBox(width: 8),
              // 3
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: IconButton(
              // 4
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey[400],
                // 5
                onPressed: () {
                  const snackBar = SnackBar(content: Text('Favorite Pressed'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
          ),

        ],
      ),
    );

  }
}
