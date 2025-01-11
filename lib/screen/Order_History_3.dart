import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/screen/Advance_payment_recipt.dart';

class Order_history_3_page extends StatefulWidget {
  const Order_history_3_page({super.key});

  @override
  State<Order_history_3_page> createState() => _Order_history_3_pageState();
}

class _Order_history_3_pageState extends State<Order_history_3_page> {
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
              'Order History',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(205, 155, 65, 1.0),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.white,
            height: 180,
            width: 370,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Text("Order ID #121",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                    ),
                  ],
                ),
                Container(
                    width: 350,
                    child: Divider()),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Invoice NO.",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("VP-1256/2019-20",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Order Date",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("25 May 2019",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Order Amount",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("28870.00",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 9,),
                    Text("Payment Method",style: TextStyle(fontSize:16),),
                    Spacer(),
                    Text("Paytm",style: TextStyle(fontSize:16),),
                    SizedBox(width: 9),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.white,
            width: 370,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Billing and Shipping Address",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                width: 370,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Text("Product Summary",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                        ),
                      ],
                    ),
                    Container(
                        width: 350,
                        child: Divider()),
                    Container(
                      height: 130,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(color: CupertinoColors.inactiveGray)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box_outlined),
                                Text(" Item Description",style: TextStyle(fontSize: 16),),
                              ],
                            ),
                            Divider(),
                            Text("Gold Diamond Ring",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 9),
                            Row(
                              children: [
                                Spacer(),
                                Text("Qty"),
                                Spacer(),
                                Text("Product Amt."),
                                Spacer(),
                                Text("Diposit Amt."),
                                Spacer(),
                                Text("Remaing Amt."),
                                Spacer(),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("1",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text("14000.00",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text("2500.00",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text("11500.00",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 130,
                      width: 350,
                      decoration: BoxDecoration(
                          border: Border.all(color: CupertinoColors.inactiveGray)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box_outline_blank),
                                Text(" Item Description",style: TextStyle(fontSize: 16),),
                              ],
                            ),
                            Divider(),
                            Text("Gold Diamond Ring",style: TextStyle(fontSize: 16),),
                            SizedBox(height: 9),
                            Row(
                              children: [
                                Spacer(),
                                Text("Qty"),
                                Spacer(),
                                Text("Product Amt."),
                                Spacer(),
                                Text("Diposit Amt."),
                                Spacer(),
                                Text("Remaing Amt."),
                                Spacer(),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("1",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text("14000.00",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text("2500.00",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Text("11500.00",style: TextStyle(color: Colors.grey),),
                                Spacer(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 9,)

                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: 370,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Amount Payble",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("11500.00",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Spacer(),
              SizedBox(
                height: 50,
                width: 200,
                child: OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Stack(
                            children: [
                              Container(
                                height: 400,
                                width: 600,
                                child: Column(
                                  children: [
                                    Text("Advance Payment",style: TextStyle(fontSize: 22),),
                                    Divider(),
                                    Row(
                                      children: [
                                        Text("Total Payble Amount"),
                                        Spacer(),
                                        Text("23870.00")
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 50,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Enter Advance Payment Amount",style: TextStyle(fontSize: 15,color: Colors.teal),),
                                        ],
                                      ),

                                    ),
                                    SizedBox(height: 20,),
                                    Text("Select Payment Options",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                    SizedBox(height: 20,),
                                    Container(
                                      height: 70,
                                      width: 300,
                                      color: Colors.tealAccent,
                                      child: Column(
                                        children: [
                                          SizedBox(height: 2,),
                                          Row(
                                            children: [
                                              Spacer(),
                                              SizedBox(
                                                  width: 90,
                                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBicvOR9iXcNPEouB4fQGYe7VBK1PrYiD3ag&s")
                                              ),
                                              SizedBox(
                                                  height: 18,
                                                  width: 90,
                                                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/5/5c/Paytm_Logo.png")
                                              ),
                                              SizedBox(
                                                  width: 90,
                                                  child: Image.network("https://i.pinimg.com/736x/54/2e/1b/542e1b53f50d0b149403ea347865bb30.jpg")
                                              ),
                                              Spacer(),
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Row(
                                            children: [
                                              Spacer(),
                                              Container(
                                                  color: Colors.white,
                                                  height: 20,
                                                  width: 40,
                                                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png")
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                  color: Colors.white,
                                                  height: 22,
                                                  width: 40,
                                                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png")
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                  color: Colors.white,
                                                  height: 30,
                                                  width: 40,
                                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStvSnMcJDx83tQA7kuieYu-ejhgH12ogtfdw&s")
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                  color: Colors.white,
                                                  height: 30,
                                                  width: 40,
                                                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Skrill_logo.svg/568px-Skrill_logo.svg.png")
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                  color: Colors.white,
                                                  height: 30,
                                                  width: 40,
                                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnKsiUuRNac04_7xrkX0eUZjQ-DcjheGUL_Q&s")
                                              ),
                                              SizedBox(width: 5,),
                                              Container(
                                                  color: Colors.white,
                                                  height: 30,
                                                  width: 40,
                                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzdvpkjoI-WzHfpZd3bDJgT-UNwkQIVpziuA&s")
                                              ),
                                              Spacer(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 40,),
                                    SizedBox(
                                      height: 50,
                                      width: 216,
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(205, 155, 65, 1.0),
                                        ),
                                        child: const Text(
                                          "PROCEED TO PAY",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Icon(Icons.cancel_outlined)
                              ),
                          ]
                          ),
                        );
                      },
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                  child: const Text(
                    "ADVANCE PAY",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                    ),
                  ),
                ),
              ),

              Spacer(),
              SizedBox(
                height: 50,
                width: 200,
                child: OutlinedButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (_)=>Advance_payment_page()));
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                  child:  Text(
                    "PROCEED TO PAY",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
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
