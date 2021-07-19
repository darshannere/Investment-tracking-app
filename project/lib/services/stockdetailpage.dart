import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/home_page.dart';
import 'package:project/services/process.dart';
import 'package:http/http.dart' as http;

class stockdetailpage extends StatefulWidget {
  final List passedlist;
  final int passedindex;
  const stockdetailpage(
      {Key? key, required this.passedlist, required this.passedindex})
      : super(key: key);

  @override
  _stockdetailpageState createState() => _stockdetailpageState();
}

class _stockdetailpageState extends State<stockdetailpage> {
  var stockdetail = {};
  Map stockdesc = {};
  late String stockname;

  Future<String> getData1() async {
    var response = await http.get(
        Uri.parse(
            'https://alpha-vantage.p.rapidapi.com/query?function=TIME_SERIES_DAILY&symbol=$stockname&datatype=json'),
        headers: {
          "X-RapidAPI-Key":
              "b5e366e646msh24e4c9775b01424p1a625fjsnf41e0d7c9961",
          "x-rapidapi-host": "alpha-vantage.p.rapidapi.com"
        });
    this.setState(() {
      stockdetail = jsonDecode(response.body);
      print(stockdetail);
    });

    return "Success!";
  }

  Future<String> getData2() async {
    var response = await http.get(
        Uri.parse(
            'https://alpha-vantage.p.rapidapi.com/query?function=OVERVIEW&symbol=TSLA'),
        headers: {
          "X-RapidAPI-Key":
              "b5e366e646msh24e4c9775b01424p1a625fjsnf41e0d7c9961",
          "x-rapidapi-host": "alpha-vantage.p.rapidapi.com"
        });
    this.setState(() {
      stockdesc = jsonDecode(response.body);
      // print(stockdesc);
    });

    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    stockname = widget.passedlist[widget.passedindex]['symbol'] + '.BSE';
    print(stockname);
    this.getData1();
    this.getData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stockdetails'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              widget.passedlist[widget.passedindex]['symbol'],
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
