import 'package:crayon/Widgets/loginWidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // shadowColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: LoginWidget(),
    );
  }
}
