import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;

  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset('assets/images/quiz-logo.png',
        width: 300,
        color: const Color.fromARGB(133, 255, 255, 255),
        ),
        SizedBox(height: 80),
        Text("Learn Flutter the fun way!",
        style:
        GoogleFonts.lato(color:Colors.white,
        fontSize: 24
        )
        ),
        SizedBox(height:30),
        OutlinedButton.icon(onPressed: startQuiz,
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        icon: const Icon(Icons.arrow_right_alt_rounded, size: 30,),
        label: Text('Start Quiz', style: TextStyle(fontSize: 20),
        )
        )
      ]
      )
    );
  }
}