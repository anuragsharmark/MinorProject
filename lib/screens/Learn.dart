import 'package:asaan/widgets/TopicTile.dart';
import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    List<MapEntry<String, String>> Subjects = {
      "Reasoning": "Syllogism, Calendar, Odd One Out",
      "Aptitude": "Time and Work, Pipes and Cisterns, Figures",
      "English": "Comprehension, vocabulary, Basic English Grammar",
      "Computer Science":
          "DBMS, Computer Networks, Data Structures and Algorithms",
    }.entries.toList();
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(252, 238, 237, 1),
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 12),
                child: Text(
                  "Explore Topics",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SubjectTile(
                    topic: Subjects[index].key,
                    subtopics: Subjects[index].value,
                  );
                },
                itemCount: Subjects.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 8),
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
            ]),
          ),
        ),
      ),
    );
  }
}
