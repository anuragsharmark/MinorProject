import 'package:flutter/material.dart';

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

class _gameState extends State<game> {
  List<String> XOvalues = ['', '', '', '', '', '', '', '', ''];
  List<int> WinIndex = [];
  int filled = 0;
  bool IsCross = true;
  bool IsWinner = false;
  String WinnerName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 238, 237, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 164, 158, 1),
        foregroundColor: Colors.black,
        title: Text(
          'Tic Tac Toe',
          style: TextStyle(
              fontFamily: 'Myfont', fontSize: 32, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Player\'s Turn',
                        style: TextStyle(
                            fontFamily: 'Myfont',
                            fontSize: 40,
                            color: Colors.red),
                      ),
                      Text(
                        IsWinner || (filled == 9 && !IsWinner)
                            ? ''
                            : IsCross
                                ? 'X'
                                : 'O',
                        style: TextStyle(
                            fontFamily: 'Myfont',
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  child: GridView.builder(
                    itemCount: 9,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          !IsWinner ? click(index) : null;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: const Color.fromRGBO(252, 238, 237, 1),
                                width: 5),
                            color: WinIndex.contains(index)
                                ? Colors.blue
                                : Color.fromRGBO(247, 164, 158, 1),
                          ),
                          child: Center(
                              child: Text(
                            XOvalues[index],
                            style: TextStyle(
                                fontSize: 50,
                                fontFamily: 'Myfont',
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent),
                          )),
                        ),
                      );
                    },
                  ),
                )),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        IsWinner
                            ? '${WinnerName} is Winner'
                            : filled == 9 && !IsWinner
                                ? 'It\'s a tie !'
                                : '',
                        style: TextStyle(fontFamily: 'Myfont', fontSize: 40),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IsWinner || (filled == 9 && !IsWinner)
                        ? ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(247, 164, 158, 1),
                            )),
                            onPressed: () {
                              restart();
                            },
                            child: Text(
                              'Play Again!',
                              style: TextStyle(
                                  fontFamily: 'Myfont',
                                  fontSize: 24,
                                  color: Colors.black),
                            ))
                        : Text(
                            'Start and Enjoy your game :)',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Myfont'),
                          )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void winner() {
    if (XOvalues[0] == XOvalues[1] &&
        XOvalues[0] == XOvalues[2] &&
        XOvalues[0] != '') {
      IsWinner = true;
      WinIndex.addAll([0, 1, 2]);
      WinnerName = XOvalues[0];
    } else if (XOvalues[3] == XOvalues[4] &&
        XOvalues[3] == XOvalues[5] &&
        XOvalues[3] != '') {
      IsWinner = true;
      WinIndex.addAll([3, 4, 5]);
      WinnerName = XOvalues[3];
    } else if (XOvalues[6] == XOvalues[7] &&
        XOvalues[6] == XOvalues[8] &&
        XOvalues[6] != '') {
      IsWinner = true;
      WinIndex.addAll([6, 7, 8]);
      WinnerName = XOvalues[6];
    } else if (XOvalues[0] == XOvalues[3] &&
        XOvalues[0] == XOvalues[6] &&
        XOvalues[0] != '') {
      IsWinner = true;
      WinIndex.addAll([0, 3, 6]);
      WinnerName = XOvalues[0];
    } else if (XOvalues[1] == XOvalues[4] &&
        XOvalues[1] == XOvalues[7] &&
        XOvalues[1] != '') {
      IsWinner = true;
      WinIndex.addAll([1, 4, 7]);
      WinnerName = XOvalues[1];
    } else if (XOvalues[2] == XOvalues[5] &&
        XOvalues[2] == XOvalues[8] &&
        XOvalues[2] != '') {
      IsWinner = true;
      WinIndex.addAll([2, 5, 8]);
      WinnerName = XOvalues[2];
    } else if (XOvalues[0] == XOvalues[4] &&
        XOvalues[0] == XOvalues[8] &&
        XOvalues[0] != '') {
      IsWinner = true;
      WinIndex.addAll([0, 4, 8]);
      WinnerName = XOvalues[0];
    } else if (XOvalues[2] == XOvalues[4] &&
        XOvalues[2] == XOvalues[6] &&
        XOvalues[2] != '') {
      IsWinner = true;
      WinIndex.addAll([2, 4, 6]);
      WinnerName = XOvalues[2];
    }
  }

  void restart() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        XOvalues[i] = '';
      }
      IsWinner = false;
      filled = 0;
      WinIndex.clear();
    });
  }

  void click(int index) {
    setState(() {
      if (IsCross && XOvalues[index] == '') {
        XOvalues[index] = 'X';
      } else if (!IsCross && XOvalues[index] == '') {
        XOvalues[index] = 'O';
      }
      winner();
      filled++;
      IsCross = !IsCross;
    });
  }
}
