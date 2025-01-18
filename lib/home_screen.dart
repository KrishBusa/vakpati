import 'package:flutter/material.dart';
import 'package:vakpati/product_page/categaris_images_screen.dart';

class Home_scren extends StatefulWidget {
  const Home_scren({super.key});

  @override
  State<Home_scren> createState() => _Home_screnState();
}

class _Home_screnState extends State<Home_scren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(250,238,235,232,),
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK-M6fTcGGPO6-tW-q8NL20CZb-ewfPzmaPQ&s"),
                  fit: BoxFit.fill,
                ),
              ),
              height: 250,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(8.0),
              child: Text(
                "You don't have to have a ring on your finger to say, 'I love you.'",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Section Title
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jewellery for Women',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color.fromARGB(
                        255, 200, 160, 97)),
                  ),
                ],
              ),
            ),

            // Product Grid
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
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Categaris_Images_Screen()));
                    },
                    child: Stack(
                      children :[
                        Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 146, 244, 212),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children:[
                                  Container(
                                  decoration:  BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://image.wedmegood.com/resized/720X/uploads/member/1660026/1608125893_6.jpg",),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  Positioned(
                                    bottom: 0,
                                      right: 40,
                                      left: 40,
                                      child: Padding(
                                        padding:  EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text('Gold Ring', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18)),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.currency_rupee,size: 22,color: Colors.teal,),
                                                  Text('15,000/-', style: TextStyle(color: Colors.grey,fontSize: 18)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ),
                                  ]
                              ),
                            ),

                          ],
                        ),
                      ),
                         Positioned(
                            top: 10,
                          right: 10,
                            child: Icon(Icons.favorite_border, color: Color.fromARGB(
                                255, 184, 151, 66),size: 30,),
                        ),

                      ]
                    ),
                  );
                },
              ),
            ),

            // Additional Banner
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/banner2.jpg'), // Add another banner image
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(8.0),
            ),
            SizedBox(
              height: 160,
              width: 400,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNrwtTZKZFnMFkNwCDEX-emCWdzfTJNenO3w&s",fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 200,
              width: 400,
              child: Image.network("https://pbs.twimg.com/media/ElA7lyCXIAECG0u.jpg",fit: BoxFit.cover,),
            ),
            SizedBox(height: 20),
          ],
        ),
      )
    );
  }
}
