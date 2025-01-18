import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/screen/Order_history_4.dart';

class Checkout_Page_2 extends StatefulWidget {
  const Checkout_Page_2({super.key});

  @override
  State<Checkout_Page_2> createState() => _Checkout_Page_2State();
}

class _Checkout_Page_2State extends State<Checkout_Page_2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250,238,235,232,),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 155, 65, 1.0),
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        title: SizedBox(
          height: 50,
          width: 90,
          child: Image.asset("assets/images/Screenshot_2025-01-18_110524-removebg-preview.png",),
        ),
        actions: [
          Icon(Icons.search_rounded,size: 35,color: Colors.white,),
          SizedBox(width: 16),
        ],
      ),
      body:  Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(205, 155, 65, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 400,
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 160,
                      width: 370,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.fromLTRB(8, 8, 8, 0),
                                child: Text("Order Summary",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                              ),
                            ],
                          ),
                          SizedBox(
                              width: 350,
                              child: Divider()),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Text("Total Items",style: TextStyle(fontSize:16),),
                              Spacer(),
                              Text("2",style: TextStyle(fontSize:16),),
                              SizedBox(width: 9),
                            ],
                          ),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Text("Discount",style: TextStyle(fontSize:16),),
                              Spacer(),
                              Text("1000.00",style: TextStyle(fontSize:16),),
                              SizedBox(width: 9),
                            ],
                          ),
                          SizedBox(height: 6,),
                          Row(
                            children: [
                              SizedBox(width: 9,),
                              Text("Amount Payble",style: TextStyle(fontSize:16),),
                              Spacer(),
                              Text("28870.00",style: TextStyle(fontSize:16),),
                              SizedBox(width: 9),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.radio_button_checked),
                        SizedBox(width: 10,),
                        Text("Billing address same as shipping address"),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.radio_button_off),
                        SizedBox(width: 10,),
                        Text("Add new shipping address")
                      ],
                    ),
                    SizedBox(height: 10,),

                    Container(
                      // margin: EdgeInsets.all(20),
                      color: Colors.white,
                      height: 50,
                      width: 370,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Shipping and Billing Address",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                              ),
                              Spacer(),
                              Icon(Icons.keyboard_arrow_down_sharp,size: 50,color: Colors.grey,)
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.white,
                      height: 200,
                      width: 370,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Payment option ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
                              ),
                              Spacer(),
                              Icon(Icons.keyboard_arrow_down_sharp,size: 50,color: Colors.grey,)
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("Full Payment",style: TextStyle(fontSize: 20),),
                            ],
                          ),
                          SizedBox(
                              width: 340,
                              child: Divider()
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("Online Payment",style: TextStyle(fontSize: 20),),
                            ],
                          ),
                          SizedBox(
                              width: 340,
                              child: Divider()
                          ),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("Cash Pay To Dealer",style: TextStyle(fontSize: 20),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 500,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.radio_button_checked),
                              SizedBox(width: 10,),
                              Text("Self pickup")
                            ],
                          ),
                          SizedBox(width: 50),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.radio_button_off),
                              SizedBox(width: 10,),
                              Text("By Courier")
                            ],
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "Select Payment Options",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 70,
                      width: 300,
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
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 52,
                      width: 216,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>Order_History_4_page()));
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor:  Color.fromARGB(255,183,138,45),
                        ),
                        child:  Text(
                          "PROCEED TO PAY",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),



                  ],
                ),
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        height: 50,
        color:  Color.fromRGBO(205, 155, 65, 1.0),
        child: Row(
          children: [
            SizedBox(width:  20,),
            Icon(Icons.home_outlined,size: 32,color: Colors.white,),
            Spacer(),
            Icon(CupertinoIcons.person,size: 32,color: Colors.white,),
            SizedBox(width: 20,),
          ],
        ),
      ),

    );
  }
}
