import 'package:flutter/material.dart';

/// textDirection:表示的是组件水平布局方向
/// mainAxisSize：表示的是row在水平方向占用的空间 mainAxisSize.max表示的是
/// 尽可能的多占空间 无论子组件大小 row都和屏幕一样宽 mainAxisSize.min 类似Android的
/// wrap_content 的线性布局
class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("容器组件 Row学习使用"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            /// mainAxisAlignment 表示的是子组件在水平方向的对其方式
            /// 在row 的宽度比子组件的宽度大的时候才有用
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("hello world"), Text("i m jack")],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello world"),
              Text("I m jack"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text("hello world"),
              Text("i m jack"),
            ],
          ),
          Row(
            /// 底部对齐
            crossAxisAlignment: CrossAxisAlignment.start,
            ///指定从底向顶布局还是从顶到底布局
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text("hello world",style: TextStyle(fontSize: 30.0),),
              Text("i m jack"),
            ],
          ),

        ],
      ),
    );
  }
}
