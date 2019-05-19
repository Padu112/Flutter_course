import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  //constructor function
  final Map<String, String> startingProduct;
  ProductManager({this.startingProduct}) {
    // default value optional arguments
    print('[ProductManager Widget] Constructor');
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print('[ProductManager Widget] createState()');

    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    print('[ProductManager Widget] initState()');
    super.initState();
    //call before building
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  void didUpdateWidget(ProductManager oldWidget) {
    //called when widget gets new data
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget]  build()');

    // build function
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(_addProduct),
      ),
      Expanded(child: Products(_products, deleteProduct: _deleteProduct)) //show widget with list
    ]);
  }
}
