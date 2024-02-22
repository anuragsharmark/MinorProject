class SyllogismQuestions {
  final String questionText;
  final List<SyllogismAnswers> answerList;

  SyllogismQuestions(this.questionText, this.answerList);
}

class SyllogismAnswers {
  final String answerText;
  final bool isCorrect;

  SyllogismAnswers(this.answerText, this.isCorrect);
}

List<SyllogismQuestions> getSyllogismList() {
  List<SyllogismQuestions> list = [];

  list.add(SyllogismQuestions(
      'All cats are mammals. Some mammals are animals. Therefore,', [
    SyllogismAnswers('All cats are animals.', true),
    SyllogismAnswers('All animals are cats.', false),
    SyllogismAnswers('Some animals are not cats.', false),
    SyllogismAnswers('All mammals are cats.', false),
  ]));

  list.add(SyllogismQuestions(
      'No trees are animals. Some plants are trees. Therefore,', [
    SyllogismAnswers('Some plants are not animals.', true),
    SyllogismAnswers('No plants are animals.', false),
    SyllogismAnswers('Some trees are not plants.', false),
    SyllogismAnswers('All plants are animals.', false),
  ]));

  list.add(SyllogismQuestions(
      'All smartphones are devices. No devices are books. Therefore,', [
    SyllogismAnswers('Some smartphones are not books.', true),
    SyllogismAnswers('No smartphones are books.', true),
    SyllogismAnswers('Some devices are not smartphones.', false),
    SyllogismAnswers('All books are devices.', false),
  ]));

  list.add(SyllogismQuestions(
      'Some roses are red flowers. All red flowers are beautiful. Therefore,', [
    SyllogismAnswers('Some roses are beautiful.', true),
    SyllogismAnswers('All beautiful things are roses.', false),
    SyllogismAnswers('Some beautiful things are not roses.', false),
    SyllogismAnswers('No roses are beautiful.', false),
  ]));

  list.add(SyllogismQuestions(
      'All musicians are creative. Some creative people are poets. Therefore,',
      [
        SyllogismAnswers('All poets are musicians.', false),
        SyllogismAnswers('Some musicians are not poets.', true),
        SyllogismAnswers('Some poets are creative.', true),
        SyllogismAnswers('No creative people are musicians.', false),
      ]));
  return list;
}
