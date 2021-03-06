import 'package:flutter/material.dart';


class ProductControl extends StatelessWidget{
final Function addProduct;

ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          color: Theme.of(context).primaryColor, //context has general metadata like the theme colors
          onPressed: () {
            addProduct({'title': 'Spam','image':'assets/foods.jpg'});
          },
          child: Text('Add Product'),
        );
  }
}