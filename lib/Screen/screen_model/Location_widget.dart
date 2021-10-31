import 'package:flutter/material.dart';

class Location_widget extends StatelessWidget {
  const Location_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              "Assets/map-with-gps-destination-point_34645-903.png",
              width: 150,
              height: 150,
            ),
            new Text(
              "برای استفاده از خدمات وسفارش محصولات لطفا موقعیت\n"
                  " مکانی خود را در نقشه مشخص کنید  ",
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 39,
              margin: EdgeInsets.only(bottom: 40, right: 200),
              decoration: BoxDecoration(
                  color: Color(0xff21A248),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: new Text(
                    "ثبت موقعیت مکانی",
                    style: new TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
