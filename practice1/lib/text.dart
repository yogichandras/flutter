import 'package:flutter/material.dart';

class TextReceive extends StatelessWidget {
  final List<String> text;
  TextReceive({this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: text.map((el) => Text(el)).toList(),
    );
  }
}
