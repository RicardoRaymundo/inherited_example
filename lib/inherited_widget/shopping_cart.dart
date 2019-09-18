import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends InheritedWidget {
  final ShoppingCartInfo info;
  final Widget child;

  const ShoppingCart({Key key, @required this.info, this.child});

  static ShoppingCartInfo of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(ShoppingCart) as ShoppingCart)
        .info;
  }

  @override
  bool updateShouldNotify(ShoppingCart old) =>
      !IterableEquality().equals(this.info.productIds, old.info.productIds);
}

class ShoppingCartInfo {
  final List<int> productIds;

  ShoppingCartInfo({this.productIds});
}
