import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView练习使用"),
      ),
      body: updateGridView(),
    );
  }

  Widget commonGridView() {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

          ///纵轴元素的个数
          crossAxisCount: 3,
          childAspectRatio: 1.0),
      children: const <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast),
      ],
    );
  }

  Widget updateGridView() {
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //指定最大的宽度
          maxCrossAxisExtent: 120.0,
          //指定宽高比
          childAspectRatio: 2.0),
      children: const <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast),
      ],
    );
  }



}
