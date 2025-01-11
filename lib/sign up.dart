import 'package:flutter/material.dart';
import 'package:vakpati/Otp_scrren.dart';

class Sign_Up_scren extends StatefulWidget {
  const Sign_Up_scren({super.key});

  @override
  State<Sign_Up_scren> createState() => _Sign_Up_screnState();
}

class _Sign_Up_screnState extends State<Sign_Up_scren> {
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
              Text("Customer Sign up",style: TextStyle(fontSize: 26),),
              SizedBox(height: 10,),
              Container(
                width:300,
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          label: Text("Name",style: TextStyle(color: Colors.teal),)
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      decoration: InputDecoration(
                          label: Text("Mobile No.",style: TextStyle(color: Colors.teal),)
                      ),
                    ),
                    SizedBox(height: 20,),
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
                    SizedBox(height: 20,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text("Conform password",style: TextStyle(color: Colors.teal),)
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 60,
                width: 216,
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>OtpScreen()));
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
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10,),
              Text("Are you running customer click here",style: TextStyle(color: Colors.teal),),
              Spacer(),


            ],
          ),
        ),
      ),

    );
  }
}
