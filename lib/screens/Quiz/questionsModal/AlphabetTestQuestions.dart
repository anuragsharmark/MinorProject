class AlphabetTestQuestions {
  final String questionText;
  final List<AlphabetTestQuizAnswers> answerList;

  AlphabetTestQuestions(this.questionText, this.answerList);
}

class AlphabetTestQuizAnswers {
  final String answerText;
  final bool isCorrect;

  AlphabetTestQuizAnswers(this.answerText, this.isCorrect);
}

List<AlphabetTestQuestions> getAlphabetTestQuestionList() {
  List<AlphabetTestQuestions> list = [];

  list.add(AlphabetTestQuestions(
      'Which letter comes after "B" in the English alphabet?', [
    AlphabetTestQuizAnswers('C', true),
    AlphabetTestQuizAnswers('A', false),
    AlphabetTestQuizAnswers('D', false),
    AlphabetTestQuizAnswers('E', false),
  ]));

  list.add(AlphabetTestQuestions('What is the 6th letter of the alphabet?', [
    AlphabetTestQuizAnswers('D', false),
    AlphabetTestQuizAnswers('E', true),
    AlphabetTestQuizAnswers('F', false),
    AlphabetTestQuizAnswers('C', false),
  ]));

  list.add(AlphabetTestQuestions('Which letter is a vowel?', [
    AlphabetTestQuizAnswers('B', false),
    AlphabetTestQuizAnswers('A', true),
    AlphabetTestQuizAnswers('C', false),
    AlphabetTestQuizAnswers('D', false),
  ]));
  list.add(AlphabetTestQuestions(
      'Which letter comes before "P" in the English alphabet?', [
    AlphabetTestQuizAnswers('O', true),
    AlphabetTestQuizAnswers('N', false),
    AlphabetTestQuizAnswers('Q', false),
    AlphabetTestQuizAnswers('R', false),
  ]));

  list.add(AlphabetTestQuestions('What is the 11th letter of the alphabet?', [
    AlphabetTestQuizAnswers('K', false),
    AlphabetTestQuizAnswers('L', false),
    AlphabetTestQuizAnswers('J', false),
    AlphabetTestQuizAnswers('K', true),
  ]));

  list.add(AlphabetTestQuestions('What is the last letter of the alphabet?', [
    AlphabetTestQuizAnswers('X', false),
    AlphabetTestQuizAnswers('Y', true),
    AlphabetTestQuizAnswers('Z', true),
    AlphabetTestQuizAnswers('W', false),
  ]));

  list.add(AlphabetTestQuestions('Which two letters are vowels?', [
    AlphabetTestQuizAnswers('B, C', false),
    AlphabetTestQuizAnswers('A, E', true),
    AlphabetTestQuizAnswers('D, F', false),
    AlphabetTestQuizAnswers('G, H', false),
  ]));
  return list;
}
