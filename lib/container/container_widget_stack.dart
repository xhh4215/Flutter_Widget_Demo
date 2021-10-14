import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StackPage"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              child: Text(
                "Hello World",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            Positioned(
              left: 18.0,
              child: Text("You Friend"),
            ),
            Positioned(
              top: 18.0,
              child: Text("I m Jack"),
            )
          ],
        ),
      ),
    );
  }
}
