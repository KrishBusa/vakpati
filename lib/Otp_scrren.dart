import 'package:flutter/material.dart';
import 'package:vakpati/approvel_admin_show_scrren.dart';

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
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              SizedBox(
                height: 250,
                width: 250,
                child: Image.asset("assets/images/style.png"),
              ),
               SizedBox(height: 100),
              Text("Enter your one time password",style: TextStyle(fontSize: 20),),
              SizedBox(height: 100,),
              Row(
                children: [
                  Spacer(),
                  SizedBox(width: 75,child: Divider(thickness: 2,color: Colors.black54,),),
                  SizedBox(width: 10,),
                  SizedBox(width: 75,child: Divider(thickness: 2,color: Colors.black54,),),
                  SizedBox(width: 10,),
                  SizedBox(width: 75,child: Divider(thickness: 2,color: Colors.black54,),),
                  SizedBox(width: 10,),
                  SizedBox(width: 75,child: Divider(thickness: 2,color: Colors.black54,),),
                  Spacer(),
                ],
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 60,
                width: 216,
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Approval_admin_Show_Screen()));
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255,183,138,45),
                  ),
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(
                        color:Color.fromARGB(255,254,249,245),
                        fontSize: 20,
                        fontWeight: FontWeight.normal
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
