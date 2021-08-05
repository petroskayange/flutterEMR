import 'package:mnemr/componets/widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Log(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 150.0, right: 150.0, top: 15, bottom: 0),
              child: MyTextField(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 150.0, right: 150.0, top: 60, bottom: 50),
              child: MyPasswordText(),
            ),
            LoginButton(),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
