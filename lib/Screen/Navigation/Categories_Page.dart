

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hypersee/Helper/Utils.dart';
import 'package:hypersee/Full_Course_Drinkscreen/Drink_Screen.dart';
import 'package:hypersee/Screen/Home_Page.dart';
import 'package:hypersee/Screen/screen_model/Categori_model.dart';

class Categories_page extends StatefulWidget {
  const Categories_page({Key? key}) : super(key: key);

  @override
  _Categories_pageState createState() => _Categories_pageState();
}

class _Categories_pageState extends State<Categories_page> {

  List<Categori_model> categori = Utils.getmockedCategori();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("اصفهان ، خیابان شهید ..." , style: new TextStyle(fontSize: 12),),
        centerTitle: true,
        backgroundColor:  Color(0xffBE1E63),
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
      body: Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20,),
            Expanded(child:
                ListView.builder(itemCount: categori.length,itemBuilder: (context, index) {
                  return Container(
                    margin:  EdgeInsets.all(20),
                    height: 100,
                    child: Stack(
                      children: [
                        GestureDetector(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                           return Drink_Screen();
                          },));
                        },child: Image.asset(categori[index].img)),

                       Column(

                            children: [
                              SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 250),
                                child: Image.asset(categori[index].imgicon),
                              ),

                            ],
                          ),


                        new Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20 , left: 200),
                              child: new Text(categori[index].text , style: new TextStyle(color: Colors.white),),
                            ),

                          ],
                        ),
                        new Row(
                          children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 40 , left: 180),
                             child: new Text(categori[index].text2 , style: new TextStyle(color: Colors.white),),
                           )

                          ],
                        ),
                      ],
                    ),
                  );
                },)
            ),
          ],
        ),
      )
    );
  }
}

