import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/screen/Order_History_1.dart';

class Check_out_page extends StatefulWidget {
  const Check_out_page({super.key});

  @override
  State<Check_out_page> createState() => _Check_out_pageState();
}

class _Check_out_pageState extends State<Check_out_page> {

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
              SizedBox(
                width: 400,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.white,
                      width: 370,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                child: Text("Order Summary",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                              ),
                            ],
                          ),
                          Container(
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
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.radio_button_checked),
                        SizedBox(width: 10,),
                        Text("Billing address same as shipping address"),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.radio_button_off),
                        SizedBox(width: 10,),
                        Text("Add new shipping address")
                      ],
                    ),
                    SizedBox(height: 16,),
                    Container(
                      color: Colors.white,
                      width: 370,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                                child: Text("Shipping Address",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                              ),
                            ],
                          ),
                          Container(
                              width: 350,
                              child: Divider()),
                          SizedBox(
                            width: 330,
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    label: Text("Name",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194)),)
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      label: Text("Email Id",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194),),)
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      label: Text("Contect No.",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194),),)
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      label: Text("Address",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194),),)
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      label: Text("Pin code",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194),),)
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      label: Text("City",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194),))
                                  ),
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                      label: Text("State",style: TextStyle(color: Color.fromARGB(255, 200, 194, 194)),)
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 10,),
              Text("Select Payment Options",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                      width: 100,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBicvOR9iXcNPEouB4fQGYe7VBK1PrYiD3ag&s")
                  ),
                  SizedBox(
                    height: 18,
                      width: 100,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/5/5c/Paytm_Logo.png")
                  ),
                  SizedBox(
                      width: 100,
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
                      width: 50,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Visa_Inc._logo.svg/2560px-Visa_Inc._logo.svg.png")
                  ),
                  SizedBox(width: 5,),
                  Container(
                    color: Colors.white,
                      height: 22,
                      width: 50,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png")
                  ),
                  SizedBox(width: 5,),
                  Container(
                    color: Colors.white,
                      height: 30,
                      width: 50,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStvSnMcJDx83tQA7kuieYu-ejhgH12ogtfdw&s")
                  ),
                  SizedBox(width: 5,),
                  Container(
                      color: Colors.white,
                      height: 30,
                      width: 50,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Skrill_logo.svg/568px-Skrill_logo.svg.png")
                  ),
                  SizedBox(width: 5,),
                  Container(
                      color: Colors.white,
                      height: 30,
                      width: 50,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnKsiUuRNac04_7xrkX0eUZjQ-DcjheGUL_Q&s")
                  ),
                  SizedBox(width: 5,),
                  Container(
                      color: Colors.white,
                      height: 30,
                      width: 50,
                      child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzdvpkjoI-WzHfpZd3bDJgT-UNwkQIVpziuA&s")
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 216,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Order_History_1_page()));
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor:  Color.fromARGB(255,183,138,45),
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
              SizedBox(height: 10)
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
