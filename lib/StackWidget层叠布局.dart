import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'http://b-ssl.duitang.com/uploads/item/201801/25/20180125173013_sveub.jpg'),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(color: Colors.lightBlue),
          padding: EdgeInsets.all(5),
          child: Text('Hello Flutter'),
        ),
      ],
    );
    return MaterialApp(
        title: 'Stack Widget Demo',
        home: Scaffold(
            appBar: AppBar(title: Text('层叠布局')),
            //居中
            body: Center(
              child: stack,
            )));
  }
}
