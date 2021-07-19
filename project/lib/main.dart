import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'home_page.dart';
import 'Login/loginpage.dart';
import 'home.dart';
import 'package:project/services/process.dart';
import 'package:firebase_core/firebase_core.dart';

import 'loginpages/Authenticate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  {
    runApp(MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.pink),
      home: new Authenticate(),
      debugShowCheckedModeBanner: false,
      /*initialRoute: '/test',
      routes: {
        '/new': (context) => Home_page(),
        '/': (context) => LoginPage(),
        '/home': (context) => Home(),
        '/test': (context) => HomePage(),
      },*/
    ));
  }
}
