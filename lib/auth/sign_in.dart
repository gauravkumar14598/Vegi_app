import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Container(
        // To set background image
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/myimage.jpg'),
          ),
        ),

        child: Column(
          // To align my sign in Box
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              // color: Colors.red,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Sign in to continue',
                    style: TextStyle(fontSize: 15),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'Vegi',
                    style: const TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 15,
                          color: Color.fromARGB(255, 5, 55, 8),
                          offset: Offset(
                            5,
                            5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'By signing in you are agreeing to our',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        'Terms and Privacy Policy',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
