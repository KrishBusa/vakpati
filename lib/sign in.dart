import 'package:flutter/material.dart';
import 'package:vakpati/sign%20up.dart';

class Sign_in_screen extends StatefulWidget {
  const Sign_in_screen({super.key});

  @override
  State<Sign_in_screen> createState() => _Sign_in_screenState();
}

class _Sign_in_screenState extends State<Sign_in_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              SizedBox(height: 10,),
              Container(
                height: 200,
                width:300,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        label: Text("Email Id / Mobile No",style: TextStyle(color: Colors.teal),)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text("Password",style: TextStyle(color: Colors.teal),)
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
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_Up_scren()));
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(205, 155, 65, 1.0)
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color:Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                        fontSize: 23,
                        fontWeight: FontWeight.w400 ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text("Forgot Password?",style: TextStyle(color: Colors.teal),),
              SizedBox(height: 10),
              Divider(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_Up_scren()));
                },
                child: RichText(
                  text: TextSpan(
                    text: 'You are not registered use click ',
                    style: TextStyle(color: Colors.black),
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

    );
  }
}
