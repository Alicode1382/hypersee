

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:hypersee/Full_Course_Drinkscreen/Abmive.dart';
import 'package:hypersee/Full_Course_Drinkscreen/Doogh.dart';

import 'package:hypersee/Screen/Energy_products.dart';
import 'package:hypersee/Screen/Navigation/Home.dart';

class Drink_Screen extends StatefulWidget {
  const Drink_Screen({Key? key}) : super(key: key);

  @override
  _Drink_ScreenState createState() => _Drink_ScreenState();
}

class _Drink_ScreenState extends State<Drink_Screen> {
  bool change_arrow_icon = true;

  bool change_container = true;

  double heightbox = 120;

  double widthbox = 335;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text(
            "نوشیدنی ها",
            style: new TextStyle(fontSize: 18),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffBE1E63),
          elevation: 4,
          actions: [
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
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: new Text(
                  "نوشیدنی",
                  style: new TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Opacity(
                  opacity: 0.3,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 200,
                      color: Color(0xffFFDEFA),
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/72668-948125.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height - 52,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                      ),
                      Positioned(
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45),
                              topLeft: Radius.circular(45),
                            ),
                            color: Color(0xffFEF5ED)),
                        height: MediaQuery.of(context).size.height - 80,
                        width: MediaQuery.of(context).size.width,
                      )
                      ),
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 180),
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Center(
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.fastOutSlowIn,
                                      width: widthbox,
                                      height: heightbox,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "Assets/Group 3302.png"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "Assets/Group 41.png",
                                                height: 100,
                                                width: 100,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 30, right: 30),
                                                child: new Text(
                                                  "گاز دار",
                                                  style: new TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 65, right: 45),
                                                child: new Text(
                                                  "محصول 50 ",
                                                  style: new TextStyle(
                                                      color: Colors.white),
                                                ),
                                              )
                                            ],
                                          ),

                                          new Column(
                                            children: [
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 30, left: 140),
                                                  child: IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          change_arrow_icon =
                                                              !change_arrow_icon;
                                                          heightbox =
                                                              heightbox == 120
                                                                  ? 160
                                                                  : 120;
                                                          widthbox =
                                                              widthbox == 335
                                                                  ? 335
                                                                  : 335;
                                                        });
                                                      },
                                                      icon: Icon(
                                                        (change_arrow_icon ==
                                                                false)
                                                            ? Icons
                                                                .arrow_downward
                                                            : Icons
                                                                .arrow_upward,
                                                        color: Colors.white,
                                                        size: 30,
                                                      )))
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 120),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                   child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                                                   children: [
                                                     Container(
                                                       width: 86,
                                                       height: 35,
                                                        padding: EdgeInsets.all(10),
                                                        decoration: BoxDecoration(
                                                          border: Border.all(width: 1 , color: Colors.white),
                                                          borderRadius: BorderRadius.circular(10)
                                                        ),
                                                       child: new Text("ماءالشعیر" , textAlign: TextAlign.center,style: new TextStyle(color: Colors.white),),
                                                     ),
                                                     Container(
                                                       width: 86,
                                                       height: 35,
                                                       padding: EdgeInsets.all(10),
                                                       decoration: BoxDecoration(
                                                           border: Border.all(width: 1 , color: Colors.white),
                                                           borderRadius: BorderRadius.circular(10)
                                                       ),
                                                       child: new Text("نوشابه" , textAlign: TextAlign.center, style: new TextStyle(color: Colors.white),),
                                                     ),
                                                     GestureDetector(
                                                       onTap: () {
                                                         Navigator.push(context, new MaterialPageRoute(builder: (context) => Energy_products(),));
                                                       },
                                                       child: Container(
                                                         width: 86,
                                                         height: 35,

                                                         padding: EdgeInsets.all(10),
                                                         decoration: BoxDecoration(
                                                           color: Colors.white,
                                                             border: Border.all(width: 1 , color: Colors.white),
                                                             borderRadius: BorderRadius.circular(10)
                                                         ),
                                                         child: new Text("انرژی زا" , textAlign: TextAlign.center, style: TextStyle(color: Colors.red), ),
                                                       ),
                                                     )
                                                   ],

                                                   ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Abmive(),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Doogh(),
                                ],
                              ),
                            ),
                          )),
                    ],
                  ))
            ],
          ),
        ));
  }
}




