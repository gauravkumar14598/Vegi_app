import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

import '../../widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: const Text('Total Amount'),
        subtitle: Text(
          '₹ 170.00',
          style: TextStyle(color: Colors.green[900]),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            onPressed: null,
            child: const Text('Submit'),
            color: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      backgroundColor: ScaffoldBack,
      appBar: AppBar(
        title: Text(
          "Review Cart",
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          SingleItem(isBool: true,),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
