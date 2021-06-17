import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 Days of Flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
