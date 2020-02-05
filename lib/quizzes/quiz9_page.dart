import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:english/answer/answer9_page.dart';
import 'package:flutter/material.dart';

class Quiz9Page extends StatefulWidget {
  @override
  _Quiz9PageState createState() => _Quiz9PageState();
}

class _Quiz9PageState extends State<Quiz9Page> {
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
    _open("direction_9.mp3");
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
        title: Text('Quiz for Lesson 9'),
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
                  "Let us now proceed to the evaluation, you will read the following paragraphs and you will locate the main idea through writing the letter of the correct answer.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("question_9_1.mp3"),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "1. The world means different things to different people. To the farmers, the world is composed of people who get hungry and have to eat. To the industrialists, the world means people who need machines, clothes, furniture, houses, and mechanical gadgets. To those who work in communications, the world consists of people who need to talk to one another. However, to the theologians, the world is people born to sin and who must be born again to find heaven.",
                        ),
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
                      onPressed: () => _open("answer_9_1.mp3"),
                    ),
                    Text("1.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              color: answer_1 == "a"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "A. The world is for working people.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_1 == "a"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_1 == "b"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "B. There are many people in the world.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_1 == "b"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_1 == "c"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "C. There are different meanings to people who have different jobs.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_1 == "c"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_1 == "d"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "D. The world has different meanings to people who have different jobs.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_1 == "d"
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  answer_1 = "d";
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("question_9_2.mp3"),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "2. Blue skies and beautiful sunsets are effects of the atmosphere. White light contains all the colors of the rainbow. As the white rays of the sun pass through the gases and dust in the atmosphere, they are broken up into different colors. Blues and violets are scattered more than the other colors, and hence the sky looks blue. Specks of dust in the atmosphere absorb several colors such as orange and red, and these are seen in the sky as sunrise and sunset.",
                        ),
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
                      onPressed: () => _open("answer_9_2.mp3"),
                    ),
                    Text("2.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              color: answer_2 == "a"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "A. Sunset and blue skies are beautiful.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_2 == "a"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_2 == "b"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "B. The atmosphere produces wonderful effects.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_2 == "b"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_2 == "c"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "C. There are many colors in the sky.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_2 == "c"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_2 == "d"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "D. Colors are seen in the sky.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_2 == "d"
                                      ? Colors.white
                                      : Colors.black,
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
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("question_9_3.mp3"),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "3. Half of the people in the world eat rice to stay alive. The other half eat bread made from wheat or rye. Porridge is made from oatmeal, while spaghetti and macaroni come from durum, a special kind of wheat. Ground cereals popularly known as flour go into biscuits, cakes, breads, noodles, and dumplings. These are only a few of the innumerable kinds of food that can be turned out of cereals.",
                        ),
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
                      onPressed: () => _open("answer_9_3.mp3"),
                    ),
                    Text("3.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              color: answer_3 == "a"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "A. Cereals are an important food.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_3 == "a"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_3 == "b"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "B. People eat to live.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_3 == "b"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_3 == "c"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "C. Foods keeps people alive.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_3 == "c"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_3 == "d"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "D. There are many kinds of food.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_3 == "d"
                                      ? Colors.white
                                      : Colors.black,
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
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("question_9_4.mp3"),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "4. Modern music is based on a much wider variety of notes than is found in the music of the old masters. There are no keys such as C major or E minor serving as central notes around which the whole piece of music turns. Each of the twelve notes is equal and independent, as if the main note, its six related notes, and the five remaining notes had been put on an equal footing. In a melody, any note can be used with any other note. This way of using notes more independently is called discord.",
                        ),
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
                      onPressed: () => _open("answer_9_4.mp3"),
                    ),
                    Text("4.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              color: answer_4 == "a"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "A. Modern music is superior to the music of the past.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_4 == "a"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_4 == "b"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "B. Modern music has independent uses of notes.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_4 == "b"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_4 == "c"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "C. Modern music is noise.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_4 == "c"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_4 == "d"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "D. Modern music is easy to compose.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_4 == "d"
                                      ? Colors.white
                                      : Colors.black,
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
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30,
                      icon: Icon(Icons.play_circle_outline),
                      onPressed: () => _open("question_9_5.mp3"),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "5. The earth pulls upon all objects and holds them because of its great mass. This strong pull is known as gravity and is in the direction of the earth’s center. Gravity holds the ocean waters in their beds, the plants in the soil, and the animals on their feet on the ground. Anything thrown into the air is pulled back to the ground by gravity. Gravity also keeps the earth’s atmosphere from drifting off into space.",
                        ),
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
                      onPressed: () => _open("answer_9_5.mp3"),
                    ),
                    Text("5.)"),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                              color: answer_5 == "a"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "A. The earth’s gravity is strong.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_5 == "a"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_5 == "b"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "B. Gravity pulls and holds all things on earth.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_5 == "b"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_5 == "c"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "C. Gravity is like paste.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_5 == "c"
                                      ? Colors.white
                                      : Colors.black,
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
                              color: answer_5 == "d"
                                  ? Colors.blue
                                  : Colors.grey[200],
                              child: Text(
                                "D. Nobody and nothing can fall off the earth.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: answer_5 == "d"
                                      ? Colors.white
                                      : Colors.black,
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
                        builder: (context) => Answer9Page(
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
