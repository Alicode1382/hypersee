import 'package:flutter/material.dart';

class Abmive extends StatelessWidget {
  const Abmive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 335,
        height: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "Assets/Group 3305.png"),
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
                    "آبمیوه",
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
            )
          ],
        ),
      ),
    );
  }
}