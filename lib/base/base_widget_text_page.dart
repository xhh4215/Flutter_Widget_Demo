import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text的使用学习")),
      body: Center(
          child: DefaultTextStyle(
        style: const TextStyle(color: Colors.red, fontSize: 20.0),
        textAlign: TextAlign.start,
        child: Column(
          children: <Widget>[
            const Text(
              "Hello World",
              textAlign: TextAlign.left,
              style: TextStyle(
                inherit: false,
                fontFamily: 'Raleway',
                color: Colors.grey
              ),
            ),
            const Text(
              "Hello World I m Jack Hello World I m Jack Hello World I m Jack Hello World I m Jack",

              ///指定最大行数
              maxLines: 1,

              ///多余文本的截断的方式
              overflow: TextOverflow.ellipsis,
            ),
            const Text(
              "Hello World",

              ///相对于当前的字体大小的缩放因子
              textScaleFactor: 1.5,
            ),
            Text(
              "Hello World",

              ///用于指定文本显示的样式 如 颜色 字体 粗细等
              style: TextStyle(

                  ///指定字体的颜色
                  color: Colors.blue,

                  ///指定字体的大小
                  fontSize: 18.0,

                  ///
                  height: 1.2,

                  ///指定字体
                  fontFamily: "Courier",

                  ///指定背景颜色
                  background: Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(text: "Home:"),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(color: Colors.blue),
              )
            ]))
          ],
        ),
      )),
    );
  }
}
