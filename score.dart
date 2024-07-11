import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Score !'),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "congratulation ahmed, you have finished the quiz, your score is ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              "10/15",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
