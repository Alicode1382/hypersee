import 'package:flutter/material.dart';

class Shop_Gym_widget extends StatelessWidget {
  const Shop_Gym_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 157,
          height: 50,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Color(0xffBE1E63),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Color(0xffAE1758), Color(0xffBD1E62)])),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("Assets/iconfinder_Mart_4781827 (1).png"),
              new Text(
                "فروشگاه",
                style: new TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
        Container(
          width: 157,
          height: 50,
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Color(0xff591C9D),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Color(0xff4D158B), Color(0xff561A98)])),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("Assets/iconfinder_crew_2318458.png"),
              new Text(
                "باشگاه",
                style: new TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        )
      ],
    );
  }
}
