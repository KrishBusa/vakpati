import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                height: 250,
                width: 250,
                child: Image.asset("assets/images/style.png"),
              ),
               SizedBox(height: 50),
               Text(
                "Enter your one time password",
                style: TextStyle(fontSize: 20),
              ),
               SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration:  InputDecoration(
                          ),
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration:  InputDecoration(
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
               SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: 216,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor:  Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                  child:  Text(
                    "SUBMIT",
                    style: TextStyle(
                      color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
               Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
