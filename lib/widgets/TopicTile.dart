import 'package:asaan/screens/subtopics/Alphabet%20Test.dart';
import 'package:asaan/screens/subtopics/Syllogism.dart';
import 'package:flutter/material.dart';

import '../screens/subjects/Reasoning.dart';

class SubjectTile extends StatelessWidget {
  final String topic, subtopics;
  late final Widget next;
  SubjectTile({
    required this.topic,
    this.subtopics = "",
  });

  @override
  Widget build(BuildContext context) {
    switch (topic) {
      case "Reasoning":
        next = Reasoning();
      // case "Aptitude":
      // next= Aptitude();
      case "Alphabet Test":
        next = Alphabet_Test();
      case "Syllogism":
        next = Syllogism();
    }
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, top: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => next));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(247, 164, 158, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: GridTile(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/$topic.jpg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Center(
                    child: Text(
                      topic,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Center(
                      child: Text(
                        subtopics,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
