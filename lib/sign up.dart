import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:vakpati/Otp_scrren.dart';
import 'package:vakpati/authservices/auth_service.dart';

class Sign_Up_scren extends StatefulWidget {
  const Sign_Up_scren({super.key});

  @override
  State<Sign_Up_scren> createState() => _Sign_Up_screnState();
}

class _Sign_Up_screnState extends State<Sign_Up_scren> {
  final _auth = AuthService();
  final _email = TextEditingController();
  final _number = TextEditingController();
  final _name = TextEditingController();
  final _password = TextEditingController();
  final _conformpassword = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
    _number.dispose();
    _conformpassword.dispose();
    _name.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 280,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset("assets/images/style.png"),
              ),
              SizedBox(height: 50),
              Text(
                "Customer Sign up",
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: Column(
                  children: [
                    TextField(
                      controller: _name,
                      decoration: InputDecoration(
                        label: Text(
                          "Name",
                          style: TextStyle(
                              color: Color.fromARGB(255, 200, 194, 194)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _number,
                      decoration: InputDecoration(
                        label: Text(
                          "Mobile No.",
                          style: TextStyle(
                              color: Color.fromARGB(255, 200, 194, 194)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        label: Text(
                          "Email Id / Mobile No",
                          style: TextStyle(
                              color: Color.fromARGB(255, 200, 194, 194)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(
                          "Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 200, 194, 194)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _conformpassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text(
                          "Conform password",
                          style: TextStyle(color: Colors.black26),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: 216,
                child: OutlinedButton(
                  onPressed: _signup,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 183, 138, 45),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Color.fromARGB(255, 254, 249, 245),
                        fontSize: 23,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Are you running customer click here",
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  _signup() async {
    try {
      final user = await _auth.createUserWithEmailAndPassword(
        _email.text,
        _password.text,
      );
      if (user != null) {
        log("Created successfully");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => OtpScreen()),
        );
      }
    } catch (e) {
      log("Signup failed: \$e");
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Failed to sign up: \$e"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    }
  }
}
