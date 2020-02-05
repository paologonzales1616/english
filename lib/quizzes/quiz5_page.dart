import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:english/answer/answer5_page.dart';
import 'package:flutter/material.dart';

class Quiz5Page extends StatefulWidget {
  @override
  _Quiz5PageState createState() => _Quiz5PageState();
}

class _Quiz5PageState extends State<Quiz5Page> {
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
    _open("direction_5.mp3");
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
        title: Text('Quiz for Lesson 5'),
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
                  "Congratulations! you can now read phrases and clauses, this time let us try again reading of phrases and clauses. Read the passage below in one fixation as fast as you can. Record the time you have started and finished. After that, answer the five comprehension questions by writing the letter of the best answer.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset("assets/images/question_5.png"),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () => _open("lesson_5_1.mp3"),
                        ),
                        Expanded(
                          child: Text(
                              "1.) The selection tells mainly about _______."),
                        )
                      ],
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_1 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "A. What a good Filipino is",
                          style: TextStyle(
                            color:
                                answer_1 == "a" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_1 = "a";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_1 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "B. The lives of great Filipinos",
                          style: TextStyle(
                            color:
                                answer_1 == "b" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_1 = "b";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_1 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "C. Our country’s natural resources",
                          style: TextStyle(
                            color:
                                answer_1 == "c" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_1 = "c";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_1 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "D. It is more fun in the Philippines",
                          style: TextStyle(
                            color:
                                answer_1 == "d" ? Colors.white : Colors.black,
                          ),
                        ),
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
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () => _open("lesson_5_2.mp3"),
                        ),
                        Expanded(
                          child: Text(
                              "2.) Another word for “love of country” is ___."),
                        )
                      ],
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_2 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "A. Honesty",
                          style: TextStyle(
                            color:
                                answer_2 == "a" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_2 = "a";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_2 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "B. Patriotism",
                          style: TextStyle(
                            color:
                                answer_2 == "b" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_2 = "b";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_2 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "C. Conservation",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_2 == "c" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_2 = "c";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_2 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "D. Education",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_2 == "d" ? Colors.white : Colors.black,
                          ),
                        ),
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
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () => _open("lesson_5_3.mp3"),
                        ),
                        Expanded(
                          child: Text(
                              "3.) All of the following EXCEPT one lead to love of country. Which one does not?"),
                        )
                      ],
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_3 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "A. Know the history of the Philippines.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color:
                                answer_3 == "a" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_3 = "a";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_3 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "B. Learn the lives and teachings of our heroes.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_3 == "b" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_3 = "b";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_3 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "C. Understand what the country’s flag stands for.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_3 == "c" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_3 = "c";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_3 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "D. Live today and forget yesterday.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_3 == "d" ? Colors.white : Colors.black,
                          ),
                        ),
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
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () => _open("lesson_5_4.mp3"),
                        ),
                        Expanded(
                          child: Text(
                              "4.) Our country is where it is today because _______________."),
                        )
                      ],
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_4 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "A. Of revolution",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_4 == "a" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_4 = "a";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_4 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "B. Influence of other countries",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_4 == "b" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_4 = "b";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_4 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "C. Our forefathers worked hard for our progress",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_4 == "c" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_4 = "c";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,
                      child: RaisedButton(
                        color: answer_4 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "D. Foreigners have helped us",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_4 == "d" ? Colors.white : Colors.black,
                          ),
                        ),
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
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          iconSize: 30,
                          icon: Icon(Icons.play_circle_outline),
                          onPressed: () => _open("lesson_5_5.mp3"),
                        ),
                        Expanded(
                          child: Text("5.) Which of these statements is true?"),
                        )
                      ],
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,

                      child: RaisedButton(
                        color: answer_5 == "a" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "A. It is possible to love one’s country without knowing its history.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_5 == "a" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_5 = "a";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,

                      child: RaisedButton(
                        color: answer_5 == "b" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "B. Our forefathers’ struggles and achievements have nothing to do with our present prosperity.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_5 == "b" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_5 = "b";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,

                      child: RaisedButton(
                        color: answer_5 == "c" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "C. It is necessary that we know what our flag stands for.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_5 == "c" ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            answer_5 = "c";
                          });
                        },
                      ),
                    ),
                    ButtonTheme(
                      minWidth: double.infinity,

                      child: RaisedButton(
                        color: answer_5 == "d" ? Colors.blue : Colors.grey[200],
                        child: Text(
                          "D. A good Filipino knows his country’s history but does not give importance in it.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                answer_5 == "d" ? Colors.white : Colors.black,
                          ),
                        ),
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
                        builder: (context) => Answer5Page(
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
