import 'package:flutter/material.dart';

class japaneseScreen extends StatelessWidget {
  const japaneseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(252, 238, 237, 1),
        appBar: AppBar(
          title: Text(
            'Japanese Mind relaxing technique',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
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
                'assets/images/techniquelarge.png',
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Each finger of your hand represents a different feeling or attitude',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    Image.asset('assets/images/hand.png'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              child: Text(
                'Now starts following these simple steps :-',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              height: 40,
            ),
            SizedBox(
              child: Text(
                'Step 1',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 150,
                child: Row(
                  children: [
                    Image.asset('assets/images/Thumpress.png'),
                    Expanded(
                      child: Text(
                        'Grasp the finger with the opposite hand wrapping all the fingers and thumb around it',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.5),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Text('Now hold each finger for one to two minutes'),
              height: 20,
            ),
            Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/index.png'),
                  Image.asset('assets/images/middle.png'),
                ],
              ),
            ),
            Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/fourth.png'),
                  Image.asset('assets/images/little.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Text(
                'Step 2',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 140,
                child: Row(
                  children: [
                    Image.asset('assets/images/palm.png'),
                    Expanded(
                      child: Text(
                        'Slightly press in the center of the palm with the thumb of the opposite hand and hold it for alleast one minute',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.5),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/sentence.png',
              height: 36,
            ),
            SizedBox(
              height: 64,
            ),
            SizedBox(
              child: Text(
                'PRACTICE THESE TECHNIQUES EVERYDAY TO STAY CALM',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 61, 44, 38),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset('assets/images/yoga.png'),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              child: Text(
                'OTHER ACTIVITIES :-',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 61, 44, 38),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset('assets/images/other.png'),
          ]),
        ));
  }
}
