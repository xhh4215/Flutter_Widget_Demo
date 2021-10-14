import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.redAccent,
        child: const Align(
          alignment: Alignment.topRight,
          ///widthFactor 该参数指定的是align的大小和内部的子组件的大小关系
          widthFactor: 2,
          heightFactor: 2,
          child: FlutterLogo(
            size: 120,
          ),
        ),
      ),
    );
  }
}
