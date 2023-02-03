import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen/drawer_side.dart';
import './single_product.dart';
import 'package:food_app/config/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ScaffoldBack,
        drawer: const DrawerSide(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: primaryColor,
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
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(right: 230),
                                child: Container(
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30)),
                                    color: primaryColor,
                                  ),
                                  child: const Center(
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
                                    shadows: const [
                                      Shadow(
                                        color: Colors.white,
                                        blurRadius: 5,
                                        offset: Offset(1, 1),
                                      )
                                    ]),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 70, top: 2),
                              child: Text(
                                'On all Vegetables',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ],
                        )),
                    const Expanded(child: Text('')),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Herbal Seasoning',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
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
                    SingleProduct(
                        pdtImage:
                            "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/266128_2200-732x549.jpg",
                        pdtName: "Fresh Basil",
                        onTap: () {}),
                        SingleProduct(
                        pdtImage:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbRjZN8Ort3UvIqzbzmO_FFMrgQYBK4Pg9Uw&usqp=CAU",
                        pdtName: "Red Cabbage",
                        onTap: () {}),
                        SingleProduct(
                        pdtImage:
                            "https://blog-images-1.pharmeasy.in/blog/production/wp-content/uploads/2021/04/23175719/shutterstock_440493100-1.jpg",
                        pdtName: "Carrot",
                        onTap: () {}),
                        SingleProduct(
                        pdtImage:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG0-T6-qO8hulXFtnXdAJhQNeoINnM6HRBDQ&usqp=CAU",
                        pdtName: "Fennel",
                        onTap: () {}),
    
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Fresh Fruits',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
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
                    SingleProduct(pdtImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ868djAR5mIlAFnnjF---4paarCg48aQTr-g&usqp=CAU", pdtName: "Apple", onTap: (){}),
                    SingleProduct(pdtImage: "https://www.urbangroc.com/wp-content/uploads/2022/07/Nashpathi-Pears.jpg", pdtName: "Pears", onTap: (){}),
                    SingleProduct(pdtImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ42PHjua13R2ys4EAUYoV8hlAsvFpL6gA-Q&usqp=CAU", pdtName: "Kiwi", onTap: (){}),
                    SingleProduct(pdtImage: "https://img.freepik.com/free-photo/exotic-delicious-pomegranate-white-background_144627-12571.jpg?w=2000", pdtName: "Pomegranate", onTap: (){}),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Dry Fruits',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'view all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  SingleProduct(pdtImage: "https://www.kiranamarket.com/pub/media/catalog/product/cache/03ef87980eaad8d4b708b267224682e1/s/a/saltedpista1_1.jpg", pdtName: "Pista", onTap: (){}),
                  SingleProduct(pdtImage: "https://i0.wp.com/paleoindiafood.com/wp-content/uploads/2020/07/Paleo-India-Cashew-W320.jpg?fit=1000%2C1001&ssl=1", pdtName: "Cashew", onTap: (){}),
                  SingleProduct(pdtImage: "https://cdn.britannica.com/04/194904-050-1B92812A/Raw-Food-Almond-food-Nut-Snack.jpg", pdtName: "Badam", onTap: (){}),
                  SingleProduct(pdtImage: "https://frugivore-storage.s3.amazonaws.com/media/package/img_one/2020-12-03/Fresh_Blueberry.jpg", pdtName: "BlueBerry", onTap: (){}),
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
