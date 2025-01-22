import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vakpati/Otp_scrren.dart';
import 'package:vakpati/home_screen.dart';
import 'package:vakpati/sign%20in.dart';
import 'package:vakpati/authservices/auth_service.dart';

class Choose_screen extends StatefulWidget {
  const Choose_screen({super.key});

  @override
  State<Choose_screen> createState() => _Choose_screenState();
}

class _Choose_screenState extends State<Choose_screen> {
  final AuthService _authService = AuthService();

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Home_scren()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SizedBox(
          width: 280,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 280,
                width: 280,
                child: Image.asset("assets/images/style.png"),
              ),
              const SizedBox(height: 280),
              SizedBox(
                height: 65,
                width: 216,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Sign_in_screen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: const Color.fromARGB(255, 183, 138, 45),
                    ),
                    child: const Center(
                      child: Text(
                        "ARE YOU SELLER",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 254, 249, 245),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                width: 216,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Sign_in_screen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: const Color.fromARGB(255, 240, 242, 242),
                    ),
                    child: const Center(
                      child: Text(
                        "ARE YOU CUSTOMER",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 159, 121, 44),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
