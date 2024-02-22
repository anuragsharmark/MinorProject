import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';

class Profile extends StatelessWidget {
  static const String id = "/profile";
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(252, 238, 237, 1),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color.fromRGBO(247, 164, 158, 1),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(247, 164, 158, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage("assets/images/coder.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Manish',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Manish@hi.com',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              infoList(
                  firstName: 'Name',
                  firstHintName: 'Ex: Anurag',
                  secondName: 'Mobile no.',
                  secondHintName: 'Ex: 45263xxxx'),
              const SizedBox(
                height: 40,
              ),
              infoList(
                  firstName: 'Address',
                  firstHintName: 'Ex: D-12/4, delhi',
                  secondName: 'Email Address',
                  secondHintName: 'Ex: Name@gmail.com'),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: (MediaQuery.of(context).size.width) - 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Ex: Hii, I am a learner...',
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Overall',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Progress',
                                style: TextStyle(
                                    fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          new CircularPercentIndicator(
                            radius: 90.0,
                            lineWidth: 10.0,
                            percent: 0.8,
                            center: Text(
                              '77%',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 30),
                            ),
                            backgroundColor: Colors.grey,
                            progressColor: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class infoList extends StatelessWidget {
  const infoList({
    super.key,
    required this.firstName,
    required this.firstHintName,
    required this.secondName,
    required this.secondHintName,
  });

  final String firstName;
  final String firstHintName;
  final String secondName;
  final String secondHintName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width / 2) - 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: firstHintName,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: (MediaQuery.of(context).size.width / 2) - 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  secondName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: secondHintName,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
