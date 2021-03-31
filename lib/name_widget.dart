import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        Image.asset("assets/bg.jpg"),
        SizedBox(height: 20),
        Text(
          myText, 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter text",
              labelText: "Name"
            ),
          ),
        )
      ],
    )
            );
  }
}
