
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class Order_History_page extends StatefulWidget {
  const Order_History_page({super.key});

  @override
  State<Order_History_page> createState() => _Order_History_pageState();
}

class _Order_History_pageState extends State<Order_History_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 155, 65, 1.0),
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
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Text(
                  'My Order History',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 550,
            width: 370,
            color: Colors.white,
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
                SizedBox(
                  width: 340,
                  child: Divider(),
                ),
                SizedBox(height: 60),
                Row(
                  children: [
                    Spacer(),
                    SizedBox(
                      height: 400,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 22),
                          Text("25 May 2019",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("26 May 2019",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("27 May 2019",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("28 May 2019",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("28 May 2019",style: TextStyle(fontSize: 20,color: Colors.teal),),
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 20,
                      child: Timeline.tileBuilder(
                        builder: TimelineTileBuilder.fromStyle(
                          contentsAlign: ContentsAlign.alternating,
                          contentsBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Text(""),
                          ),
                          itemCount: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 400,
                      width: 150,
                      child: Column(
                        children: [
                          SizedBox(height: 22),
                          Text("Order Placed",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("Packed",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("Dispatched",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("Out for delivery",style: TextStyle(fontSize: 20,color: Colors.teal),),
                          SizedBox(height: 40,),
                          Text("Delivered",style: TextStyle(fontSize: 20,color: Colors.teal),),
                        ],
                      ),
                    ),
                    Spacer(),


                  ],
                ),






              ],
            ),
          ),
          SizedBox(height: 50,),
          SizedBox(
            height: 60,
            width: 216,
            child: OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(205, 155, 65, 1.0)
              ),
              child: Text("VIEW INVOICE",style: TextStyle(fontSize: 16,color:Color.fromRGBO(244, 240, 220, 0.9254901960784314) ),),
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
