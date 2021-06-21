import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String resultString;
  Result(this.resultString);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultString,
        style: TextStyle(
          fontSize: 25,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
