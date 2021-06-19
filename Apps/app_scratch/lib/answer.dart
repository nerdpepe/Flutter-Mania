import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback setHandler;
  Answer(this.setHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: setHandler,
        child: Text('Option 1'),
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: Colors.red,
        ),
      ),
    );
  }
}
