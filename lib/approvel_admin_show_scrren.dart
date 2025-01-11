import 'package:flutter/material.dart';
import 'package:vakpati/home_screen.dart';

class Approval_admin_Show_Screen extends StatefulWidget {
  const Approval_admin_Show_Screen({super.key});

  @override
  State<Approval_admin_Show_Screen> createState() => _Approval_admin_Show_ScreenState();
}

class _Approval_admin_Show_ScreenState extends State<Approval_admin_Show_Screen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home_scren()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              //color: Colors.green,
              child: Image.asset("assets/images/Screenshot1.png"),
            ),
            SizedBox(height: 60,),
            Text("Awaited",style: TextStyle(fontSize: 36,color: Colors.deepOrange,fontWeight: FontWeight.w500),),
            Text("for your approval by admin",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}
