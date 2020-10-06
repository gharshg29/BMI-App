import 'package:flutter/material.dart';
import 'constant.dart';

class Colm extends StatelessWidget {
  Colm({@required this.gender, this.name});
  final IconData gender;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          name,
          style: kNameTextStyle,
        )
      ],
    );
  }
}
