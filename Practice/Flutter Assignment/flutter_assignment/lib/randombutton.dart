import 'package:flutter/material.dart';

class RandomButton extends StatelessWidget {
  final VoidCallback randomize;

  RandomButton(this.randomize);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: randomize,
      child: Text(
        'Next Please!',
        style: TextStyle(fontSize: 20),
      ),
      style: OutlinedButton.styleFrom(
        primary: Colors.green,
        backgroundColor: Colors.black,
      ),
    );
  }
}
