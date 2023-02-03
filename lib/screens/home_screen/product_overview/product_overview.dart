import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

class ProductOverview extends StatefulWidget {
  final String pdtName;
  final String pdtImage;
  const ProductOverview({super.key, required this.pdtName, required this.pdtImage});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  bonntonNavigationBar(
      {required Color backgroundColor,
      required Color color,
      required MaterialColor iconColor,
      required String title,
      required IconData iconData}) {
    return Expanded(
      child: Container(
        height: 50,
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 17,
                color: iconColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                title,
                style: TextStyle(color: color),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ScaffoldBack,
        bottomNavigationBar: Row(
          children: [
            bonntonNavigationBar(
              backgroundColor: textColor,
              color: Colors.white,
              iconColor: Colors.grey,
              title: "Add To WishList",
              iconData: Icons.favorite_outline,
            ),
            bonntonNavigationBar(
              backgroundColor: primaryColor,
              color: textColor,
              iconColor: Colors.grey,
              title: "Go To Cart",
              iconData: Icons.shop_outlined,
            ),
          ],
        ),
        // drawer: DrawerSide(),
        appBar: AppBar(
          title: Text(
            'Product Overview',
            style: TextStyle(color: textColor),
          ),
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: textColor),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Column(children: [
                    ListTile(
                      title: Text(widget.pdtName),
                      subtitle: const Text('₹50'),
                    ),
                    Container(
                      height: 250,
                      padding: const EdgeInsets.all(40),
                      child: Image.network(widget.pdtImage),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: Text(
                        'Available Options',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: const [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.pink,
                                ),
                                Radio(
                                  value: "value",
                                  groupValue: "groupValue",
                                  onChanged: null,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Text('₹ 50'),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: primaryColor,
                                size: 16,
                              ),
                              Text(
                                'ADD',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ]),
                )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(2),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About This Product',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sweet basil (Ocimum basilicum) plays a role in many Mediterranean, and particularly Italian, cuisines. It forms the basis of pesto and adds a distinctive flavor to salads, pasta, pizza, and other dishes. Indonesian, Thai, and Vietnamese cuisines also feature this herb.',
                      style: TextStyle(color: textColor, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
