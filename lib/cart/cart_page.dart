import 'package:flutter/material.dart';

class Cart_screen extends StatefulWidget {
  const Cart_screen({super.key});

  @override
  State<Cart_screen> createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen> {
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
                  'My Cart',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              height: 150,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 130,
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Round the image corners
                        child: Image.network(
                          "https://image.wedmegood.com/resized/720X/uploads/member/1660026/1608125893_1.png",
                          fit: BoxFit.cover, // Ensures the image fits well
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Gold Ring",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Rs. 14500.00",
                            style: TextStyle(
                              fontSize: 18,
                              color:Color.fromRGBO(205, 155, 65, 1.0)
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {}, // Decrease quantity
                                icon: Icon(Icons.add_circle_outline, color: Colors.grey),
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {}, // Increase quantity
                                icon: Icon(Icons.remove_circle_outline, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              height: 150,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 130,
                      width: 130,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Round the image corners
                        child: Image.network(
                          "https://image.wedmegood.com/resized/720X/uploads/member/1660026/1608125893_4.jpg",
                          fit: BoxFit.cover, // Ensures the image fits well
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Gold Ring",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Rs. 14500.00",
                            style: TextStyle(
                                fontSize: 18,
                                color:Color.fromRGBO(205, 155, 65, 1.0)
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {}, // Decrease quantity
                                icon: Icon(Icons.add_circle_outline, color: Colors.grey),
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {}, // Increase quantity
                                icon: Icon(Icons.remove_circle_outline, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child:Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text("Item Total",style: TextStyle(fontSize: 20),),
                    Text("CGST(1.5%)",style: TextStyle(fontSize: 20),),
                    Text("SGST(1.5%)",style: TextStyle(fontSize: 20),),
                    Text("Discount",style: TextStyle(fontSize: 20),),
                    Text("Grand Total",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                  ],
                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    Text("29000.00",style: TextStyle(fontSize: 20),),
                    Text("435.00",style: TextStyle(fontSize: 20),),
                    Text("435.00",style: TextStyle(fontSize: 20),),
                    Text("1000.00",style: TextStyle(fontSize: 20),),
                    Text("28870.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                  ],
                ),
                SizedBox(width: 25),

              ],
            ),
          ),
          Container(
              width: 370,
              child: Divider()),
          Stack(
            children: [
              Container(
              height: 60,
              width: 370,
              child: Center(child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Apply discount coupon",style: TextStyle(fontSize: 18),),
                ],
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
            ),
              Positioned(
                right: 5,
                bottom: 7,
                top: 7,
                child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(205, 155, 65, 1.0),
                ),
                  child: Center(child: Text("APPLAY",style: TextStyle(fontSize: 18,color: Colors.white),)),

              ),)
            ]
          ),
          Container(
              width: 370,
              child: Divider()),
          Container(
            width: 370,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                  child: Center(child: Text("CONTINUE SHOPPING",style: TextStyle(fontSize:15,color: Colors.white,fontWeight: FontWeight.w400),)),

                ),
                SizedBox(width: 10,),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(205, 155, 65, 1.0),
                  ),
                  child: Center(child: Text("PROCEED TO PAY",style: TextStyle(fontSize:15,color: Colors.white,fontWeight: FontWeight.w300),)),

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
