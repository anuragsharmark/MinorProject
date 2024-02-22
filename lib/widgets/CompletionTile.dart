import 'package:flutter/material.dart';

class CompletionTile extends StatelessWidget {
  final int completedCourses;
  final int completedQuizzes;

  CompletionTile({
    required this.completedCourses,
    required this.completedQuizzes,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Achievements',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCompletionStat('Courses Completed', completedCourses),
                _buildCompletionStat('Quizzes Completed', completedQuizzes),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompletionStat(String label, int count) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.0),
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
