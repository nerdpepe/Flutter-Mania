import 'package:flutter/material.dart';
import 'dart:html';

void main() => runApp(MyApp());

void exitFullScreen() {
  document.exitFullscreen();
  print('h');
}

void goFullScreen() {
  document.documentElement?.requestFullscreen();
  print('full');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CategoryListItems());
  }
}

class CategoryListItems extends StatefulWidget {
  const CategoryListItems({Key? key}) : super(key: key);

  @override
  State<CategoryListItems> createState() => _CategoryListItemsState();
}

class _CategoryListItemsState extends State<CategoryListItems>
    with SingleTickerProviderStateMixin {
  final listgenre = ["Masc", "Fem", "Não Binário"];
  var listgenre_value;
  String newValue = "";
  var valueChoose;
  String hintValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 131, 33, 1),
        title: Text("Flutter Example StackOverFlow"),
      ),
      backgroundColor: Color.fromRGBO(255, 251, 247, 1),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
              padding: EdgeInsets.only(left: 16, top: 10, right: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: DropdownButton<String>(
                hint: Text("Genero :$hintValue"),
                dropdownColor: Colors.white,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                iconEnabledColor: Colors.black,
                isExpanded: true,
                style: TextStyle(fontSize: 17, color: Colors.black),
                value: valueChoose,
                underline: SizedBox(
                  width: 320,
                  height: 200,
                ),
                items: listgenre.map((valueitem) {
                  return DropdownMenuItem(
                    value: valueitem,
                    child: Text(valueitem),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    for (int i = 0; i <= listgenre.length; i++) {
                      if (listgenre[i] != newValue) {
                        listgenre_value = i + 1;
                      } else {
                        hintValue = "$newValue";

                        if (hintValue == 'Masc')
                          exitFullScreen();
                        else
                          goFullScreen();

                        // ignore: void_checks
                        return listgenre_value;
                      }
                    }

                    Object? valueChoose = newValue;
                    String valueChoosen = valueChoose.toString();
                  });
                },
              ))),
    );
  }
}
