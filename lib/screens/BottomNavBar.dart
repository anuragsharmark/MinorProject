import 'package:asaan/screens/Calculator.dart';
import 'package:asaan/screens/Quiz/questions/Alphabet_Test_Quiz.dart';
import 'package:asaan/screens/Quiz/questions/Syllogism_Quiz.dart';

import 'package:flutter/material.dart';

import 'Home.dart';
import 'Learn.dart';
import 'MindRelaxing/MindRelaxingScreen.dart';
import 'Notes.dart';
import 'Profile.dart';
import 'Quiz.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xfff7c6c2),
          ),
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              selectedFontSize: 16,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                  _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book_outlined),
                  label: "Learn",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.quiz_outlined),
                  label: "Quiz",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.slideshow_outlined),
                  label: "Relax",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_outlined),
                  label: "Profile",
                ),
              ],
            ),
            body: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(
                  () {
                    _selectedIndex = index;
                  },
                );
              },
              children: [
                Home(),
                Learn(),
                Quiz(),
                MindRelaxing(),
                Profile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
