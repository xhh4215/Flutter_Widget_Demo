import 'package:flutter/material.dart';

class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("容器组件 Row学习使用"),
      ),
      body: Column(
        ///表示的是组件在纵轴方向的对齐方式
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 30.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30.0,
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
