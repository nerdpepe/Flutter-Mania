import 'package:flutter/material.dart';

class RandomText extends StatelessWidget {
  final quotes;
  final int index;

  RandomText(this.quotes, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      color: Colors.black,
      child: Text(
        quotes[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.purpleAccent,
        ),
      ),
    );
  }
}
