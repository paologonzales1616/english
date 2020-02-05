import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:english/answer/answer4_page.dart';
import 'package:flutter/material.dart';

class Quiz4Page extends StatefulWidget {
  @override
  _Quiz4PageState createState() => _Quiz4PageState();
}

class _Quiz4PageState extends State<Quiz4Page> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  bool directionsPlaying = false;

  String answer_1 = "a"; //d
  String answer_2 = "a"; //b
  String answer_3 = "a"; //c
  String answer_4 = "a"; //a
  String answer_5 = "a"; //c

  void _open(String audio) {
    _assetsAudioPlayer.open(
      AssetsAudio(
        asset: audio,
        folder: "flutter_assets/assets/audios/",
      ),
    );
  }

  @override
  void initState() {
    _open("Direction_4.mp3");
    super.initState();
  }

  @override
  void dispose() {
    _assetsAudioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz for Lesson 4'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Look at the given pictures then identify what picture it is. Choose the letter of the correct answer.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/chair.jpg",
                  width: 100,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("lesson_4_1.mp3"),
                    ),
                    Text("1.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_1 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text("A"),
                        onPressed: () {
                          setState(() {
                            answer_1 = "a";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_1 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text("B"),
                        onPressed: () {
                          setState(() {
                            answer_1 = "b";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_1 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text("C"),
                        onPressed: () {
                          setState(() {
                            answer_1 = "c";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_1 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text("D"),
                        onPressed: () {
                          setState(() {
                            answer_1 = "d";
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/bread.jpg",
                  width: 100,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("lesson_4_2.mp3"),
                    ),
                    Text("2.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_2 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text("A"),
                        onPressed: () {
                          setState(() {
                            answer_2 = "a";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_2 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text("B"),
                        onPressed: () {
                          setState(() {
                            answer_2 = "b";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_2 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text("C"),
                        onPressed: () {
                          setState(() {
                            answer_2 = "c";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_2 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text("D"),
                        onPressed: () {
                          setState(() {
                            answer_2 = "d";
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/angry.jpg",
                  width: 100,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("lesson_4_3.mp3"),
                    ),
                    Text("3.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_3 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text("A"),
                        onPressed: () {
                          setState(() {
                            answer_3 = "a";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_3 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text("B"),
                        onPressed: () {
                          setState(() {
                            answer_3 = "b";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_3 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text("C"),
                        onPressed: () {
                          setState(() {
                            answer_3 = "c";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_3 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text("D"),
                        onPressed: () {
                          setState(() {
                            answer_3 = "d";
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/television.jpg",
                  width: 100,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("lesson_4_4.mp3"),
                    ),
                    Text("4.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_4 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text("A"),
                        onPressed: () {
                          setState(() {
                            answer_4 = "a";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_4 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text("B"),
                        onPressed: () {
                          setState(() {
                            answer_4 = "b";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_4 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text("C"),
                        onPressed: () {
                          setState(() {
                            answer_4 = "c";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_4 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text("D"),
                        onPressed: () {
                          setState(() {
                            answer_4 = "d";
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/crowd.jpg",
                  width: 100,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("lesson_4_5.mp3"),
                    ),
                    Text("5.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_5 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text("A"),
                        onPressed: () {
                          setState(() {
                            answer_5 = "a";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_5 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text("B"),
                        onPressed: () {
                          setState(() {
                            answer_5 = "b";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_5 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text("C"),
                        onPressed: () {
                          setState(() {
                            answer_5 = "c";
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: RaisedButton(
                        color: answer_5 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text("D"),
                        onPressed: () {
                          setState(() {
                            answer_5 = "d";
                          });
                        },
                      ),
                    )
                  ],
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
                    'Submit',
                    style: TextStyle(
                        fontFamily: "Arial",
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    _assetsAudioPlayer.stop();

                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Answer4Page(
                          answer_1: answer_1,
                          answer_2: answer_2,
                          answer_3: answer_3,
                          answer_4: answer_4,
                          answer_5: answer_5,
                        ),
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
