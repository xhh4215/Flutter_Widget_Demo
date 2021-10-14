import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("列表的练习使用"),
      ),
      body: dividerList(context),
    );
  }

  /// 使用ListView的默认的构造器来创建
  /// 使用的场景是使用ListView显示少量的数据的时候
  Widget commonList() {
    return ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: const <Widget>[
          Text("I  m dedicating everyday to you"),
          Text("I  m dedicating everyday to you"),
          Text("I  m dedicating everyday to you"),
          Text("I  m dedicating everyday to you"),
          Text("I  m dedicating everyday to you"),
          Text("I  m dedicating everyday to you"),
          Text("I  m dedicating everyday to you"),
        ]);
  }

  ///是用listView的Builder构造函数来创建列表
  Widget builderList(BuildContext context) {
    return ListView.builder(
      itemCount: 100,

      ///强制高度为50.0
      itemExtent: 60.0,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("$index"),
        );
      },
    );
  }
  ///创建带分割线的列表
  Widget dividerList(BuildContext context) {
    Widget divider1 = const Divider(
      color: Colors.blue,
    );
    Widget divider2 = const Divider(
      color: Colors.green,
    );
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("$index"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? divider1 : divider2;
        },
        itemCount: 100);
  }
}
