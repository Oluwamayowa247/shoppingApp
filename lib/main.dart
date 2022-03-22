import 'package:expense/shoes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
        elevation: 0,
        leading: null,
        backgroundColor: Colors.transparent,
        title: Text(
          'Shoes',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Sneakers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Football',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Soccer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2 / 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            'Golf',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              makeItem(
                  image: 'assets/images/s1.jpg', tag: 'red', context: context),
              makeItem(
                  image: 'assets/images/s2.jpg',
                  tag: 'green',
                  context: context),
              makeItem(
                  image: 'assets/images/s3.jpg',
                  tag: 'white',
                  context: context),
              makeItem(
                  image: 'assets/images/s4.jpg', tag: 'black', context: context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeItem({image, tag, context}) {
  return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Shoes(
                        image: image,
                      )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sneakers',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Nike',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      )
                    ],
                  )),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                "100 €",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ));
}
