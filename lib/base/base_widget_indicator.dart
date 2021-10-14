import 'package:flutter/material.dart';

class IndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("进度条"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20.0),
                child: LinearProgressIndicator(
                  ///指示器的颜色
                  backgroundColor: Colors.grey[200],

                  ///指示器进度条颜色
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                )),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: 0.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: 0.5,
                ///圆形进度条的粗细
                strokeWidth: 4.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                 ///圆形进度条的粗细
                strokeWidth: 4.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
