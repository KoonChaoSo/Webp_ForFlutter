import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  Widget child;
  OnClickCallback onClickCallback;
  bool enablePressEffect;

  TestWidget({
    Key key,
    @required this.child,
    this.onClickCallback,
    this.enablePressEffect = true
  }) : assert(child != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TestWidgetState();
  }
}

class _TestWidgetState extends State<TestWidget> {
  bool isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(      
        child: Opacity(opacity: (widget.enablePressEffect && isTapDown) ? 0.5 : 1, child: widget.child));
  }
}

typedef OnClickCallback = void Function();
