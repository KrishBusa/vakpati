import 'package:flutter/material.dart';

class Home_scren extends StatefulWidget {
  const Home_scren({super.key});

  @override
  State<Home_scren> createState() => _Home_screnState();
}

class _Home_screnState extends State<Home_scren> {
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
            Icon(Icons.search_rounded,size: 35,),
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jewellery for Women',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.favorite_border, color: Colors.grey),
                ],
              ),
            ),

            // Product Grid
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Stack(
                      children :[
                        Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                  image: DecorationImage(
                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2YuqQNJV1F-QeQAIu-zEhbgHUyLEz_IriLw&s"), // Add product image
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Gold Ring', style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('₹ 15,000/-', style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                        Positioned(

                            child: Icon(Icons.favorite_border, color: Colors.white,size: 30,),
                          top: 10,
                          right: 10,
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
