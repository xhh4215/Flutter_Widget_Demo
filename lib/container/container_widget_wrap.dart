import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局学习"),
      ),
      body: Container(
        child: Wrap(

          ///主轴水平方向间距
          spacing: 8.0,

          ///纵轴垂直方向间距
          runSpacing: 4.0,

          ///主轴方向的对齐方式
          alignment: WrapAlignment.center,

          children: const <Widget>[
            Chip(
              label: Text("Hamilton"),
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("A"),
              ),
            ),
            Chip(
              label: Text("Lafayette"),
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("M"),
              ),
            ),
            Chip(
              label: Text("Lafayette"),
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("M"),
              ),
            ),
            Chip(
              label: Text("Lafayette"),
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("M"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
