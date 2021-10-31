import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hypersee/Screen/Navigation/Categories_Page.dart';
import 'package:hypersee/Screen/Navigation/Favorite_Page.dart';
import 'package:hypersee/Screen/Navigation/Search_Page.dart';
import 'package:hypersee/Screen/screen_model/Location_widget.dart';
import 'package:hypersee/Screen/screen_model/Shop_Gym_widget.dart';
import 'package:hypersee/Screen/screen_model/categories_widget.dart';
import 'package:hypersee/Screen/screen_model/product_widget.dart';

import 'Navigation/Setting_Page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    width: 65,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xffBE1E63),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Image.asset(
                          "Assets/Shopping-cart.png",
                          height: 19,
                          width: 19,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Image.asset("Assets/logo_text.png"),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Image.asset(
                      "Assets/Page-1.png",
                      width: 30,
                      height: 30,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Text(
                  "دیدن همه",
                  style: new TextStyle(fontSize: 15),
                ),
                Container(
                  width: 155,
                  height: 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffF1F1F1), Color(0xffDCDCDC)])),
                ),
                new Text(
                  "پیشنهاد های ویژه",
                  style: TextStyle(color: Color(0xffBE1E63), fontSize: 15),
                ),
              ],
            ),

            Product_widget(),
            SizedBox(
              height: 20,
            ),
            // ویچت برای دسته بندی نوشته شده
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 109,
                  height: 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffDEDEDE), Color(0xffFFFFFF)])),
                ),
                new Text(
                  "دسته بندی ها",
                  style: new TextStyle(fontSize: 20, color: Color(0xffBE1E63)),
                ),
                Container(
                  width: 109,
                  height: 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffFFFFFF), Color(0xffDEDEDE)])),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Categories_widget(),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 109,
                  height: 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffDEDEDE), Color(0xffFFFFFF)])),
                ),
                new Text(
                  "موقعیت مکانی",
                  style: new TextStyle(fontSize: 20, color: Color(0xffBE1E63)),
                ),
                Container(
                  width: 109,
                  height: 2,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xffFFFFFF), Color(0xffDEDEDE)])),
                ),
              ],
            ),

            Location_widget(),

            Shop_Gym_widget(),

            Container(
              width: 335,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("Assets/1611173806793.png"))),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
