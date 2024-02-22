import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Quiz/questions/Alphabet_Test_Quiz.dart';

class Alphabet_Test extends StatelessWidget {
  const Alphabet_Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        title: Text(
          'Alphabet Test',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfff7c6c2),
      ),
      backgroundColor: Color.fromRGBO(252, 238, 237, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSectionHeading("BASICS"),
              _buildParagraph("Here is a list of Basics of Syllogism"),
              _buildSectionHeading('1. Number Series (Group Based)'),
              _buildParagraph(
                'The first type in the Number Series in which a group of numbers will be given and based on that multiple operations need to be performed on them such as Addition, Multiplication, Interchanging of digits and so on.',
              ),
              _buildExample(
                'Example: If 1 is added to the 2nd digit of each number and then the position of the first and last digits are interchanged, which of the following will be the highest number?',
                'Given Series: 567 289 376 189 852\n\n'
                    'By adding 1 with the 2nd digit we get: 577 299 386 199 862\n\n'
                    'Now if we interchange the first and last digits then we get: 775 992 683 991 268\n\n'
                    'Therefore, 992 is the highest number which came from 289',
              ),
              _buildSectionHeading('2. Alphabet Series (Group Based)'),
              _buildParagraph(
                'In this, an alphabet series will be given and based on that multiple operations need to be performed on them such as arrange in dictionary or reverse dictionary order, interchanging of alphabets and so on.',
              ),
              _buildExample(
                'Example: If the position of the first and last alphabets of each word are interchanged and arranged in dictionary order then, which word comes last?',
                'Given Series: DEW BIG RAW FAN DOG\n\n'
                    'On interchanging the first and last alphabet we get the series as\n\n'
                    'WED GIB WAR NAF GOD\n\n'
                    'Now if we arrange the series in dictionary order then we get the series like this\n\n'
                    'GIB GOD NAF WAR WED',
              ),
              _buildSectionHeading('3. Mixed Series'),
              _buildParagraph(
                'Mixed Series involves the arrangement of numbers, letters, and symbols in a certain way. Various types of Mixed Series are given below.',
              ),
              _buildSubheading('(a) Simple Series'),
              _buildExample(
                'Example: What element in 6th to the left of the 12th element from the left end?',
                'If we carefully observe the given series then the 12th position from the left end is T. (A B 6 P 7 2 Z @ X ? V T W # & N S L %)\n\n'
                    'Whereas, the 6th position to the left of the 12th element is 2. (A B 6 P 7 2 Z @ X ? V T W # & N S L %)\n\n'
                    'Therefore, the answer will be 2 is the 6th to the left of the 12th element from the left end.',
              ),
              _buildSubheading('(b) Operation Based Series'),
              _buildParagraph(
                'In this type of mixed series candidates need to apply a few operations asked in the question to get the desired result. Examples regarding this type of mixed series are given later in this article.',
              ),
              _buildSectionHeading('4. Creating New Words'),
              _buildParagraph(
                'In this type of Alphabet Test reasoning section candidates will be given a few letters from which they need to find if the given letters are making a meaningful word or not. If meaningful words are present or can be formed using the given letters then questions such as how many meaningful words can be formed at any position can also be asked.',
              ),
              _buildExample(
                'Example: How many meaningful English words can be formed with the help of letters T, A, E such that no letter is missed, and no letter is repeated.',
                'T A E, we can clearly see that various words can be formed by using these 3 letters such as TEA, EAT, and ATE. So the answer is 3 meaningful words can be formed.',
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlphabetTestQuiz()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff7c6c2),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    'Go to Quiz',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              // buildPdfTile("Alphabet Test Notes",
              //     "https://drive.google.com/u/0/uc?id=1eM3pDQ48Qwx-azjDDutP6EawV8XEpOGZ&export=download"),
            ],
          ),
        ),
      ),
    ));
  }

  // Future<void> downloadAndOpenPdf(fileName, fileUrl) async {
  //   final response = await http.get(Uri.parse(fileUrl));
  //   final bytes = response.bodyBytes;
  //
  //   final directory = await getApplicationDocumentsDirectory();
  //   final file = File('${directory.path}/$fileName');
  //   await file.writeAsBytes(Uint8List.fromList(bytes));
  //
  //   // Open the PDF file after downloading
  //   final pdfPath = file.path;
  //   try {
  //     await launch(pdfPath);
  //   } catch (e) {
  //     print('Error launching PDF: $e');
  //   }
  // }
  //
  // ListTile buildPdfTile(fileName, fileUrl) {
  //   return ListTile(
  //     title: Text(fileName),
  //     trailing: ElevatedButton(
  //       onPressed: () {
  //         downloadAndOpenPdf(fileName, fileUrl);
  //       },
  //       child: Text('Download'),
  //     ),
  //   );
  // }

  Widget _buildSectionHeading(String heading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        heading,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSubheading(String subheading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        subheading,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }

  Widget _buildExample(String question, String solution) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            solution,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
