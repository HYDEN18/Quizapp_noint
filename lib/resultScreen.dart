import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget{
   ResultScreen(this.X,this.Y,{super.key});

  int X;
  int Y;

    @override 
    Widget build(context){
      return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text("You answered $X out of $Y questions correctly!"),
              const SizedBox(height:30),

              
            ],
          ),
        ),

      );
    }

}

