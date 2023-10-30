
import 'package:flutter/material.dart';

class BaseTextFormField extends StatelessWidget {
  BaseTextFormField({Key? key ,this.form ,this.controller,this.decoration,this.validator,this.style}) : super(key: key);
  TextEditingController? controller;
  TextStyle? style;
  FormFieldValidator ? validator;
  InputDecoration? decoration;
  GlobalKey<FormState>? form;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        key: form,
        controller: controller,
        style: style,
        validator: validator,
        decoration: decoration,
      ),
    );
  }
}
