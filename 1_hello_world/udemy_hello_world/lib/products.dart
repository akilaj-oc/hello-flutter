import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('[Products Widget] Contrunctor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return Column(
      children: products
          .map((element) => Card(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        element,
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 5))
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
