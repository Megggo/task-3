// main.dart
import 'package:firstprogramme/screens/ask.dart';
import 'package:firstprogramme/screens/login.dart';
import 'package:firstprogramme/screens/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const First(),
      routes: {
        '/second': (context) => const Second(),
        '/quiz': (context) => Quiz(),
        '/ask': (context) => Ask(), // Define the route for ask screen
      },
    );
  }
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xff282C34),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'images/WhatsApp Image 2024-07-10 at 15.49.06_7698c2d6.jpg',
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff26235C), // background color
                foregroundColor: Colors.white, // text color
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                shadowColor: Colors.black, // shadow color
                elevation: 5, // elevation (shadow effect)
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}