import 'package:flutter/material.dart';

class SwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("开关按钮和复选框"),),
      body:SwitchAndCheckBoxTestRoute(),
    );
  }

}


class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SwitchAndCheckBoxTestRouteState();
  }

}

class _SwitchAndCheckBoxTestRouteState
    extends State<SwitchAndCheckBoxTestRoute> {
  bool _isChecked = true;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(value: _isChecked, onChanged: (value) {
          setState(() {
            _isChecked = value;
          });
        }),
        Checkbox(
            activeColor: Colors.red,
            value: isSelected, onChanged: (value) {
          setState(() {
            isSelected = value!;
          });
        })
      ],
    );
  }

}