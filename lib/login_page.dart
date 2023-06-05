import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome back you\'ve been missed !',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // //Username textfield
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 25.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.white),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.grey.shade400),
            //         ),
            //         fillColor: Colors.grey.shade200,
            //         filled: true),
            //   ),
            // ),

            //Username textfield
            MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureTect: false),

            const SizedBox(
              height: 10,
            ),

            //Password textfield
            MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureTect: true),

            const SizedBox(
              height: 20,
            ),

            MyButton(onTap: signInUser),

            const SizedBox(
              height: 20,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password ?',
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Or continue with'),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/presentation3.jpg",
                    height: 100,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
