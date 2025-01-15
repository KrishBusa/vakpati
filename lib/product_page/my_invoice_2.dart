import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Invoice_page_2 extends StatefulWidget {
  const My_Invoice_page_2({super.key});

  @override
  State<My_Invoice_page_2> createState() => _My_Invoice_page_2State();
}

class _My_Invoice_page_2State extends State<My_Invoice_page_2> {
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
              margin: EdgeInsets.fromLTRB(15, 10, 10, 50),
              color: Colors.white,
              child: SingleChildScrollView(
                padding:  EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "TAX INVOICE",
                      style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    DottedLine(),
                    SizedBox(height: 3),
                    Text("Vagpati Jewellers", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey)),
                    Text("Agrasen Squre, 10-A Sapna Sangeeta Rd, Snehnagar", style: TextStyle(color: Colors.grey)),
                    Text("Indore, Madhya Pradesh 452002", style: TextStyle(color: Colors.grey)),
                    SizedBox(height: 9,),
                    DottedLine(),
                    SizedBox(height: 9,),
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
                    SizedBox(height: 9,),
                    DottedLine(),
                    SizedBox(height: 9,),
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
                    SizedBox(height: 9,),
                    DottedLine(),
                    SizedBox(height: 9,),
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
                    SizedBox(height: 9,),
                    DottedLine(),
                    SizedBox(height: 9,),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(8, 0, 8, 0),
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
                          Divider(thickness: 1.5,color: Colors.teal,),
                          Row(
                            children:  [
                              Text("Gold Ring", style: TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("1", style: TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("14000.00", style: TextStyle(fontSize: 16, color: Colors.grey)),
                            ],
                          ),
                          Divider(),
                          Row(
                            children:  [
                              Text("Gold Ring", style: TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("1", style: TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("14000.00", style: TextStyle(fontSize: 16, color: Colors.grey)),
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
                                  Text("Total", style: TextStyle(fontSize: 16)),
                                  Text("Advance Payment", style: TextStyle(fontSize: 16)),
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
                                  Text("29835.00", style: TextStyle(fontSize: 16)),
                                  Text("-5000.00", style: TextStyle(fontSize: 16)),
                                  Text("28870.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    DottedLine(),
                    SizedBox(height: 9,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Company GST: AFAPG5554F"),
                        SizedBox(width: 15),
                        Text("*Terms & Condition Apply"),
                      ],
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
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
