import 'package:flutter/material.dart';
import 'Login/loginpage.dart';
import 'home.dart';
import 'services/process.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/test',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Home(),
        '/test': (context) => Process(),
      },
    ));
