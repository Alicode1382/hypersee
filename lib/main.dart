import 'package:flutter/material.dart';

import 'package:hypersee/Full_Course_Drinkscreen/Drink_Screen.dart';
import 'package:hypersee/Screen/Home_Page.dart';
import 'package:hypersee/Screen/Navigation/Home.dart';
import 'package:hypersee/Screen/screen_model/product_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       backgroundColor: Colors.white,
        primarySwatch: Colors.purple,

        fontFamily: 'Vazir'

      ),
      home: Directionality(textDirection: TextDirection.rtl, child:Home())
    );
  }
}


