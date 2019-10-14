import 'package:busca_lena/views/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busca Leña',
      // Si el usuario no está logeado, Login, sino, Home.
      home: Login(),
    );
  }
}
