import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:vakpati/cart/cart_page.dart';

class ProductDetailPage extends StatelessWidget {
  final List<String> imageUrls = [
    "https://image.wedmegood.com/resized/720X/uploads/member/1660026/1608125893_1.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQweB8-9pOvQktff4_MnZmSq-E2k1PcB8-sO5De99kUcAIVYpTmgMtyo5daghdECejJD5k&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTr-mnk5PHD05WOqvnnR4VtImHbgDSMwUxaM8MxiCx7tq4cTRXkTWqCQvoViQG2SouCHW8&usqp=CAU",
    "https://image.wedmegood.com/resized/720X/uploads/member/1660026/1608125893_6.jpg",
    "https://cdn.quicksell.co/-MVGcsLmi4y4iUzzx-Zp/products_400/-NzlmFbI8RFUBXAF1nHX.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 253, 252, 249),
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(205, 155, 65, 1.0),
        title:  SizedBox(
            height: 60,
            child: Image.asset("assets/images/img.png")
        ),
        actions: [
          Icon(Icons.search_rounded,size: 35,color: Colors.white,),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
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
              Container(
                height: 300,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 280,
                            autoPlay: true,
                            enableInfiniteScroll: true,
                            viewportFraction: 1.0,
                            enlargeCenterPage: true,
                          ),
                          items: imageUrls.map((imageUrl) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            );
                          }).toList(),
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
                    )
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
                          backgroundColor: Color.fromRGBO(205, 155, 65, 1.0),
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
                            fontWeight: FontWeight.w300,
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
                    Icon(Icons.keyboard_arrow_down_outlined,size: 45,color: Colors.grey,),
                    SizedBox(width: 10,),
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
            Icon(Icons.shopping_cart_outlined,size: 32,color: Colors.white,),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}

