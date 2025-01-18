import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/screen/My_Profile.dart';

class My_Invoice_page extends StatefulWidget {
  const My_Invoice_page({super.key});

  @override
  State<My_Invoice_page> createState() => _My_Invoice_pageState();
}

class _My_Invoice_pageState extends State<My_Invoice_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250,238,235,232,),
      appBar: AppBar(
        backgroundColor:  Color.fromRGBO(205, 155, 65, 1.0),
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        title: SizedBox(
          height: 50,
          width: 90,
          child: Image.asset("assets/images/Screenshot_2025-01-18_110524-removebg-preview.png",),
        ),
        actions: [
           Icon(Icons.search_rounded, size: 35, color: Colors.white),
           SizedBox(width: 16),
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
              'My Invoice',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(205, 155, 65, 1.0),
              ),
            ),
          ),
           SizedBox(height: 10),
          Expanded(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SingleChildScrollView(
                padding:  EdgeInsets.all(10),
                child: Column(
                  children: [
                     Text(
                      "TAX INVOICE",
                      style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                     SizedBox(height: 6),
                     DottedLine(),
                     SizedBox(height: 3),
                     Text("Vakpati Jewellers", style: TextStyle(fontSize: 20, color: Colors.grey,fontWeight: FontWeight.w500)),
                     Text("Agrasen Squre, 10-A Sapna Sangeeta Rd, Snehnagar", style: TextStyle(color: Colors.grey)),
                     Text("Indore, Madhya Pradesh 452002", style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 3),
                    DottedLine(),
                    SizedBox(height: 8),
                     Row(
                      children:  [
                        Text("Invoice No.", style: TextStyle(fontSize: 15)),
                        Spacer(),
                        Text("VP-1256", style: TextStyle(fontSize: 15)),
                      ],
                     ),
                     Row(
                      children:  [
                        Text("Payment Method", style: TextStyle(fontSize: 15)),
                        Spacer(),
                        Text("Paytm", style: TextStyle(fontSize: 15)),
                      ],
                     ),
                     Row(
                      children:  [
                        Text("Order Date", style: TextStyle(fontSize: 15)),
                        Spacer(),
                        Text("25 May 2019", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(height: 8),
                     DottedLine(),
                    SizedBox(height: 8),
                     Row(
                      children: [
                        Text("Billing Address", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                     Row(
                       children: [
                         Text(
                          "96-Fb, Mahadev Totla Nagar, Nr. Pipliyahana Squre",
                          style: TextStyle(color: Colors.grey),
                                           ),
                       ],
                     ),
                     Row(
                       children: [
                         Text("Indore India MP. 452016", style: TextStyle(color: Colors.grey)),
                       ],
                     ),
                    SizedBox(height: 8),
                     DottedLine(),
                    SizedBox(height: 8),
                     Row(
                      children: [
                        Text("Shipping Address", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                     Row(
                       children: [
                         Text(
                          "96-Fb, Mahadev Totla Nagar, Nr. Pipliyahana Squre",
                          style: TextStyle(color: Colors.grey),
                                           ),
                       ],
                     ),
                     Row(
                       children: [
                         Text("Indore India MP. 452016", style: TextStyle(color: Colors.grey)),
                       ],
                     ),
                    SizedBox(height: 8),
                     DottedLine(),
                    SizedBox(height: 8),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Column(
                        children: [
                          Row(
                            children:  [
                              Text("Item detail", style: TextStyle(fontSize: 16)),
                              Spacer(),
                              Text("Qty.", style: TextStyle(fontSize: 16)),
                              Spacer(),
                              Text("Amount", style: TextStyle(fontSize: 16)),
                            ],
                          ),
                           Divider(),
                          Row(
                            children:  [
                              Text("Gold Ring", style: TextStyle(fontSize: 16, color: Colors.teal)),
                              Spacer(),
                              Text("1", style: TextStyle(fontSize: 16, color: Colors.teal)),
                              Spacer(),
                              Text("14000.00", style: TextStyle(fontSize: 16, color: Colors.teal)),
                            ],
                          ),
                           Divider(),
                          Row(
                            children:  [
                              Text("Gold Ring", style: TextStyle(fontSize: 16, color: Colors.teal)),
                              Spacer(),
                              Text("1", style: TextStyle(fontSize: 16, color: Colors.teal)),
                              Spacer(),
                              Text("14000.00", style: TextStyle(fontSize: 16, color: Colors.teal)),
                            ],
                          ),
                           Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children:  [
                                  Text("Item Total", style: TextStyle(fontSize: 16)),
                                  Text("CGST(1.5%)", style: TextStyle(fontSize: 16)),
                                  Text("SGST(1.5%)", style: TextStyle(fontSize: 16)),
                                  Text("Discount", style: TextStyle(fontSize: 16)),
                                  Text("Grand Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                                ],
                              ),
                               SizedBox(width: 50),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text("29000.00", style: TextStyle(fontSize: 16)),
                                  Text("435.00", style: TextStyle(fontSize: 16)),
                                  Text("435.00", style: TextStyle(fontSize: 16)),
                                  Text("1000.00", style: TextStyle(fontSize: 16)),
                                  Text("28870.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                     DottedLine(),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Company GST: AFAPG5554F"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("*Terms & Condition Apply"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 216,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>My_Profie_page()));
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(255,183,138,45),
              ),
              child:  Text(
                "SHARE INVOICE",
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
        color:  Color.fromRGBO(205, 155, 65, 1.0),
        child: Row(
          children:  [
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
