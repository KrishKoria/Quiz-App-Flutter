class QuestionModel {
  const QuestionModel({
    required this.question,
    required this.answer,
  });

  final String question;
  final List<String> answer;

  List<String> getshuffledAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
