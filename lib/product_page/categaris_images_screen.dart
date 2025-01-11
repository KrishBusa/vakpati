import 'package:flutter/material.dart';
import 'package:vakpati/product_page/product_Page.dart';

class Categaris_Images_Screen extends StatefulWidget {
  const Categaris_Images_Screen({super.key});

  @override
  State<Categaris_Images_Screen> createState() => _Categaris_Images_ScreenState();
}

class _Categaris_Images_ScreenState extends State<Categaris_Images_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(234, 253, 252, 249),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 155, 65, 1.0),
        title:  SizedBox(
            height: 60,
            child: Image.asset("assets/images/img.png")
        ),
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        actions: [
          Icon(Icons.search_rounded,size: 35,color: Colors.white,),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child:  Padding(
          padding:  EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.8,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>ProductDetailPage()));
                },
                child: Stack(
                    children :[
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children:[
                                  Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                    image: DecorationImage(
                                      image: NetworkImage("https://image.wedmegood.com/resized/720X/uploads/member/1660026/1608125893_3.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  Positioned(
                                    bottom: 15,
                                      right: 50,
                                      left: 50,
                                      child: Text('₹ 15,000/-',style: TextStyle(fontSize: 18),)
                                  )
                                ]
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(

                        child: Icon(Icons.favorite_border, color: Colors.orange,size: 30,),
                        top: 10,
                        right: 10,
                      ),

                    ]
                ),
              );
            },
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
            Icon(Icons.filter_alt,size: 32,color: Colors.white,),
            Spacer(),
            Icon(Icons.density_small,size: 32,color: Colors.white,),
            Spacer(),
            Icon(Icons.shopping_cart_outlined,size: 32,color: Colors.white,),
            SizedBox(width: 20,),
          ],
        ),
      ),
    );
  }
}
