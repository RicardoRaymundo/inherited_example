import 'package:flutter/material.dart';
import 'package:inherited_example/inherited_widget/shopping_cart.dart';

import 'form_page.dart';

class PageInheritedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShoppingCart(
      info: ShoppingCartInfo(productIds: <int>[1, 2, 3, 4, 5, 6]),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductFeed(),
      ),
    );
  }
}

/// http://stacksecrets.com/flutter/flutter-inherited-widget-basics
