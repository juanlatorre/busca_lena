import 'package:busca_lena/components/login_background.dart';
import 'package:busca_lena/components/login_box.dart';
import 'package:busca_lena/components/login_input.dart';
import 'package:busca_lena/components/round_social_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(0, -0.85),
                    child: Text(
                      "Busca Leña",
                      style: TextStyle(
                        fontFamily: 'Monsalva',
                        fontSize: 38,
                        color: Color(0xff6ab04c),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, -0.4),
                    child: inputBox("Correo"),
                  ),
                  Align(
                    alignment: Alignment(0, -0.1),
                    child: inputBox("Contraseña"),
                  ),
                  Align(
                    alignment: Alignment(-0.46, 0.1),
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
                        onTap: () {
                          // TODO: Implement forgot password method.
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.8, 0.5),
                    child: roundSocialButton(
                      color: Colors.green,
                      splashColor: Colors.greenAccent,
                      icon: Icons.arrow_forward,
                      method: loginWithEmailAndPassword,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.8, 0.5),
                    child: roundSocialButton(
                      color: Colors.red,
                      splashColor: Colors.redAccent,
                      icon: MdiIcons.google,
                      method: loginWithGoogle,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.2, 0.68),
                    child: roundSocialButton(
                      color: Colors.blue.shade900,
                      splashColor: Colors.blueAccent,
                      icon: MdiIcons.facebook,
                      method: loginWithFacebook,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.4, 0.86),
                    child: roundSocialButton(
                      color: Colors.purple,
                      splashColor: Colors.purpleAccent,
                      icon: Icons.http,
                      method: goToUrl,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  loginWithGoogle() {
    // TODO: Implement login with Google Account.
  }

  loginWithEmailAndPassword() {
    // TODO: Implement login with Email and Password.
  }

  loginWithFacebook() {
    // TODO: Implement login with Facebook Account.
  }

  goToUrl() {
    // TODO: Go to my personal website.
  }
}
