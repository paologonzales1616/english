import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:english/answer/answer3_page.dart';
import 'package:flutter/material.dart';

class Quiz3Page extends StatefulWidget {
  @override
  _Quiz3PageState createState() => _Quiz3PageState();
}

class _Quiz3PageState extends State<Quiz3Page> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  final _formKey = GlobalKey<FormState>();
  bool directionsPlaying = false;

  String answer_1 = "";
  String answer_2 = "";
  String answer_3 = "";
  String answer_4 = "";
  String answer_5 = "";

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
    _open("Direction.mp3");
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
        title: Text('Quiz for Lesson 3'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Now, you are already familiar with the words with final consonant blend, let’s have 5-item spelling test. I will read the words twice then spell it correctly.",
                    style: TextStyle(fontSize: 16.0),
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
                        onPressed: () => _open("mask.mp3"),
                      ),
                      Text("1.)"),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter answer'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Answer is required';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              answer_1 = value;
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
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.play_circle_outline),
                        onPressed: () => _open("test.mp3"),
                      ),
                      Text("2.)"),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter answer'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Answer is required';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              answer_2 = value;
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
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.play_circle_outline),
                        onPressed: () => _open("land.mp3"),
                      ),
                      Text("3.)"),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter answer'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Answer is required';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              answer_3 = value;
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
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.play_circle_outline),
                        onPressed: () => _open("pink.mp3"),
                      ),
                      Text("4.)"),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter answer'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Answer is required';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              answer_4 = value;
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
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.play_circle_outline),
                        onPressed: () => _open("wolf.mp3"),
                      ),
                      Text("5.)"),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter answer'),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Answer is required';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            setState(() {
                              answer_5 = value;
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
                      if (_formKey.currentState.validate()) {
                    _assetsAudioPlayer.stop();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Answer3Page(
                              answer_1: answer_1,
                              answer_2: answer_2,
                              answer_3: answer_3,
                              answer_4: answer_4,
                              answer_5: answer_5,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
