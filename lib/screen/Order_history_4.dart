import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/product_page/my_invoice_2.dart';

class Order_History_4_page extends StatefulWidget {
  const Order_History_4_page({super.key});

  @override
  State<Order_History_4_page> createState() => _Order_History_4_pageState();
}

class _Order_History_4_pageState extends State<Order_History_4_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250,238,235,232,),
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        backgroundColor:  Color.fromRGBO(205, 155, 65, 1.0),
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            backgroundColor: Colors.white,
            toolbarHeight: 60,
            flexibleSpace: Container(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child:  Text(
                'Order History',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(205, 155, 65, 1.0),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  height: 240,
                  width: 370,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 7, 0),
                            child: Text(
                              "Order ID #121",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                color: Color.fromRGBO(205, 155, 65, 1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(width: 350, child: Divider()),
                      Row(
                        children: [
                          SizedBox(width: 9),
                          Text("Invoice No.", style: TextStyle(fontSize: 16)),
                          Spacer(),
                          Text("VP-1256/2019-20", style: TextStyle(fontSize: 16)),
                          SizedBox(width: 9),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          SizedBox(width: 9),
                          Text("Order Date", style: TextStyle(fontSize: 16)),
                          Spacer(),
                          Text("25 May 2019", style: TextStyle(fontSize: 16)),
                          SizedBox(width: 9),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          SizedBox(width: 9),
                          Text("Bill Amount", style: TextStyle(fontSize: 16)),
                          Spacer(),
                          Text("28870.00", style: TextStyle(fontSize: 16)),
                          SizedBox(width: 9),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          SizedBox(width: 9),
                          Text("Anvance Deposite", style: TextStyle(fontSize: 16)),
                          Spacer(),
                          Text("5000.00", style: TextStyle(fontSize: 16)),
                          SizedBox(width: 9),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          SizedBox(width: 9),
                          Text("Advance Deposite by", style: TextStyle(fontSize: 16)),
                          Spacer(),
                          Text("Paytm", style: TextStyle(fontSize: 16)),
                          SizedBox(width: 9),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          SizedBox(width: 9),
                          Text("Total Payble Amount", style: TextStyle(fontSize: 16)),
                          Spacer(),
                          Text("23870.00", style: TextStyle(fontSize: 16)),
                          SizedBox(width: 9),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  width: 370,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: Text(
                              "Billing and Shipping Address",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                color: Color.fromRGBO(205, 155, 65, 1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 350, child: Divider()),
                      SizedBox(
                        width: 330,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  "Name",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  "Email Id",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  "Contect No.",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  "Address",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  "Pin code",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  "City",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                label: Text(
                                  "State",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  color: Colors.white,
                  height: 140,
                  width: 370,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Text(
                              "Product Summary",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                color: Color.fromRGBO(205, 155, 65, 1.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 350, child: Divider()),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Item detail", style: TextStyle(fontSize: 16)),
                              Spacer(),
                              Text("Qty.", style: TextStyle(fontSize: 16)),
                              Spacer(),
                              Text("Amount", style: TextStyle(fontSize: 16)),
                              SizedBox(width: 10),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Gold Ring",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("1",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("14000.00",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                              SizedBox(width: 10),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text("Gold Ring",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("1",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                              Spacer(),
                              Text("14000.00",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.grey)),
                              SizedBox(width: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  height: 52,
                  width: 216,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => My_Invoice_page_2()));
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor:Color.fromARGB(255,183,138,45),
                    ),
                    child: Text(
                      "VIEW INVOICE",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color:
                        Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
              ],
            ),
          ),
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
