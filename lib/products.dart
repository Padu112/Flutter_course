import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products;
  //constructor function
  Products([this.products = const []]) {
    // optional arguments
    print('[Product Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext contex, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/foods.jpg'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () => Navigator.push(contex, MaterialPageRoute(builder: (BuildContext context)=> ProductPage(),),),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCards = Center(
        child: Text("No products found, please add some"),
      );
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    //build function
    print('[Product Widget] build');
    return _buildProductList();
  }
}
