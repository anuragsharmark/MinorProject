import 'package:flutter/material.dart';

class TopicTile extends StatelessWidget {
  String topic, image;
  void Function() onTapped;
  TopicTile({required this.topic, this.image = "", required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(),
          elevation: 5,
          child: ListTile(
            tileColor: Colors.white,
            leading: Padding(
              padding: EdgeInsets.only(top: 8),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/$topic.jpg"),
              ),
            ),
            title: Padding(
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
            trailing: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
