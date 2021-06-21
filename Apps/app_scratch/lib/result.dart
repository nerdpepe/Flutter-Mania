import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get resultString {
    if (totalScore != 30)
      return 'Meh .... Maybe try again?';
    else
      return 'Great! You are the Man.';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // along vertical axis
        mainAxisAlignment: MainAxisAlignment.center,
        //along horizontal axis
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text(
            resultString,
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: Text(
              'You score is : ' + totalScore.toString(),
              //textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
