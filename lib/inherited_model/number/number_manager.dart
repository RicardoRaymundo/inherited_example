import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:inherited_example/inherited_model/number/number_model.dart';

/// Compononte gerenciador dos contadores
class NumberManager extends StatefulWidget {
  final int updateMs;
  final Widget child;

  NumberManager({Key key, @required this.child, @required this.updateMs})
      : assert(updateMs > 0),
        assert(child != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() => _NumberManagerState();
}

class _NumberManagerState extends State<NumberManager> {
  Timer updateTimer;
  int firstTick, secondTick, thirdTick;

  @override
  void initState() {
    super.initState();
    firstTick = secondTick = thirdTick = 0;
    resetTimer();
  }

  @override
  Widget build(BuildContext context) {
    return NumberModel(
      firstValue: firstTick,
      secondValue: secondTick,
      thirdValue: thirdTick,
      child: widget.child,
    );
  }

  @override
  void didUpdateWidget(NumberManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    resetTimer();
  }

  @override
  void dispose() {
    updateTimer?.cancel();
    super.dispose();
  }

  void resetTimer() {
    updateTimer?.cancel();
    updateTimer = Timer.periodic(
      Duration(milliseconds: widget.updateMs),
      (Timer t) {
        setState(() {
          firstTick++;
          if (firstTick % 2 == 0) {
            secondTick++;
            if (secondTick % 2 == 0) {
              thirdTick++;
            }
          }
        });
      },
    );
  }
}
