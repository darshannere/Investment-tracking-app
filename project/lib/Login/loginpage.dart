import 'package:flutter/material.dart';
// ignore: unused_import
import 'header.dart';
// ignore: unused_import
import 'button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.cyan.shade500,
            Colors.cyan.shade300,
            Colors.cyan.shade400,
          ]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            header(),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: inputwrapper(),
            ))
          ],
        ),
      ),
    );
  }

  header() {}

  inputwrapper() {}
}
