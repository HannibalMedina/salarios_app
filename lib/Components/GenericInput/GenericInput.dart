import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

//Se crea input para obtener las horas
class GenericInput extends StatelessWidget {
  final text;
  final control;
  final typeKeyboard;
  const GenericInput(
      {Key? key, this.text, required this.control, required this.typeKeyboard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      //showCursor: false,
      keyboardType: typeKeyboard,
      controller: control,
      textAlign: TextAlign.center,
      decoration: InputDecoration(hintText: text),
    );
  }
}
