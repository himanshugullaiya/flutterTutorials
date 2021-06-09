import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart'; // this is a plugin

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        // primaryTextTheme: GoogleFonts.latoTextTheme()), //only for primary
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(), //default route
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
