import 'package:busca_lena/components/login_background.dart';
import 'package:busca_lena/components/login_box.dart';
import 'package:busca_lena/components/login_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: LoginBackground(),
          child: SafeArea(
            child: CustomPaint(
              painter: LoginBox(),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Busca Leña",
                      style: TextStyle(
                        fontFamily: 'Monsalva',
                        fontSize: 38,
                        color: Color(0xff6ab04c),
                      ),
                    ),
                    inputBox("Correo"),
                    inputBox("Contraseña"),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment(-0.45, 1),
                      child: Material(
                        color: Colors.white,
                        child: InkWell(
                          child: Text(
                            "Olvidé mi contraseña.",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xff95afc0),
                              fontSize: 16,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment(0.8, 1),
                      child: RaisedButton(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          _scaffoldKey.currentState.showSnackBar(
                              SnackBar(content: Text('Processing Data')));
                        },
                        child: Text('Submit'),
                      ),
                    )
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
