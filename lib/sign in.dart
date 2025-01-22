import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:vakpati/Otp_scrren.dart';
import 'package:vakpati/home_screen.dart';
import 'package:vakpati/sign%20up.dart';
import 'authservices/auth_service.dart';


class Sign_in_screen extends StatefulWidget {
  const Sign_in_screen({super.key});

  @override
  State<Sign_in_screen> createState() => _Sign_in_screenState();
}

class _Sign_in_screenState extends State<Sign_in_screen> {
  final _auth = AuthService();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: LayoutBuilder(
        builder:  (context, constraints){
         return SingleChildScrollView(
           child: ConstrainedBox(
             constraints: BoxConstraints(
               minHeight: constraints.maxHeight,
             ),
            child: IntrinsicHeight(
              child: Center(
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
                      SizedBox(height: 10,),
                      Container(
                        height: 200,
                        width:300,
                        child: Column(
                          children: [
                            TextField(
                              controller: _email,
                              decoration: InputDecoration(
                                label: Text("Email Id / Mobile No",

                                  style: TextStyle(
                                    color: Color.fromARGB(255, 200, 194, 194),
                                ),
                                )
                              ),
                            ),
                            SizedBox(height: 20,),
                            TextField(
                              controller: _password,
                              obscureText: true,
                              decoration: InputDecoration(
                                  label: Text("Password",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194)),)
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 60,
                        width: 216,
                        child: OutlinedButton(
                          onPressed: _signin,
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255,183,138,45),
                          ),
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color:Color.fromARGB(255,254,249,245),
                                fontSize: 23,
                                fontWeight: FontWeight.w400 ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10),
                      Divider(),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_Up_scren()));
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'You are not registered use click ',
                            style: TextStyle(color: Colors.black54),
                            children: [
                              TextSpan(
                                text: 'here',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )


                    ],
                  ),
                ),
              ),
            ),
                   ),
         );
        }
      ),

    );
  }
  _signin() async {
    if (_email.text.isEmpty || _password.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Email and password cannot be empty."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
      return;
    }

    try {
      final user = await _auth.LoginUserWithEmailAndPassword(
        _email.text,
        _password.text,
      );
      if (user != null) {
        log("Login successful");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Home_scren()),
        );
      }
    } catch (e) {
      log("Login failed: $e");
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Error"),
          content: Text("Failed to log in: $e"),
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
