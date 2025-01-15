import 'package:flutter/material.dart';
import 'package:vakpati/sign%20in.dart';

class Choose_screen extends StatefulWidget {
  const Choose_screen({super.key});

  @override
  State<Choose_screen> createState() => _Choose_screenState();
}

class _Choose_screenState extends State<Choose_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(height: 280,),
              SizedBox(
                height: 65,
                width: 216,
                // child: OutlinedButton(
                //     onPressed: (){},
                //   style: OutlinedButton.styleFrom(
                //       backgroundColor: Color.fromRGBO(205, 155, 65, 1.0)
                //   ),
                //     child: Text("ARE YOU BUYER",style: TextStyle(color:Color.fromRGBO(244, 240, 220, 0.9254901960784314) ),),
                // ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_in_screen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Color.fromRGBO(205, 155, 65, 1.0),
                    ),
                    child: Center(
                        child: Text("ARE YOU BUYER",
                          style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w500,
                              color:Color.fromRGBO(244, 240, 220, 0.9254901960784314) ),)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: 216,
                // child: OutlinedButton(
                //   onPressed: (){
                //     Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_in_screen()));
                //   },
                //   style: OutlinedButton.styleFrom(
                //     backgroundColor: Color.fromRGBO(
                //         244, 240, 220, 0.9254901960784314)
                //   ),
                //   child: Text("ARE YOU CUSTOMER",style: TextStyle(color:Color.fromRGBO(205, 155, 65, 1.0) ),),
                // ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Sign_in_screen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color:Color.fromRGBO(244, 240, 220, 0.9254901960784314)
                    ),
                    child: Center(
                        child: Text("ARE YOU CUSTOMER",
                          style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.w500,
                              color:Color.fromRGBO(205, 155, 65, 1.0) ),)),
                  ),
                ),
              ),
              SizedBox(height: 50),

            ],
          ),
        ),
      ),
    );
  }
}
