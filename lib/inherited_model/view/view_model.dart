import 'package:flutter/cupertino.dart';
import 'package:inherited_example/inherited_model/number/number_model.dart';

import 'package:inherited_example/inherited_model/color/color_registry.dart';
import 'package:inherited_example/inherited_model/color/color_box.dart';

class ViewModel extends StatelessWidget {
  final ColorRegistry r = ColorRegistry();

  final NUMBER_TYPE type;

  ViewModel({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NumberModel model = NumberModel.of(context, aspect: type);

    return ColorBox(
      color: r.nextColor(),
      child: model.getLabeledText(type),
    );
  }
}
