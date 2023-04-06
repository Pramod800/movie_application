import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {Key? key,
      required this.hintText,
      required this.errorText,
      required this.labelText,
      required this.controller,
      required this.validator})
      : super(key: key);
  final String hintText;
  final String errorText;
  final String labelText;
  final TextEditingController controller;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        focusColor: Colors.white,

        prefixIcon: const Icon(
          Icons.person_outline_rounded,
          color: Colors.grey,
        ),

        errorText: errorText,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: Colors.grey,

        hintText: hintText,

        //make hint text
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontFamily: "verdana_regular",
          fontWeight: FontWeight.w400,
        ),

        //create lable
        labelText: labelText,

        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
          fontFamily: "verdana_regular",
          fontWeight: FontWeight.w400,
        ),
      ),
      validator: validator,
    );
  }
}
