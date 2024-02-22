import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'game.dart';
import 'japaneseScreen.dart';
import 'music.dart';

class MindRelaxing extends StatefulWidget {
  const MindRelaxing({super.key});

  @override
  State<MindRelaxing> createState() => _MindRelaxingState();
}

class _MindRelaxingState extends State<MindRelaxing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 238, 237, 1),
      appBar: AppBar(
          elevation: 0, backgroundColor: Color.fromRGBO(247, 164, 158, 1)),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                color: Color.fromRGBO(247, 164, 158, 1),
                child: Center(
                  child: Text(
                    'Let\'s',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 64,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                color: Color.fromRGBO(247, 164, 158, 1),
                child: Center(
                  child: Text(
                    'Relax',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 64,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                color: Color.fromRGBO(247, 164, 158, 1),
                child: Center(
                  child: Text(
                    'Your Mind',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 64,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                color: Color.fromRGBO(247, 164, 158, 1),
                child: Center(
                  child: Text(
                    'n Chill...',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 64,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              scrollPhysics: BouncingScrollPhysics(),
              autoPlay: true,
              viewportFraction: 1,
              aspectRatio: 3,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
              child: Container(
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => japaneseScreen(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(247, 164, 158, 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/technique.png'),
                          Text(
                            'Japanese Mind relaxing technique',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => game(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(247, 164, 158, 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/tictactoe.png',
                            height: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Tic Tac Toe ',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => music(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(247, 164, 158, 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/Music.png',
                            height: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Peacefull Music ',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Center(
                        child: Text('Coming soon...',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w600))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(247, 164, 158, 1),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
