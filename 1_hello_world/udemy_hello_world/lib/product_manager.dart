import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager Widget] Contrunctor');
  }

  // @override
  // _ProductManagerState createState() =>
  //   // print('[ProductManager Widget] createState()');
  //   _ProductManagerState();

  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager Widget] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager Widget] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

//Lifting the state-up of the button
  void _addProducts(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: ProductControl(_addProducts),
        ),
        Products(_products),
      ],
    );
  }
}
