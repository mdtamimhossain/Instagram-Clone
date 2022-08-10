import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintext;
  final TextInputType textInputType;
  final bool isPass;
  final TextEditingController conTroller;
  const TextInputField(
      {Key? key,
      required this.conTroller,
      required this.hintext,
      required this.textInputType,
      required this.isPass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffE8E8E8), borderRadius: BorderRadius.circular(5)),
      child: TextField(
        style: TextStyle(color: Colors.black),
        controller: conTroller,
        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: Colors.grey),
          border: inputBorder,
          focusedBorder: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ),
        keyboardType: textInputType,
        obscureText: isPass,
      ),
    );
  }
}
