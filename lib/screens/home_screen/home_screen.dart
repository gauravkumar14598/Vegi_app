import 'package:flutter/material.dart';
import 'package:food_app/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      height: 260,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/266128_2200-732x549.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fresh Basil',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '50₹ /50 Gram',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 4),
                        height: 29,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            Text(
                              '50 Gm',
                              style: TextStyle(fontSize: 9),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xffF5EA5A),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 29,
                        width: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xffF5EA5A),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Color(0xffF5EA5A),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 222, 222),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF5EA5A),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const CircleAvatar(
            radius: 15,
            backgroundColor: Color.fromARGB(255, 226, 223, 117),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://images.pexels.com/photos/8911771/pexels-photo-8911771.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 230),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      'Vegi',
                                      style: TextStyle(
                                          fontSize: 23,
                                          color: Colors.white,
                                          shadows: [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 5,
                                              offset: Offset(3, 3),
                                            )
                                          ]),
                                    ),
                                  ),
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30)),
                                    color: Color(0xffF5EA5A),
                                  ),
                                )),
                            // ignore: prefer_const_constructors
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 80, top: 20),
                              child: Text(
                                "30% Off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[100],
                                    fontSize: 40,
                                    shadows: [
                                      Shadow(
                                        color: Colors.white,
                                        blurRadius: 5,
                                        offset: Offset(1, 1),
                                      )
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 70, top: 2),
                              child: Text(
                                'On all Vegetables',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(child: Text('')),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Herbal Seasoning',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Fresh Fruits',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'view all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
