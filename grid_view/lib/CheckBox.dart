import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox List Example'),
        ),
        body: MyCheckboxList(),
      ),
    );
  }
}

class MyCheckboxList extends StatefulWidget {
  @override
  _MyCheckboxListState createState() => _MyCheckboxListState();
}

class _MyCheckboxListState extends State<MyCheckboxList> {
  List<bool> isCheckedList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: isCheckedList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item $index'),
          trailing: Checkbox(
            value: isCheckedList[index],
            onChanged: (bool? value) {
              setState(() {
                isCheckedList[index] = value!;
              });
            },
          ),
        );
      },
    );
  }
}
