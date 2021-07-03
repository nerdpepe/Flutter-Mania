import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: (60.0)),
            color: Colors.red,
            child: Column(
              children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: OrderButton(),
                )
              ],
            )));
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
        child: ElevatedButton(
      onPressed: () {
        order(context);
      },
      child: Text("go to checkout"),
    ));
    return button;
  }
}

order(BuildContext context) {
  var alert = AlertDialog(
    title: Text("Go to checkout."),
    content: Text("I'll go to checkout."),
    actions: [],
  );
  showDialog(context: context, builder: (BuildContext context) => alert);
}
