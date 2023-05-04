import 'package:flutter/material.dart';
import 'package:food_app/provider/product_provider.dart';
import 'package:food_app/screens/home_screen/drawer_side.dart';
import 'package:food_app/screens/search/search.dart';
import 'package:provider/provider.dart';
import './single_product.dart';
import 'package:food_app/config/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductProvider productProvider;
  Widget buildHerbsProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Herbal Seasoning',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Search()));
                },
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                )),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvider.getHerbsProductDataList.map(
              (herbsProductData) {
                return SingleProduct(
                    pdtImage: herbsProductData.productImage,
                    pdtName: herbsProductData.productName,
                    pdtPrice: herbsProductData.productPrice,
                    onTap: () {});
              },
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget buildFreshFruitsProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Fresh Fruits',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Search()));
                },
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                )),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvider.getFreshFruitsDataList.map(
              (freshFruitsData) {
                return SingleProduct(
                    pdtImage: freshFruitsData.productImage,
                    pdtName: freshFruitsData.productName,
                    pdtPrice: freshFruitsData.productPrice,
                    onTap: () {});
              },
            ).toList(),
          ),
        ),
      ],
    );
  }

  Widget buildDryFruitsProduct() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Dry Fruits',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Search()));
                },
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                )),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvider.getDryFruitsDataList.map(
              (dryFruitsData) {
                return SingleProduct(
                    pdtImage: dryFruitsData.productImage,
                    pdtName: dryFruitsData.productName,
                    pdtPrice: dryFruitsData.productPrice,
                    onTap: () {});
              },
            ).toList(),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fetchHerbsProductData();
    productProvider.fetchFreshFruitsData();
    productProvider.fetchDryFruitsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
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
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.search,
                    size: 17,
                    color: Colors.black,
                  ),
                )),
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
              buildHerbsProduct(),
              buildFreshFruitsProduct(),
              buildDryFruitsProduct(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     Padding(
              //       padding: EdgeInsets.only(top: 10),
              //       child: Text(
              //         'Herbal Seasoning',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //     Padding(
              //       padding: EdgeInsets.only(top: 10),
              //       child: Text(
              //         'view all',
              //         style: TextStyle(color: Colors.grey),
              //       ),
              //     ),
              //   ],
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: productProvider.getHerbsProductDataList.map((herbsProductData){
              //       return   SingleProduct(
              //           pdtImage:
              //               herbsProductData.productImage,
              //           pdtName: herbsProductData.productName,
              //           pdtPrice: herbsProductData.productPrice,
              //           onTap: () {});
              //     },).toList(),
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     Padding(
              //       padding: EdgeInsets.only(top: 10),
              //       child: Text(
              //         'Fresh Fruits',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //     Padding(
              //       padding: EdgeInsets.only(top: 10),
              //       child: Text(
              //         'view all',
              //         style: TextStyle(color: Colors.grey),
              //       ),
              //     ),
              //   ],
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: productProvider.getFreshFruitsDataList.map((freshFruitsData){
              //       return   SingleProduct(
              //           pdtImage:
              //               freshFruitsData.productImage,
              //           pdtName: freshFruitsData.productName,
              //           pdtPrice: freshFruitsData.productPrice,
              //           onTap: () {});
              //     },).toList(),
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     const Padding(
              //       padding: EdgeInsets.only(top: 10),
              //       child: Text(
              //         'Dry Fruits',
              //         style: TextStyle(fontWeight: FontWeight.bold),
              //       ),
              //     ),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.of(context).push(MaterialPageRoute(
              //             builder: ((context) => const Search())));
              //       },
              //       child: const Text(
              //         'view all',
              //         style: TextStyle(color: Colors.grey),
              //       ),
              //     )
              //   ],
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: productProvider.getDryFruitsDataList.map(
              //       (dryFruitsData) {
              //         return SingleProduct(
              //             pdtImage: dryFruitsData.productImage,
              //             pdtName: dryFruitsData.productName,
              //             pdtPrice: dryFruitsData.productPrice,
              //             onTap: () {});
              //       },
              //     ).toList(),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
