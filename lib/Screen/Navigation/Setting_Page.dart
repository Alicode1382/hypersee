import 'package:flutter/material.dart';

class Setting_page extends StatefulWidget {
  const Setting_page({Key? key}) : super(key: key);

  @override
  _Setting_pageState createState() => _Setting_pageState();
}

class _Setting_pageState extends State<Setting_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("seetting page"),
      ),
    );
  }
}
