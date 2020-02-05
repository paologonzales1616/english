import 'package:flutter/material.dart';

class InfoImage extends StatelessWidget {
  InfoImage({this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/$image.png'),
        ),
      ),
    );
  }
}
