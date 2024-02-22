import 'package:asaan/screens/Calculator.dart';
import 'package:asaan/screens/subtopics/Alphabet%20Test.dart';
import 'package:asaan/screens/subtopics/Syllogism.dart';
import 'package:asaan/widgets/HomeSubjectTile.dart';
import 'package:flutter/material.dart';

import '../widgets/CalculatorButton.dart';
import '../widgets/CompletionTile.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(252, 238, 237, 1),
          appBar: AppBar(
            backgroundColor: Color(0xfff7c6c2),
            title: Center(
              child: Text(
                "Asaan h",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(247, 164, 158, 1),
                    shape: BoxShape.rectangle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                            child: Text(
                              "Welcome",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Manish!",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Today's Motivation",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Life is never easy",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.amber,
                          backgroundImage:
                              AssetImage("assets/images/coder.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Other widgets...

                  // Completed Courses and Quizzes Tile
                  CompletionTile(
                    completedCourses:
                        2, // Replace with actual completed courses count
                    completedQuizzes:
                        1, // Replace with actual completed quizzes count
                  ),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Latest Topics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  TopicTile(
                    topic: "Alphabet Test",
                    onTapped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Alphabet_Test()));
                    },
                  ),
                  TopicTile(
                    topic: "Syllogism",
                    onTapped: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Syllogism()));
                    },
                  ),
                  TopicTile(
                    topic: "Odd One Out",
                    onTapped: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        "Coming Soon....",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          floatingActionButton: CalculatorButton(context),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
