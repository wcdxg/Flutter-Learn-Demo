import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        body: GridView(
          padding: EdgeInsets.all(5),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            //宽高比率
            childAspectRatio: 0.7,
          ),
          children: <Widget>[
            Image.network(
              'http://cdn.duitang.com/uploads/item/201407/24/20140724190906_MCkXs.thumb.700_0.jpeg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://b-ssl.duitang.com/uploads/item/201801/25/20180125173013_sveub.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://b-ssl.duitang.com/uploads/item/201502/06/20150206230530_cXFr5.jpeg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://b-ssl.duitang.com/uploads/item/201703/26/20170326234201_fFtBU.jpeg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://b-ssl.duitang.com/uploads/item/201809/16/20180916230614_jrgfq.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://b-ssl.duitang.com/uploads/item/201608/21/20160821230024_MyCYK.thumb.700_0.jpeg',
              fit: BoxFit.cover,
            ),
          ],
        ),
//        body: GridView.count(
//          padding: EdgeInsets.all(20),
//          crossAxisCount: 3,
//          crossAxisSpacing: 10,
//          children: <Widget>[
//            Text('I Love You'),
//            Text('I Love He'),
//            Text('I Love Her'),
//            Text('I Love Them'),
//            Text('I Love Me'),
//          ],
//        ),
      ),
    );
  }
}
