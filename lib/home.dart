// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

String groupName = "";
bool Checked = false;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input Widgets"),
        ),
        body: Column(
          children: [
            Text("TextFormField #1 Simple Text"),
            TextFormField(),
            Text("TextFormField #2 Simple Password"),
            TextFormField(
              obscureText: true,
            ),
            Text("TextFormField #3 Decoration"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'This is labelText',
                prefixIcon: Icon(Icons.mail),
              ),
            ),
            Text('RadioListTile#1 Simple'),
            RadioListTile(
                title: Text('Item Title 1'),
                tileColor: Colors.lime,
                activeColor: Colors.deepOrangeAccent,
                controlAffinity: ListTileControlAffinity.platform,
                value: 'title 1',
                groupValue: groupName,
                onChanged: (value) {
                  setState(() {
                    groupName = value!;
                  });
                }),
            RadioListTile(
                title: Text('Item Title 2'),
                controlAffinity: ListTileControlAffinity.platform,
                value: 'title 2',
                groupValue: groupName,
                onChanged: (value) {
                  setState(() {
                    groupName = value!;
                  });
                }),
            RadioListTile(
                title: Text('Item Title 3'),
                tileColor: Colors.pinkAccent,
                controlAffinity: ListTileControlAffinity.platform,
                value: 'title 3',
                groupValue: groupName,
                onChanged: (value) {
                  setState(() {
                    groupName = value!;
                  });
                }),
            Text('CheckboxListTile #1'),
            CheckboxListTile(
              title: Text('Libary Implementation'),
              value: Checked,
              onChanged: ((value) {
                setState(() {
                  Checked = value!;
                });
              }),
            ),
          ],
        ));
  }
}
