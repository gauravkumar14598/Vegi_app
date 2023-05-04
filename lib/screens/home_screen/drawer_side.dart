import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen/my_profile/my_profile.dart';
import 'package:food_app/screens/review_cart/review_cart.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({super.key});
  
  Widget listTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xffF5EA5A),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 44,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 42,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Welcome Guest',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('Hello'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            listTile(
              icon: Icons.home,
              title: "Home",
              onTap: () {},
            ),
            listTile(
              icon: Icons.shop,
              title: "Review Cart",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ReviewCart();
                    },
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.person,
              title: "My Profile",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MyProfile();
                    },
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.notification_add,
              title: "Notification",
              onTap: () {},
            ),
            listTile(
              icon: Icons.star,
              title: "Rating & Review",
              onTap: () {},
            ),
            listTile(
              icon: Icons.favorite,
              title: "Wishlist",
              onTap: () {},
            ),
            listTile(
              icon: Icons.copy,
              title: "Raise a Complaint",
              onTap: () {},
            ),
            listTile(
              icon: Icons.format_quote_sharp,
              title: "FAQs",
              onTap: () {},
            ),
            Container(
              height: 350,
              padding: const EdgeInsets.symmetric(horizontal: 22),
              // color: Colors.pink,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Contact Support',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const [
                        Text("Call us:"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("+91987654321"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text("Mail us:"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("xyz@gmail.com"),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
