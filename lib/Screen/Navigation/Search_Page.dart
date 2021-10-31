import 'package:flutter/material.dart';


class Search_page extends StatefulWidget {
  const Search_page({Key? key}) : super(key: key);

  @override
  _Search_pageState createState() => _Search_pageState();
}

class _Search_pageState extends State<Search_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("search page"),
      ),
    );
  }
}
