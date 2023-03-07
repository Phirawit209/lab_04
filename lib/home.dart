import 'package:flutter/material.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String groupSimple = "";
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyWidget"),
      ),
      body: Column(children: [
        Text("TexFormField #1 Simple TextFormField"),
        TextFormField(),
        Text("TexFormField #2 KeyboardType and Password"),
        TextFormField(
          obscureText: true,
        ),
        const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: "This is LabelText",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromARGB(255, 9, 181, 219),
              ),
            ),
          ),
        ),
        Text("RadioListTile #1 Simple "),
        RadioListTile(
          activeColor: Color.fromARGB(255, 232, 127, 16),
          title: Text(' title 1'),
          controlAffinity: ListTileControlAffinity.platform,
          
          value: 'title 1',
          groupValue: groupSimple,
          onChanged: (value) {
            setState(() {
              groupSimple = value!;
            });
            print(groupSimple);
          },
        ),
        RadioListTile(
          activeColor: Color.fromARGB(255, 65, 250, 58),
          tileColor: Colors.blue,
          title: Text(' title 2'),
          controlAffinity: ListTileControlAffinity.platform,
          value: 'title 2',
          groupValue: groupSimple,
          onChanged: (value) {
            setState(() {
              groupSimple = value!;
            });
            print(groupSimple);
          },
        ),
        RadioListTile(
          title: Text(' title 3'),
          controlAffinity: ListTileControlAffinity.platform,
          activeColor: Colors.red,
          value: 'title 3',
          groupValue: groupSimple,
          onChanged: (value) {
            setState(() {
              groupSimple = value!;
            });
            print(groupSimple);
          },
        ),
        Text(groupSimple),

         Text("CheckboxListTile #1 Checkbox Class"),
         CheckboxListTile(
          title: Text(' Libary'),
          value: isChecked, 
          onChanged: (value) {
            setState(() {
              
            isChecked = value!;
            });

            
          },)
      ]),
    );
  }
}


class ListItem {
  String value;
  String name;

  ListItem(this.value, this.name);
}
