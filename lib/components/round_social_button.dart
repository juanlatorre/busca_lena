import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget roundSocialButton(
    {Color color, Color splashColor, IconData icon, Function method}) {
  return ClipOval(
    child: Material(
      color: color, // button color
      child: InkWell(
        splashColor: splashColor, // inkwell color
        child: SizedBox(
          width: 56,
          height: 56,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        onTap: method,
      ),
    ),
  );
}
