import 'package:flutter/material.dart';

class MyCliper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class ChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset(
      "images/pic_glass.png",
      width: 60.0,
    );
    return Center(
      child: Padding(
        padding: EdgeInsets.all(100.0),
        child: Column(
          children: <Widget>[
            avatar,
            //裁剪为圆形
            ClipOval(
              child: avatar,
            ),
            //裁剪为圆角矩形
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: avatar,
                  ),
                ),
                Text(
                  "你好世界",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            DecoratedBox(
                decoration: BoxDecoration(
                color: Colors.red,
            ),
            child: ClipRect(
              clipper: MyCliper(),
              child: avatar,
            ),)

          ],
        ),
      ),
    );
  }
}
