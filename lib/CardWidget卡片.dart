import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              '广东省深圳市南山区',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('宋金金：13874564585'),
            leading: Icon(Icons.account_box, color: Colors.pink),
          ),
          Divider(),
          ListTile(
            title: Text(
              '广东省深圳市宝安区',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('宋喔喔：13874564585'),
            leading: Icon(Icons.account_box, color: Colors.pink),
          ),
          Divider(),
          ListTile(
            title: Text(
              '广东省深圳市罗湖区',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text('宋哈哈：13874564585'),
            leading: Icon(Icons.account_box, color: Colors.pink),
          )
        ],
      ),
    );

    return MaterialApp(
        title: 'Stack Widget Demo',
        home: Scaffold(
          appBar: AppBar(title: Text('CradWidget布局')),
          //居中
          body: Container(
            height: 300,
            child: card,
          ),
        ));
  }
}
