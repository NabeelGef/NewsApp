
import 'package:flutter/material.dart';

class BaseTextFormField extends StatelessWidget {
  BaseTextFormField({Key? key , this.controller,this.decoration,this.validator,this.style}) : super(key: key);
  TextEditingController? controller;
  TextStyle? style;
  FormFieldValidator ? validator;
  InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        style: style,
        validator: validator,
        decoration: decoration,
      ),
    );
  }
}
