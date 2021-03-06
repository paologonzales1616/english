import 'package:english/quizzes/quiz7_page.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Lesson7Page extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Lesson7Page> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'EKmxcmDShLg',
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        forceHideAnnotation: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lesson 7"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.8),
              child: Text(
                "Paragraph Reading",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ButtonTheme(
                splashColor: Colors.white,
                buttonColor: Colors.blue,
                height: 55.0,
                minWidth: double.infinity,
                child: RaisedButton(
                  child: Text(
                    'Take Quiz',
                    style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    _controller.pause();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Quiz7Page(),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
