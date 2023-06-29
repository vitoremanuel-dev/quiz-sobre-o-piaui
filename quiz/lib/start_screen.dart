import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/piaui.png',
            width: 300,
          ),
          const SizedBox(height: 30),
          const Text(
            'Quiz sobre o Piauí!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Começar Quiz'),
          ),
        ],
      ),
    );
  }
}
