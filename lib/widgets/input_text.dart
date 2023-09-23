import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String label;

  const InputText({super.key, required this.label});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.label, 
        contentPadding:EdgeInsets.symmetric(vertical: 10)),
      
    );
  }
}
