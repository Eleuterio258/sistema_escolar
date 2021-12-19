import 'package:flutter/material.dart';

class FormFieldComponents extends StatelessWidget {
  final String label;
  final String hint;
  final bool senha;
  final TextInputType teclado;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;

  const FormFieldComponents(
      {Key key,
      this.label,
      this.hint,
      this.senha,
      this.teclado,
      this.controller,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        border: OutlineInputBorder(),
      ),
      keyboardType: teclado,
      controller: controller,
      validator: validator,
      obscureText: senha,
    );
  }
}
