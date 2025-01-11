import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:vakpati/product_page/my_invoice.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 253, 252, 249),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(205, 155, 65, 1.0),
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
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
              'My Order History',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(205, 155, 65, 1.0),
              ),
            ),
          ),
          Container(
            margin:  EdgeInsets.all(10),
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 550,
            width: 370,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Order Summary",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                ),
                 Divider(),
                 SizedBox(height: 20),
                Expanded(
                  child: Row(
                    children: [
                      Spacer(),
                      SizedBox(
                        width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            Text("25 May 2019",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("26 May 2019",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("27 May 2019",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("28 May 2019",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("28 May 2019",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        width: 20,
                        child: Timeline.tileBuilder(
                          theme: TimelineThemeData(
                            indicatorTheme:  IndicatorThemeData(
                              size: 20,
                              color: Colors.green,
                            ),
                            connectorTheme:  ConnectorThemeData(
                              thickness: 2,
                              color: Colors.green,
                            ),
                          ),
                          builder: TimelineTileBuilder.connected(
                            itemExtent: 93,
                            indicatorBuilder: (_, __) =>  DotIndicator(
                              color: Colors.green,
                            ),
                            connectorBuilder: (_, __, ___) =>
                             SolidLineConnector(color: Colors.green),
                            contentsBuilder: (_, __) =>  SizedBox.shrink(),
                            itemCount: 5,
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      SizedBox(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            Text("Order Placed",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("Packed",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("Dispatched",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("Out for Delivery",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                            Text("Delivered",
                                style: TextStyle(fontSize: 16, color: Colors.teal)),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 50,
            width: 216,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>My_Invoice_page()));
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(205, 155, 65, 1.0),
              ),
              child: const Text(
                "VIEW INVOICE",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(244, 240, 220, 0.9254901960784314),
                ),
              ),
            ),
          ),
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
