import 'package:firstprogramme/screens/score.dart';
import 'package:flutter/material.dart';
import 'package:firstprogramme/screens/score.dart';

class Ask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions Page'),
        backgroundColor: Color.fromARGB(255, 207, 210, 216),
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.all(20.0), // Added padding for content spacing
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
            children: [
              Text(
                'who won the world cup i 2018?', // Example text
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Score()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Button border radius
                  ),
                ),
                child: Text(
                  'egypt',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Score()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Button border radius
                  ),
                ),
                child: Text(
                  'france',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20), // Added space between text and button

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Score()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Button border radius
                  ),
                ),
                child: Text(
                  'brazil',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
