import 'package:flutter/material.dart';

class Categories_widget extends StatelessWidget {
  const Categories_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 75,
          height: 80,
          decoration: BoxDecoration(
              color: Color(0xffCF3A3A),
              borderRadius: BorderRadius.circular(10)),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "Assets/iconfinder_drink_glass_liquor_vine_wine_392508.png"),
              new Text(
                "نوشیدنی",
                style: new TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          width: 75,
          height: 80,
          decoration: BoxDecoration(
              color: Color(0xff21A248),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Assets/iconfinder_food-drink-36_809001.png"),
              new Text(
                "کالای اساسی",
                style: new TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
        Container(
          width: 75,
          height: 80,
          decoration: BoxDecoration(
              color: Color(0xff46177A),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Assets/Layer_4.png"),
              new Text(
                "شیرینی",
                style: new TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          width: 75,
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xffBE1E63),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "Assets/iconfinder_Restaurant_restaurant_food_meat_chicken_6613246.png"),
              new Text(
                "پروتئین",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}
