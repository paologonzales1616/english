
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  InfoCard({this.lessonNo, this.lessonTiitle, this.r, this.g, this.b});
  final String lessonNo, lessonTiitle;
  final int r, g, b;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 115.0,
      child: Card(
        color: Color.fromRGBO(r, g, b, 1),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 64.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Lesson $lessonNo",
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
              Text(
                lessonTiitle,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
