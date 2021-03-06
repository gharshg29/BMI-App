import 'package:flutter/material.dart';

// ignore: camel_case_types
class Reusable_Card extends StatelessWidget {
  Reusable_Card({@required this.colour, this.childCard, this.onPress});
  final Color colour;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
