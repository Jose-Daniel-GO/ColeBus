import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String label;
  final Function(String) validator;
  final bool isSecure;
  final TextInputType inputType;
  // Debes usar el nombre del parámetro "key" en lugar de "super.key"
  const InputText(
      {Key? key, required this.label,
      required this.validator,
      this.isSecure = false, this.inputType=TextInputType.text})
      : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      obscureText: widget.isSecure,
      validator: (value) => widget.validator(value ?? ''), // Conversión de tipo
      decoration: InputDecoration(
          labelText: widget.label,
          contentPadding: EdgeInsets.symmetric(vertical: 10)),
    );
  }
}
