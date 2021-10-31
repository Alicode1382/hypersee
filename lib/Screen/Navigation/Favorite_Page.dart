import 'package:flutter/material.dart';

class Favorite_page extends StatefulWidget {
  const Favorite_page({Key? key}) : super(key: key);

  @override
  _Favorite_pageState createState() => _Favorite_pageState();
}

class _Favorite_pageState extends State<Favorite_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new  Text("Favorite page"),
      ),
    );
  }
}
