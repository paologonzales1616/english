import 'package:english/home_page.dart';
import 'package:flutter/material.dart';

class Answer9Page extends StatefulWidget {
  Answer9Page({
    @required this.answer_1,
    @required this.answer_2,
    @required this.answer_3,
    @required this.answer_4,
    @required this.answer_5,
  });
  final String answer_1;
  final String answer_2;
  final String answer_3;
  final String answer_4;
  final String answer_5;

  @override
  _Answer9PageState createState() => _Answer9PageState();
}

class _Answer9PageState extends State<Answer9Page> {
  bool correct_1 = false; //a
  bool correct_2 = false; //b
  bool correct_3 = false; //d
  bool correct_4 = false; //c
  bool correct_5 = false; //c
  int numberOfCorrect = 0;

  @override
  void initState() {
    setState(() {
      if (widget.answer_1.toLowerCase() == "d") {
        correct_1 = true;
        ++numberOfCorrect;
      }
      if (widget.answer_2.toLowerCase() == "b") {
        correct_2 = true;
        ++numberOfCorrect;
      }
      if (widget.answer_3.toLowerCase() == "a") {
        correct_3 = true;
        ++numberOfCorrect;
      }
      if (widget.answer_4.toLowerCase() == "b") {
        correct_4 = true;
        ++numberOfCorrect;
      }
      if (widget.answer_5.toLowerCase() == "b") {
        correct_5 = true;
        ++numberOfCorrect;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Answer for Quiz 9"),
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "1.) ${widget.answer_1.toUpperCase()}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      correct_1
                          ? Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Answer: The world has different meanings to people who have different jobs.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "2.) ${widget.answer_2.toUpperCase()}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      correct_2
                          ? Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Answer: The atmosphere produces wonderful effects.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "3.) ${widget.answer_3.toUpperCase()}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      correct_3
                          ? Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Answer: Cereals are an important food.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "4.) ${widget.answer_4.toUpperCase()}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      correct_4
                          ? Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Answer: Modern music has independent uses of notes.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "5.) ${widget.answer_5.toUpperCase()}",
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      correct_5
                          ? Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Answer: Gravity pulls and holds all things on earth.",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "$numberOfCorrect / 5 = ${((numberOfCorrect / 5) * 100).round()}%",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}