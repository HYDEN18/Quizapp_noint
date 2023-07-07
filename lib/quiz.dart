import 'package:apps_quiz/resultScreen.dart';
import 'package:flutter/material.dart';
import 'package:apps_quiz/start_screen.dart';
import 'package:apps_quiz/question_sccreen.dart';
import 'package:apps_quiz/data/questions.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
 List<String> selectedanswers=[];
Widget? activescreen;
int correct=0;

@override
  void initState() {
    activescreen=StartScreen(switchscreen);
    super.initState();
  }



void chooseanswer(String answer){

  selectedanswers.add(answer);
  
   if (selectedanswers.length == questions.length){
    for (var i = 0; i <selectedanswers.length ; i++) {
      if(selectedanswers[i]==questions[i].answers[0]){
        correct++;
      }
  
}
    setState(() {
      
      activescreen= ResultScreen(correct,selectedanswers.length);
      selectedanswers =[];
    });

   }
}
void switchscreen()
  {setState(() {
    activescreen= QuestionScreen(chooseanswer);
  });
    
  }


  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 237, 235, 239),
                Color.fromARGB(255, 239, 239, 243),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child:activescreen,
        ),
      ),
    );
  }
}
