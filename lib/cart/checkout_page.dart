import 'package:flutter/material.dart';

class Check_out_page extends StatefulWidget {
  const Check_out_page({super.key});

  @override
  State<Check_out_page> createState() => _Check_out_pageState();
}

class _Check_out_pageState extends State<Check_out_page> {
  int _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 155, 65, 1.0),
        title:  SizedBox(
            height: 60,
            width: 70,
            child: Image.asset("assets/images/img.png")
        ),
        actions: [
          Icon(Icons.search_rounded,size: 35,color: Colors.white,),
          SizedBox(width: 16),
        ],
      ),


      body:  Column(
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
                  margin: EdgeInsets.all(20),
                  color: Colors.white,
                  height: 160,
                  width: 370,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                RadioMenuButton(
                  value: 1,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                    },
                  child: Text("Billing address same as shipping address"),
                ),
                RadioMenuButton(
                  value: 0,
                  groupValue: _selectedValue,
                  onChanged: (int? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  },
                  child: Text("Add new shipping address")
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.white,
                  height: 160,
                  width: 370,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Shipping Address",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Color.fromRGBO(205, 155, 65, 1.0),),),
                          ),
                        ],
                      ),
                      Container(
                          width: 350,
                          child: Divider()),
                      SizedBox(
                        height: 200,
                        width: 330,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                label: Text("Name",style: TextStyle(color: Colors.teal),)
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  label: Text("Email Id",style: TextStyle(color: Colors.teal,),)
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  label: Text("Contect No.",style: TextStyle(color: Colors.teal,),)
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  label: Text("Address",style: TextStyle(color: Colors.teal,),)
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  label: Text("Pin code",style: TextStyle(color: Colors.teal,),)
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  label: Text("Name",style: TextStyle(color: Colors.teal,))
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  label: Text("Name",style: TextStyle(color: Colors.teal,fontSize: 20),)
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),



              ],
            ),
          ),

        ],
      ),


      bottomNavigationBar: Container(
        height: 50,
        color:  Color.fromRGBO(205, 155, 65, 1.0),
        child: Row(
          children: [
            SizedBox(width:  20,),
            Icon(Icons.home_outlined,size: 32,color: Colors.white,),
            Spacer(),
            Icon(Icons.shopping_cart_outlined,size: 32,color: Colors.white,),
            SizedBox(width: 20,),
          ],
        ),
      ),

    );
  }
}
