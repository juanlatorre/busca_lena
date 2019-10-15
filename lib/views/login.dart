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
      body: CustomPaint(
        painter: LoginBackground(),
        child: SafeArea(
          child: Center(
            child: CustomPaint(
              painter: LoginBox(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
