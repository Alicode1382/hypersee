import 'package:flutter/material.dart';
import 'package:hypersee/Full_Course_Drinkscreen/Drink_Screen.dart';

import '../Home_Page.dart';
import 'Categories_Page.dart';
import 'Favorite_Page.dart';
import 'Search_Page.dart';
import 'Setting_Page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageStorageBucket bucket = new PageStorageBucket();

  Widget current_screen = Homepage();

  int currenttab = 0;
  final List<Widget> screens = [
    Categories_page(),
    Setting_page(),
    Favorite_page(),
    Search_page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: current_screen),
      floatingActionButton: FloatingActionButton(
        hoverColor: Color(0xffBE1E63) ,
        onPressed: () {
          setState(() {
            current_screen = Homepage();

            currenttab = 0;
          });
        },
        child: Icon(Icons.home , size: 35,)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: new Container(
          height: 60,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => Setting_page(),));
                        currenttab = 1;
                      });
                    },
                    minWidth: 40,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: currenttab == 1 ? Color(0xffBE1E63)  : Colors.grey,
                        ),
                        new Text("تنظیمات")
                      ],
                    ),
                  ),
                  new MaterialButton(
                    onPressed: () {
                      setState(() {
                       Navigator.push(context, new MaterialPageRoute(builder: (context) => Categories_page(),));
                        currenttab = 2;

                      });
                    },
                    minWidth: 40,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.category,
                          color: currenttab == 2 ? Color(0xffBE1E63)  : Colors.grey,
                        ),
                        new Text("دسته بندی")
                      ],
                    ),
                  ),
                ],
              ),
              new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => Search_page(),));
                        currenttab = 3;
                      });
                    },
                    minWidth: 40,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currenttab == 3 ? Color(0xffBE1E63)  : Colors.grey,
                        ),
                        new Text("جستجو")
                      ],
                    ),
                  ),
                  new MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, new MaterialPageRoute(builder: (context) => Favorite_page(),));
                        currenttab = 4;
                      });
                    },
                    minWidth: 40,
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: currenttab == 4 ? Color(0xffBE1E63) : Colors.grey,
                        ),
                        new Text("علاقه مندی")
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




