import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/cart/checkout_page_2.dart';

class Advance_payment_page extends StatefulWidget {
  const Advance_payment_page({super.key});

  @override
  State<Advance_payment_page> createState() => _Advance_payment_pageState();
}

class _Advance_payment_pageState extends State<Advance_payment_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 253, 252, 249),
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

      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Advance Payment Receipts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(205, 155, 65, 1.0),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  "TAX INVOICE",
                  style: TextStyle(fontSize: 20, color: Colors.teal, fontWeight: FontWeight.w600),
                ),
                DottedLine(),
                Text("Vakpati Jewellers", style: TextStyle(fontSize: 20, color: Colors.teal)),
                SizedBox(height: 10),
                Text("Agrasen Squre, 10-A Sapna Sangeeta Rd, Snehnagar", style: TextStyle(color: Colors.teal)),
                Text("Indore, Madhya Pradesh 452002", style: TextStyle(color: Colors.teal)),
                DottedLine(),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Order ID",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("# VP - 1256",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Payment Methode",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("Paytm",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Payment Date",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("25 May 2019",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Order date",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("22 May 2019",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
                DottedLine(),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text("Deposit Amount In Rs.",style: TextStyle(fontSize: 18),),
                    Spacer(),
                    Text("5000.00",style: TextStyle(fontSize: 30,color: Colors.teal),),
                    SizedBox(width: 10,),
                  ],
                ),
                SizedBox(height: 10,),
                DottedLine(),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text("Amount in Words: Five thousands only.",style: TextStyle(color: Colors.teal),),
                  ],
                ),
                SizedBox(height: 10,),
                DottedLine(),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text("Company GST: AFAPG5554F"),
                    Spacer(),
                    Text("*Terms & Condition Apply"),
                    SizedBox(width: 10,),
                  ],
                ),
                SizedBox(height: 10,),
                DottedLine(),
                SizedBox(height: 10,),
                Text("Subject to all judgement in indore",style: TextStyle(fontSize: 16),),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(height: 12,),
          SizedBox(
            height: 60,
            width: 235,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Checkout_Page_2()));
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(205, 155, 65, 1.0),
              ),
              child:  Text(
                "SHARE RECEIPT",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                ),
              ),
            ),
          ),
          SizedBox(height: 12,)
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
