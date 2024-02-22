import 'package:flutter/material.dart';

import '../../widgets/TopicTile.dart';

class Reasoning extends StatelessWidget {
  Reasoning();
  List<String> topics = ["Alphabet Test", "Syllogism", "Odd One Out"];
  @override
  Widget build(BuildContext context) {
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
                    topic: topics[index],
                    subtopics: topics[index],
                  );
                },
                itemCount: topics.length,
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
