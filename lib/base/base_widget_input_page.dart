import 'package:flutter/material.dart';

/// TextField的属性
/// 1 controller： 编辑框的控制器 通过他可以设置/获取编辑框的内容 选择编辑内容，
/// 监听文本改变的事件，大多数情况下会提供一个controller来和文本交互，如果没
/// 提供 输入框会自动创建一个
/// 2 focusNode：用于控制输入框是否占有当前键盘的输入焦点，他是和键盘交互的语柄
/// 3 InputDecoration：用于控制输入框的外观显示，如 提示文本，背景颜色 边框等等
/// 4 keyboardType：用于控制键盘的默认输入类型
///   text 文本输入框
///   multline 多行文本
///   number 数字
///   phone 电话号码
///   datetime 日期输入键盘
///   emailAddress：优化后的电子邮件地址
///   url 优化后的url键盘输入
/// 5 textInputAction:设置键盘的动作图片
/// 6 style 正在编辑的文本的样式
/// 7 textAlign：输入框内编辑文本的水平方向的对齐方式
/// 8 autofocus：是否自动获取焦点
/// 9 obscureText：是否隐藏正在编辑的文本
/// 10 maxLines：输入框的最大行数
/// 11 maxLength：代表最大的输入长度
/// 12 maxLengthEnforcement：代表超出最大长度之后的操作
/// 13 onChange：输入内容变化的回调
/// 14 onEditingComplete和onSubmit 输入完成的时候触发
/// 15 inputFormatters：用于指定输入格式
/// 16 enable 是否禁用输入框
class InputLoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputLoginPage();
  }
}

class _InputLoginPage extends State<InputLoginPage> {
  TextEditingController _controller = TextEditingController();

  ///用来控制焦点
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  @override
  void initState() {
    _controller.text = "hello world";
    _controller.selection =
        TextSelection(baseOffset: 2, extentOffset: _controller.text.length);
    _controller.addListener(() {
      print("xxxxxxxxx" + _controller.text);
    });
    focusNode2.addListener(() {
      print("当前焦点信息1${focusNode2.hasFocus}");
    });
    focusNode1.addListener(() {
      print("当前焦点信息2${focusNode1.hasFocus}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框和表单"),
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: _controller,
              focusNode: focusNode1,
              onChanged: (v) {
                print("onChange:$v");
              },
              decoration: const InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  //未获取焦点的时候设置的下划线的颜色
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              focusNode: focusNode2,
              autofocus: true,
              decoration: const InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock)),
            ),
            Builder(builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                      child: const Text("移动焦点"),
                      onPressed: () {
                        ///FocusScope 管理焦点
                        FocusScope.of(context).requestFocus(focusNode2);
                      }),
                  RaisedButton(
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                    child: Text("隐藏键盘"),
                  )
                ],
              );
            })
          ],
        ),
      )),
    );
  }
}
