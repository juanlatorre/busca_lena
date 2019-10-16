import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget inputBox(String hint) {
  return Container(
    margin:
        hint == "Correo" ? EdgeInsets.only(top: 100) : EdgeInsets.only(top: 25),
    width: 250,
    child: TextFormField(
      keyboardType:
          hint == "Correo" ? TextInputType.emailAddress : TextInputType.text,
      cursorColor: Color(0xff535c68),
      autocorrect: false,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: Icon(
          hint == "Correo" ? Icons.email : Icons.vpn_key,
          color: Color(0xff535c68),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff535c68)),
        ),
      ),
      style: TextStyle(
        fontSize: 20,
        color: Color(0xff535c68),
      ),
    ),
  );
}
