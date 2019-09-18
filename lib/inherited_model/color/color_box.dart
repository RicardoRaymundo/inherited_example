import 'package:flutter/cupertino.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  final Widget child;

  const ColorBox({Key key, this.color, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: EdgeInsets.all(20),
      child: child,
    );
  }
}