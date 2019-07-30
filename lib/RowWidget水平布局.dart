import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平方向布局'),
        ),
        body: Row(
          children: <Widget>[
            //灵活布局和不灵活布局共同使用
            //两边的按钮根据自身内容显示大小，中间按钮占据其他位置
            RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text('Red Button'),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                color: Colors.greenAccent,
                child: Text('Green Button'),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.lightBlueAccent,
              child: Text('Blue Button'),
            ),
          ],
        ),
      ),
    );
  }
}
