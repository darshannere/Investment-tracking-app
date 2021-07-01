// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';

class Process extends StatefulWidget {
  const Process({Key? key}) : super(key: key);

  @override
  _ProcessState createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  Future<List> getData() async {
    var response = await http.get(
        Uri.parse('https://latest-stock-price.p.rapidapi.com/any'),
        headers: {
          "X-RapidAPI-Key": "b5e366e646msh24e4c9775b01424p1a625fjsnf41e0d7c9961"
        });

    List stocks = jsonDecode(response.body);
    stocks.asMap();
    print(stocks]);
    return jsonDecode(response.body);
  }

  @override
  void initState() {
    super.initState();
    getData();
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
            child: TextButton(
                onPressed: () {
                  getData();
                },
                child: Text('dfdf')),
          ),
          /*Container(
            child: ListView.builder(
              itemCount: stocks.length,
              itemBuilder: (BuildContext context, int index) {
                final Map stock = stocks[index];
                
              },
            ),
          )*/
        ],
      ),
    );
  }
}
