// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';

class Process extends StatefulWidget {
  const Process({Key? key}) : super(key: key);

  @override
  _ProcessState createState() => _ProcessState();
}

String code = '';
String code1 = '';

class _ProcessState extends State<Process> {
  Future<void> getData() async {
    await code1 == code;
    var response = await http.get(
      Uri.parse(
          'https://www.alphavantage.co/query?function=TIME_SERIES_DAILY_ADJUSTED&symbol=BSE:TCS&apikey=ETEOIGMIMKRVXWOQ'),
    );
    print(response.body);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  final myController = TextEditingController();
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter stock code"),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(onChanged: (code1) {
              print("The value entered is : $code1");
            }),
          ),
          Container(
            child: TextButton(
                onPressed: () {
                  getData();
                },
                child: Text('dfdf')),
          ),
        ],
      ),
    );
  }
}
