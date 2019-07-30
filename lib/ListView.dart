import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Demo')),
        body: Center(
          child: Container(
            height: 200,
            color: Colors.lightBlueAccent,
            child: MyList(),
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //横向
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Image.network(
          'http://cdn.duitang.com/uploads/item/201407/24/20140724190906_MCkXs.thumb.700_0.jpeg',
        ),
        Image.network(
            'http://b-ssl.duitang.com/uploads/item/201801/25/20180125173013_sveub.jpg'),
        Image.network(
            'http://b-ssl.duitang.com/uploads/item/201502/06/20150206230530_cXFr5.jpeg'),
        Image.network(
            'http://b-ssl.duitang.com/uploads/item/201703/26/20170326234201_fFtBU.jpeg'),
      ],
    );
  }
}
