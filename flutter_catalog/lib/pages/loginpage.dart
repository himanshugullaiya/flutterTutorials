import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            SizedBox(height: 20.0),
            Text("Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              // padding: const EdgeInsets.all(16.0),  //everywhere padding
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      hintStyle:
                          TextStyle(height: 2, fontWeight: FontWeight.bold),
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true, //wont show text
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      hintStyle:
                          TextStyle(height: 2, fontWeight: FontWeight.bold),
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text('Login'),
              style: TextButton.styleFrom(),
              onPressed: () {
                print("I am Hero");
              },
            ),
          ],
        ));
  }
}
