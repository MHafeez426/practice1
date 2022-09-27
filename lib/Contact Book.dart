import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ContactBook(), debugShowCheckedModeBanner: false));
}

class ContactBook extends StatefulWidget {
  @override
  State<ContactBook> createState() => _ContactBookState();
}

class _ContactBookState extends State<ContactBook> {
  late List<String> items = ["Hafeez", "Fihar", "Chako", "Arjun", "Adhityan"];

  late List<String> number = [
    "9562374298",
    "96565085963",
    "9605063053",
    "8588037582",
    "9995913444"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Contact Book",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Container(
        color: Colors.grey,
        child:
            ListView.custom(
                childrenDelegate:
                    SliverChildBuilderDelegate((context, index) {
              return Card(
                child: ListTile(
                    leading: Text(items[index]),
                    trailing:Text(number[index])),
              );
            }, childCount: items.length))

      ),
    );
  }
}
