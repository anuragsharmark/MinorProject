import 'package:flutter/material.dart';

class Syllogism extends StatelessWidget {
  const Syllogism({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 238, 237, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        backgroundColor: Color(0xfff7c6c2),
        title: Text(
          'Syllogism',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildSectionHeading('1. Basic Syllogism'),
              _buildParagraph(
                'In these types of syllogism reasoning questions, the conclusions must be 100% true. Conclusions which are 99% true will be considered as False.',
              ),
              _buildSectionHeading('2. Either – or Case'),
              _buildParagraph(
                'In these types of syllogism reasoning questions, when the conclusions are not 100% true but the two given conclusions are 50% true then the either-or case will be formed.',
              ),
              _buildSectionHeading('3. Coded Syllogism'),
              _buildParagraph(
                'In these types of syllogism reasoning questions, statements and conclusions are given in coded form. Candidates need to decode the statements and conclusions to find the answer.',
              ),
              _buildSectionHeading('4. Sequential Syllogism'),
              _buildParagraph(
                'In these types of syllogism reasoning questions, statements are given followed by the options. Candidates need to choose the set in which the third statement can be logically deduced from the first two statements.',
              ),
              _buildSectionHeading(
                  'How to Solve Syllogism Questions in Reasoning– Tips and Tricks'),
              _buildParagraph(
                'Candidates can find various tips and syllogism logical reasoning tricks from below for solving the questions in this section.',
              ),
              _buildTip('Tip # 1:',
                  'If a definite conclusion is false in any of the possible diagrams, then the definite conclusion is considered to be false.'),
              _buildTip('Tip # 2:',
                  'If all statements are positive, then all negative conclusions will be false in definite cases and vice versa.'),
              _buildTip('Tip # 3:',
                  'Subject and Predicate can interchange for the complementary pair “Some + No”'),
              _buildTip('Tip # 4:',
                  'In a syllogism reasoning problem, if two conclusions have the same subject & predicate and consist of a complementary pair but only one of the conclusions is true, then it will not form an either-or case. Do not consider “Some + Some” as a complementary pair for Either or case.'),
              _buildTip('Tip # 5:',
                  'If a possible conclusion is true in any one of the possible diagrams, then the possibility is considered to be true.'),
              _buildTip('Tip # 6:',
                  '“Only a few” means both conclusions are definitely true. Therefore, the conclusion, some A are B and some A are not B will be definitely true.'),
              _buildTip('Tip # 7:',
                  'In a syllogism reasoning problem, complementary pairs for Either or case are, “Some + N” and “All + Some not”'),
              _buildTip('Tip # 8:',
                  'Both conclusions should consist of one of the above complementary pairs. Subject and Predicate of the two conclusions should be the same and they cannot interchange. The answer of both the conclusions should be can’t be said.'),
              _buildTip('Tip # 9:',
                  'Candidates need to keep the following things in mind while solving the syllogism based questions.'),
              _buildSectionHeading("Basic Table To Understand Concept"),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Statement')),
                      DataColumn(label: Text('Definite Conclusion')),
                      DataColumn(label: Text('Possible Conclusion')),
                    ],
                    rows: [
                      _buildDataRow(
                          'All A are B', 'All A are B', 'Some A are B'),
                      _buildDataRow(
                          'Some A are B', 'Some B are A', 'All B are A'),
                      _buildDataRow('Some A are not B', 'Some A are not B',
                          'Some B are not A'),
                      _buildDataRow('No A is B', 'No A is B', 'No B is A'),
                    ],
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add navigation logic to go to the quiz screen
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
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
            ],
          ),
        ),
      ),
    );
  }

  DataRow _buildDataRow(
      String statement, String definiteConclusion, String possibleConclusion) {
    return DataRow(
      cells: [
        DataCell(Text(statement)),
        DataCell(Text(definiteConclusion)),
        DataCell(Text(possibleConclusion)),
      ],
    );
  }
}

Widget _buildSectionHeading(String heading) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      heading,
      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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

Widget _buildTip(String title, String tip) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.0),
        Text(
          tip,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    ),
  );
}
