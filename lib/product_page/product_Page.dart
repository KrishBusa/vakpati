import 'package:flutter/material.dart';
import 'package:vakpati/cart/cart_page.dart';

class ProductDetailPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250,238,235,232,),
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        automaticallyImplyLeading: false,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white ,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text(
                    'Gold Diamond Ring',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(205, 155, 65, 1.0),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.0, vertical: 1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            height: 400,
                            width: 380,
                            color: Colors.grey,
                            child: Image.network(
                              "https://image.wedmegood.com/resized/720X/uploads/member/1660026/1608125893_6.jpg",
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite_border, color: Color.fromRGBO(205, 155, 65, 1.0)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      SizedBox(
                        width: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.green,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                    ],
                  ),
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          'Rating - ',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.grey),
                        ),
                        Spacer(),
                        Row(
                          children: List.generate(
                            5,
                                (index) => Icon(Icons.star, size: 30, color: Color.fromRGBO(205, 155, 65, 1.0)),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text(
                          'Size -',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.grey),
                        ),
                        SizedBox(width: 30,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [2.5, 3.0, 3.5, 4.0, 4.5]
                                .map((size) => GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: size == 2.5
                                      ? Color.fromRGBO(205, 155, 65, 1.0)
                                      : Colors.white,
                                ),
                                child: Text(
                                  size.toString(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: size == 2.5
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text(
                              'MRP - 14599/-',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Offer Price - 14599/-',
                              style: TextStyle(
                                 fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB88E1A),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 180,
                          height: 55,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255,183,138,45),
                              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>Cart_screen()));
                            },
                            child: Text(
                              'ADD TO CART',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          'Product specification',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.teal,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down_outlined,size: 48,color: Colors.grey,),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ],
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
            Icon(Icons.shopping_cart_outlined,size: 32,color: Colors.white,),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}

