import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:inherited_example/inherited_model/view/view_model.dart';
import 'package:inherited_example/inherited_model/view/view_widget.dart';
import 'package:inherited_example/inherited_model/number/number_model.dart';

class PageInheritedModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Inherited Model Views'),
                ViewModel(type: NUMBER_TYPE.FIRST),
                ViewModel(type: NUMBER_TYPE.SECOND),
                ViewModel(type: NUMBER_TYPE.THIRD),
                SizedBox(height: 25.0),
                Text('Inherited Widget Views'),
                ViewWidget(type: NUMBER_TYPE.FIRST),
                ViewWidget(type: NUMBER_TYPE.SECOND),
                ViewWidget(type: NUMBER_TYPE.THIRD),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
