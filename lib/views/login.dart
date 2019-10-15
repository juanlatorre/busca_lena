import 'package:busca_lena/components/login_background.dart';
import 'package:busca_lena/components/login_box.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: LoginBackground(),
          child: SafeArea(
            child: CustomPaint(
              painter: LoginBox(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("e"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
