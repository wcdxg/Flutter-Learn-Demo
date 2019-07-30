import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Row Widget Demo',
        home: Scaffold(
            appBar: AppBar(title: Text('垂直方向布局')),
            //居中
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //垂直居中，垂直布局中主轴为Y 水平布局中主轴为X
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Hello'),
                    color: Colors.redAccent,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Kotlin'),
                    color: Colors.pinkAccent,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Flutter'),
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
            )));
  }
}
