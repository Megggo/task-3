// quiz.dart
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
        backgroundColor: const Color(0xff282C34),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ask');
              },
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Form 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ask');
              },
              child: Container(
                color: Colors.orange,
                child: Center(
                  child: Text(
                    'Form 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ask');
              },
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Form 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
