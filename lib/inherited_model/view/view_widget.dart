import 'package:flutter/cupertino.dart';
import 'package:inherited_example/inherited_model/number/number_model.dart';

import 'package:inherited_example/inherited_model/color/color_registry.dart';
import 'package:inherited_example/inherited_model/color/color_box.dart';

class ViewWidget extends StatelessWidget {
  final ColorRegistry r = ColorRegistry();

  final NUMBER_TYPE type;

  ViewWidget({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NumberModel view = NumberModel.of(context);

    return ColorBox(
      color: r.nextColor(),
      child: view.getLabeledText(type),
    );
  }
}
