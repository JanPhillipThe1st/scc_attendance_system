import 'package:flutter/material.dart';

class PrimaryTextField extends StatefulWidget {
  const PrimaryTextField(
      {Key? key, required this.controller, this.hintText, this.isPassword})
      : super(key: key);

  final TextEditingController controller;
  final String? hintText;
  final bool? isPassword;
  @override
  _PrimaryTextFieldState createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), side: BorderSide())),
      child: TextField(
        obscureText: widget.isPassword ?? false,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: widget.hintText),
        controller: widget.controller,
      ),
    );
  }
}
