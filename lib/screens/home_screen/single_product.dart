import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';
import 'package:food_app/screens/home_screen/product_overview/product_overview.dart';

class SingleProduct extends StatelessWidget {
  final String pdtImage;
  final String pdtName;
  final int pdtPrice;
  final Function onTap;

  // ignore: prefer_const_constructors_in_immutables
  SingleProduct({super.key, required this.pdtImage, required this.pdtName, required this.onTap, required this.pdtPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      height: 180,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductOverview(pdtName: pdtName, pdtImage: pdtImage, pdtPrice: pdtPrice,),));
            },
            child: Expanded(child:Container(
              height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(pdtImage),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
          ),
          
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pdtName,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$pdtPrice /500 Gram',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 4),
                        height: 29,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          children: [
                            const Text(
                              '50 Gm',
                              style: TextStyle(fontSize: 9),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: primaryColor,
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
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(
                              Icons.remove,
                              size: 15,
                              color: Color(0xffF5EA5A),
                            ),
                            const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                            const Icon(
                              Icons.add,
                              size: 15,
                              color: Color(0xffF5EA5A),
                            ),
                          ],
                        ),
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
}