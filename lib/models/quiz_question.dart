class QuizQuestion{
  QuizQuestion(this.question,this.answers);

  final String question;
  final List<String> answers;

  List<String> shufflefn(){
  final newlist =List.of(answers);

newlist.shuffle();
return newlist;
  }

}