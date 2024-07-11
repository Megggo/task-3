import 'package:flutter/material.dart';


class Second extends StatefulWidget {
  const Second({super.key});

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (!RegExp(r'^[A-Z]').hasMatch(value)) {
      return 'Password must start with a capital letter';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    } else if (!RegExp(r'\d').hasMatch(value)) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff282C34),
          title: const Text(
            'Second Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(150, 40, 44, 52), const Color(0xff282C34)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Username',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: _validateUsername,
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: _validatePassword,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text("New To Quiz App?"),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 116, 154),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 0.5),
                    Row(
                      children: [
                        Text("Couldn't Log in?"),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                              color: Color.fromARGB(255, 27, 116, 154),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color.fromARGB(255, 27, 116, 154),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        shadowColor: Colors.black,
                        elevation: 5,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, '/quiz');
                        }
                      },
                      child: const Text('Log in'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}