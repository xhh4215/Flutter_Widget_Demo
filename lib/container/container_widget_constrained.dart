import 'package:flutter/material.dart';

/// 在多重限制时候 ，对于minWidth和minHeight来说 取父子中相应数值较大的
class ConstraintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("约束布局"),
      ),

      /// 整个屏幕作为Container的父级 并强制Container变成和屏幕一样大小
      /// 现在设置Container的宽度高度也不管用 应为会强制和屏幕一样大
      // body: Container(
      //   color: Colors.red,
      // ),
      /// 我们强制Center和屏幕一样大 所以Center充满了整个屏幕
      /// Contaienr的大小就是任意的了
      // body: Center(
      //   child: Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.red,
      //   ),
      // ),
      ///Align同样也会告诉Container你可以变成任意的大小，如果还有空白的话 ，它不会居中 会在允许的空间内把Container放在
      ///右下角
      // body: Align(
      //   alignment: Alignment.bottomRight,
      //   child: Container(
      //     width: 100,
      //     color: Colors.red,
      //     height: 100,
      //   ),
      // ),
      ///屏幕强制Center和屏幕一样大 所以Center充满屏幕
      ///然后Center告诉Container你可以变成任意的大小
      // body: Center(
      //   child: Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     color: Colors.red,
      //   ),
      // ),
      ///屏幕强制Center和屏幕一样大 由于Container没有子级而且没有固定的大小 所以他决定能多大就多大
      ///所以它充满了整个屏幕
      //   body: Center(
      //     child: Container(
      //       color: Colors.red,
      //     ),
      //   ),
      ///屏幕强制Center和屏幕一样大 然后Center告诉Container你想要多大就多大
      ///然后Container有子级 所有他变成和子级一样大 30 30
      // body: Center(
      //   child: Container(
      //     padding: const EdgeInsets.all(20.0),
      //     color: Colors.red,
      //     child: Container(color: Colors.green, width: 30, height: 30),
      //   ),
      // ),
      /// ConstrainedBox 仅对其从其父级接收到的约束下施加其他约束
      /// 在此处屏幕迫使ConstrainedBox与屏幕大小完全相同 ，因此它也告诉它的子widget也以屏幕大小作为约束
      /// 从而忽略了内部的约束
      // body: ConstrainedBox(
      //   constraints: const BoxConstraints(),
      //   child: Container(
      //     color: Colors.red,
      //     width: 10,
      //     height: 10,
      //   ),
      // ),
      ///屏幕迫使Center和屏幕一样大小
      ///Center允许ConstrainedBox达到屏幕允许的任意大小
      ///ConstrainedBox 将constraints约束附加在子对象上
      ///所以 Container的最小的宽度120 最小的高度120
      // body: Center(
      //   child: ConstrainedBox(
      //     constraints: const BoxConstraints(
      //         minWidth: 120, minHeight: 120, maxWidth: 150, maxHeight: 200),
      //     child: Container(
      //       width: 140,
      //       height: 140,
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
      ///屏幕强制 UnconstrainedBox和屏幕一样大 而 UnconstrainedBox允许它的子级的Container可以任意大小
      ///
      // body: UnconstrainedBox(
      //   child: Container(
      //     width: 30,
      //     height: 400000,
      //     color: Colors.red,
      //   ),
      // ),
      ///OverflowBox和 UnconstrainedBox 类似 不同的是OverflowBox和允许子容器设置为任意大小不同的是
      ///子容器超出空间不会显示警告
      // body: OverflowBox(
      //   minHeight: 0.0,
      //   minWidth: 0.0,
      //   maxHeight: double.infinity,
      //   maxWidth: double.infinity,
      //   child: Container(
      //     color: Colors.red,
      //     width: 4000,
      //     height: 60,
      //   ),
      // ),
      /// UnconstrainedBox 给 LimitedBox 一个无限的大小；但它向其子级传递了最大为 100 的约束。
      ///  LimitedBox 和 ConstrainedBox 之间的区别。LimitedBox：仅在获得无限约束时才适用
      // body: UnconstrainedBox(
      //   child: LimitedBox(
      //     maxWidth: 100,
      //     child: Container(
      //       color: Colors.red,
      //       width: double.infinity,
      //       height: 100,
      //     ),
      //   ),
      // ),
      ///屏幕强制FittedBox 变得和屏幕一样大 而Text有一个自然的宽度
      ///FittedBox让Text可以变为任意大小，但是Text告诉FittedBox大小后
      ///FittedBox 缩放到文本填满的宽度
        ///FittedBox只能在有限制的宽高中对子widget进行缩放
      // body: Center(
      //   child:FittedBox(
      //     alignment: Alignment.center,
      //     child: Text("some example text"),
      //   ),
      // )

    );
  }
}
