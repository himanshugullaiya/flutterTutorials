import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(milliseconds: 300));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: SingleChildScrollView(
              child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                  height: 200,
                ),
                SizedBox(height: 24.0),
                Text("Welcome $name",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  // padding: const EdgeInsets.all(16.0),  //everywhere padding
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                          scrollPadding: EdgeInsets.only(bottom: 300),
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            hintStyle: TextStyle(
                                height: 2, fontWeight: FontWeight.bold),
                            labelText: "Username",
                          ),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                          validator: (value) {
                            if (value!.isEmpty)
                              return "Username cannot be Empty";
                            else
                              return null;
                          }),
                      TextFormField(
                          scrollPadding: EdgeInsets.only(
                              bottom: 150), //to scroll up the bottom
                          obscureText: true, //wont show text
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                                height: 2, fontWeight: FontWeight.bold),
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty)
                              return "Password Cannot be Empty";
                            else if (value.length < 6)
                              return "Password must be Greater than 6 Length";
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  child: InkWell(
                    // splashColor: Colors.redAccent,
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: (changeButton ? 50 : 150),
                      height: 50,
                      //you can keep color at one place
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                    ),

                    // ElevatedButton(
                    //   child: Text('Login'),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     // print('hi');
                    //   },
                  ),
                ) // ),
              ],
            ),
          )),
        ));
  }
}
