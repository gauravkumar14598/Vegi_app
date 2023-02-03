import 'package:flutter/material.dart';
import 'package:food_app/config/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  Widget listTile({required IconData icon, required String title}) {
    return Column(
      children: [
        const Divider(height: 1,),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: primaryColor,
        // drawer: DrawerSide(),
        appBar: AppBar(
          title: Text(
            'My Profile',
            style: TextStyle(color: textColor),
          ),
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        // Stack is very imp here bcz agar circle ko bich me lena h dono ke to column nhi kr payega
        body: Stack(children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
                  height: 700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ScaffoldBack,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: ListView(
                    children: [
                      SizedBox(
                        width: 250,
                        height: 80,
                        // color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Gaurav Kumar', style: TextStyle(fontWeight: FontWeight.bold, color: textColor, fontSize: 15),),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text('user@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, color: textColor, fontSize: 15),),
                                ],
                              ),
                            ),
                           CircleAvatar(
                            radius: 15,
                            backgroundColor: primaryColor,
                            child: CircleAvatar(
                              radius: 12,
                              child: Icon(
                                Icons.edit,
                                color: primaryColor,
                              ),
                            ),
                           ) 
                          ]),
                        ),
                      ),
                      listTile(icon: Icons.shop, title: "My Orders"),
                      listTile(icon: Icons.location_city, title: "My Delivery Address"),
                      listTile(icon: Icons.person, title: "Refer A Friend"),
                      listTile(icon: Icons.file_copy, title: "Terms & Conditions"),
                      listTile(icon: Icons.policy, title: "Privacy Policy"),
                      listTile(icon: Icons.addchart, title: "About"),
                      listTile(icon: Icons.exit_to_app, title: "Log Out"),
                    ],
                  ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 15),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: primaryColor,
              child: const CircleAvatar(
                radius: 45,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=400"),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
