import 'package:flutter/material.dart';

class Product {
  final String title; //商品标题
  final String desc;

  Product(this.title, this.desc); //商品描述
}

void main() {
  runApp(MaterialApp(
    title: '导航的数据传递和接收',
    home: ProductList(
        products:
            List.generate(20, (i) => Product('商品 $i', '这是一个商品详情，编号为 $i'))),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('商品列表'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductDetail(product: products[index])));
              },
            );
          },
        ));
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Center(
        child: Text(product.desc),
      ),
    );
  }
}
