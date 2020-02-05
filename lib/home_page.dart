import 'package:english/lessons/lesson10_page.dart';
import 'package:english/lessons/lesson1_page.dart';
import 'package:english/lessons/lesson2_page.dart';
import 'package:english/lessons/lesson3_page.dart';
import 'package:english/lessons/lesson4_page.dart';
import 'package:english/lessons/lesson5_page.dart';
import 'package:english/lessons/lesson6_page.dart';
import 'package:english/lessons/lesson7_page.dart';
import 'package:english/lessons/lesson8_page.dart';
import 'package:english/lessons/lesson9_page.dart';
import 'package:flutter/material.dart';

import 'components/info_card.dart';
import 'components/info_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("English Subject"),
        ),
        body: Container(
          margin: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson1Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "1",
                            lessonTiitle: "Sounds of the Alphabet",
                            r: 228,
                            g: 84,
                            b: 79,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary1",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson2Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "2",
                            lessonTiitle: "Initial Consonant Blends",
                            r: 45,
                            g: 117,
                            b: 187,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary2",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson3Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "3",
                            lessonTiitle: "Final Consonant Blends",
                            r: 223,
                            g: 187,
                            b: 7,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "book",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson4Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "4",
                            lessonTiitle: "Sight Words",
                            r: 127,
                            g: 201,
                            b: 157,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary3",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson5Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "5",
                            lessonTiitle: "Phrase/Clause Reading",
                            r: 217,
                            g: 112,
                            b: 162,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary4",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson6Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "6",
                            lessonTiitle: "Learn to Read Sentences",
                            r: 228,
                            g: 84,
                            b: 79,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary1",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson7Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "7",
                            lessonTiitle: "Paragraph Reading",
                            r: 45,
                            g: 117,
                            b: 187,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary2",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson8Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "8",
                            lessonTiitle: "Noting Details",
                            r: 223,
                            g: 187,
                            b: 7,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "book",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson9Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "9",
                            lessonTiitle: "Finding the Main Idea",
                            r: 127,
                            g: 201,
                            b: 157,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary3",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson10Page()),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 2.0,
                  ),
                  child: Container(
                    height: 115.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 50.0,
                          child: InfoCard(
                            lessonNo: "10",
                            lessonTiitle: "Vocabulary Skill",
                            r: 217,
                            g: 112,
                            b: 162,
                          ),
                        ),
                        Positioned(
                          top: 7.5,
                          child: InfoImage(
                            image: "dictionary4",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
