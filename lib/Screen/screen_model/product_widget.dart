import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product_widget extends StatelessWidget {
  const Product_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
              width: 130,
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                      width: 100,
                      height: 100,
                      child: Stack(
                        children: [
                          Image.asset("Assets/Group 41.png"),
                          new Column(
                            children: [
                              Expanded(
                                child: Container(
                                    padding: EdgeInsets.only(right: 10),
                                    margin: EdgeInsets.only(top: 85),
                                    child: Container(
                                      height: 50,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF33A3A),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          new Text(
                                            "15%",
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          new Text(
                                            "تخفیف",
                                            style: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Container(
                                height: 20,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 80,
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.only(left: 13),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [new Text("نوشابه")],
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ));
                },
              )),
        ),
      ],
    );
  }
}
