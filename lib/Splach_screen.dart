import 'package:flutter/material.dart';

class Splach_Screen extends StatefulWidget {
  const Splach_Screen({super.key});

  @override
  State<Splach_Screen> createState() => _Splach_ScreenState();
}

class _Splach_ScreenState extends State<Splach_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/hair.png"),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/style.png"),
            ),
          ],
        ),
      ),
    );
  }
}
