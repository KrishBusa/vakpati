import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/screen/Order_History_3.dart';

class My_Profie_page extends StatefulWidget {
  const My_Profie_page({super.key});

  @override
  State<My_Profie_page> createState() => _My_Profie_pageState();
}

class _My_Profie_pageState extends State<My_Profie_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        backgroundColor: const Color.fromRGBO(205, 155, 65, 1.0),
        title: SizedBox(
          height: 60,
          width: 70,
          child: Image.asset("assets/images/img.png"),
        ),
        actions: [
          const Icon(Icons.search_rounded, size: 35, color: Colors.white),
          const SizedBox(width: 16),
        ],
      ),

      body:Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(205, 155, 65, 1.0),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 380,
                  color: Colors.white,
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              label: Text("Name",style: TextStyle(color: Colors.teal),)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              label: Text("Email",style: TextStyle(color: Colors.teal,),)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              label: Text("Contect No.",style: TextStyle(color: Colors.teal,),)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              label: Text("Billing Address",style: TextStyle(color: Colors.teal,),)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              label: Text("Shipping Address",style: TextStyle(color: Colors.teal,),)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              label: Text("City",style: TextStyle(color: Colors.teal,))
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              label: Text("State",style: TextStyle(color: Colors.teal,fontSize: 20),)
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 216,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor:  Color.fromRGBO(205, 155, 65, 1.0),
              ),
              child:  Text(
                "SAVE",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 200,
            width: 350,
            child: Image.asset("assets/images/Share.png",fit: BoxFit.cover,),
          ),
          SizedBox(height: 10,),
          SizedBox(
            height: 50,
            width: 216,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Order_history_3_page()));
              },
              style: OutlinedButton.styleFrom(
                backgroundColor:  Color.fromRGBO(205, 155, 65, 1.0),
              ),
              child:  Text(
                "SHARE APP",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),


      bottomNavigationBar: Container(
        height: 50,
        color: const Color.fromRGBO(205, 155, 65, 1.0),
        child: Row(
          children: const [
            SizedBox(width: 20),
            Icon(Icons.home_outlined, size: 32, color: Colors.white),
            Spacer(),
            Icon(CupertinoIcons.person,size: 32,color: Colors.white,),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
