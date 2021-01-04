import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Router;

class AppProgressIndicator extends StatelessWidget {
  final double height;
  final Color backGroundColor;

  AppProgressIndicator({this.height = 48, this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      child: Center(
        child: CircularProgressIndicator(
          valueColor: backGroundColor != null
              ? new AlwaysStoppedAnimation<Color>(backGroundColor)
              : null,
        ),
      ),
    );
  }
}
