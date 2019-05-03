import 'package:flutter/material.dart';
import './text.dart';

class TextChanger extends StatefulWidget {
  final String textChange;
  TextChanger({this.textChange});

  @override
  State<StatefulWidget> createState() {
    return StateText();
  }
}

class StateText extends State<TextChanger> {
  List<String> textChange = [];

  @override
  void initState() {
    super.initState();
    textChange.add(widget.textChange);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("Add Text"),
          onPressed: () {
            setState(() {
              textChange.add("Nurfitriyatul Aini");
            });
          },
        ),
        TextReceive(
          text: textChange,
        )
      ],
    );
  }
}
