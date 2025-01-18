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
      backgroundColor: Color.fromARGB(250,238,235,232,),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(205, 155, 65, 1.0),
        title: SizedBox(
          height: 50,
          width: 90,
          child: Image.asset("assets/images/Screenshot_2025-01-18_110524-removebg-preview.png",),
        ),
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        actions: [
          Icon(Icons.search_rounded,size: 35,color: Colors.white,),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text(
                    'Exclusive Gold Rings',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(205, 155, 65, 1.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
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
                                      decoration: BoxDecoration(
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
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.currency_rupee,size:23,color: Colors.teal,),
                                              Text('15,000/-', style: TextStyle(fontSize:18,color: Colors.teal)),
                                            ],
                                          ),
                                      )
                                    ]
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(

                            child: Icon(Icons.favorite_border, color: Color.fromARGB(255, 184, 151, 66),size: 30,),
                            top: 10,
                            right: 10,
                          ),

                        ]
                    ),
                  );
                },
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
