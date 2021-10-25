import 'package:flutter/material.dart';
class cercleimage extends StatelessWidget {
  const cercleimage({Key? key,
   this.imageRaduis = 20 ,
    this.imageProvider
  }) : super(key: key);
  final double imageRaduis;
  final ImageProvider? imageProvider ;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRaduis,
      backgroundImage: imageProvider,
    );
  }
}
