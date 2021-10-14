import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("按钮的使用学习")),
        body: Column(
          children: <Widget>[
            ///漂浮按钮 默认的阴影和背景颜色
            const ElevatedButton(onPressed: null, child: Text("normal")),

            ///文本按钮
            const TextButton(
              onPressed: null,
              child: Text("submit"),
            ),
            const OutlinedButton(
              onPressed: null,
              child: Text("normal"),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_up),
            ),

            ///ElevatedButton、TextButton、OutlineButton都有一个icon 构造函数，通过它可以轻松创建带图标的按钮
            ElevatedButton.icon(
                onPressed: null,
                icon: const Icon(Icons.send),
                label: const Text("发送")),
            OutlinedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.add),
              label: const Text("添加"),
            )
          ],
        ),
    );
  }
}
