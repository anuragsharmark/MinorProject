import 'package:flutter/material.dart';

class music extends StatelessWidget {
  music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(252, 238, 237, 1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(247, 164, 158, 1),
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(247, 164, 158, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                )),
            height: 210,
            width: double.infinity,
            child: Image.asset(
              'assets/images/Music.png',
            ),
          ),
          SizedBox(
            height: 26,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Center(
              child: Text('Coming soon...',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 26,
                      fontWeight: FontWeight.w600)),
            ),
          )
        ])));
  }
}
