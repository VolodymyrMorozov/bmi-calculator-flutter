import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconData, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: labelTextStyle),
      ],
    );
  }

  IconContent({@required this.iconData, this.label});
}
