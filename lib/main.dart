import 'package:flutter/material.dart';
import 'package:flutter_base_widget/base/base_widget_image_page.dart';

import 'base/base_widget_button_page.dart';
import 'base/base_widget_indicator.dart';
import 'base/base_widget_input_page.dart';
import 'base/base_widget_switch_page.dart';
import 'base/base_widget_text_page.dart';
import 'container/container_widget_align.dart';
import 'container/container_widget_animatelist.dart';
import 'container/container_widget_chip.dart';
import 'container/container_widget_column.dart';
import 'container/container_widget_constrained.dart';
import 'container/container_widget_gridview.dart';
import 'container/container_widget_listview.dart';
import 'container/container_widget_row.dart';
import 'container/container_widget_scrollercontroller.dart';
import 'container/container_widget_stack.dart';
import 'container/container_widget_wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  Base Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Base Widget Demo'),
      //注册路由表
      routes: {
        "widget_text": (context) => TextPage(),
        "widget_button": (context) => ButtonPage(),
        "widget_image": (context) => IamgePage(),
        "widget_switch": (context) => SwitchPage(),
        "widget_input": (context) => InputLoginPage(),
        "widget_indicator": (context) => IndicatorPage(),
        "widget_container": (context) => ConstraintPage(),
        "widget_row": (context) => RowPage(),
        "widget_column": (context) => ColumnPage(),
        "widget_wrap": (context) => WrapPage(),
        "widget_stack": (context) => StackPage(),
        "widget_align": (context) => AlignPage(),
        "widget_chip": (context) => ChipPage(),
        "widget_listview": (context) => ListViewPage(),
        "widget_scroller_controller": (context) => ScrollerControllerPage(),
        "widget_animate_list": (context) => AnimatedListRoute(),
        "widget_gridview": (context) => GridViewPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = [
      'widget_text',
      'widget_button',
      'widget_image',
      'widget_switch',
      'widget_input',
      'widget_indicator',
      'widget_container',
      'widget_row',
      'widget_column',
      'widget_wrap',
      'widget_stack',
      'widget_align',
      'widget_chip',
      'widget_listview',
      'widget_scroller_controller',
      'widget_animate_list',
      'widget_gridview',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("基础组件的使用练习"),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: list
                    .map((e) => RaisedButton(
                        onPressed: () {
                          toPage(e, context);
                        },
                        child: Text(e)))
                    .toList(),
              ),
            ),
          ),
        ));
  }

  void toPage(String url, BuildContext context) {
    Navigator.of(context).pushNamed(url);
  }
}
