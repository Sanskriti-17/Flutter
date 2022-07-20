import 'package:flutter/material.dart';

class baseCard extends StatelessWidget {
  baseCard({@required this.colour, this.cardchild, this.onPress} );

  final colour;
  final cardchild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10)

        ),
      ),
    );
  }
}
