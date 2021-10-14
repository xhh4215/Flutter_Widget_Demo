import 'package:flutter/material.dart';

class ScrollerControllerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScrollerControllerPage();
}

class _ScrollerControllerPage extends State<ScrollerControllerPage> {
  ScrollController _controller = ScrollController();

  /// 是否显示返回按钮
  bool showToTopBtn = false;
  String _progress = "0%";

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      //打印滚动的位置
      print(_controller.offset);
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  ///此处做资源释放的操作
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滚动控制"),
      ),
      body: Scrollbar(
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            ///pixels当前滚动位置
            ///maxScrollExtent 最大滚动长度
            ///extentBefore滑出列表上方的长度
            ///extentInside：屏幕中列表的长度
            ///extentAfter：未划入列表的长度
            ///atEdge：是否滑动到边界
            double progress = notification.metrics.pixels /
                notification.metrics.maxScrollExtent;
            setState(() {
              _progress = "${(progress * 100).toInt()}%";
            });
            return false;
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView.builder(
                  itemCount: 100,
                  itemExtent: 50.0,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("$index"),
                    );
                  }),
              CircleAvatar(
                radius: 30.0,
                child: Text(_progress),
                backgroundColor: Colors.black54,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: !showToTopBtn
          ? null
          : FloatingActionButton(
              onPressed: () {
                //返回到顶部的时候执行动画
                _controller.animateTo(.0,
                    duration: Duration(microseconds: 200), curve: Curves.ease);
              },
              child: const Icon(Icons.arrow_upward),
            ),
    );
  }
}
