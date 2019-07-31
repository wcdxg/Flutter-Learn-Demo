import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(child: Address()),
    ),
  ));
}

class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('收货地址'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text('请去选择收货地址'),
              onPressed: () {
                _navigateToAddress(context);
              }),
        ));
  }
}

//异步请求  获取到结果之后返回
_navigateToAddress(BuildContext context) async {
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => ChooseAddress()));

  Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
}

class ChooseAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('确认收货地址'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.pinkAccent,
                child: Text('公司地址'),
                onPressed: () {
                  Navigator.pop(context, '广东省深圳市南山区');
                },
              ),
              RaisedButton(
                color: Colors.lightGreenAccent,
                child: Text('家'),
                onPressed: () {
                  Navigator.pop(context, '湖北省武汉市洪山区');
                },
              )
            ],
          ),
        ));
  }
}
