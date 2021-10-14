import 'package:flutter/material.dart';

class MyIcons {
  static const IconData wechat =
      IconData(0xe646, fontFamily: 'myIcon', matchTextDirection: true);
}

class IamgePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("图片及图标的使用学习")),
      body: Center(
        child: Column(
          children: <Widget>[
            /// width 图片宽度
            /// height 图片高度
            /// color 图片颜色
            /// colorBlendMode 混合模式
            /// fit 缩放模式
            /// alignment 对其方式
            /// repeat 重复方式
            const Image(
              image: AssetImage("images/pic_man.png"),
              width: 100.0,
            ),
            Row(
              children: <Widget>[
                ///fill 会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形
                Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.fill,
                ),

                /// contain：这是图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形。
                Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.contain,
                ),

                ///cover：会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁。
                Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                  width: 60.0,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                  height: 60.0,
                  fit: BoxFit.cover,
                ),
                Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                  width: 60.0,
                  height: 60.0,
                  fit: BoxFit.fitWidth,
                ),
                Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                  width: 60.0,
                  height: 100.0,
                  fit: BoxFit.fitHeight,
                ),

                ///none：图片没有适应策略，会在显示空间内显示图片，如果图片比显示空间大，则显示空间只会显示图片中间部分。
                Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                  width: 60.0,
                  height: 100.0,
                  fit: BoxFit.none,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.accessible, color: Colors.green),
                Icon(Icons.error, color: Colors.green),
                Icon(Icons.fingerprint, color: Colors.green),
                Icon(MyIcons.wechat, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
