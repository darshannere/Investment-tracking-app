// ignore: unused_import
import 'package:flutter/material.dart';

class Process extends StatefulWidget {
  const Process({Key? key}) : super(key: key);

  @override
  _ProcessState createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Stocks',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "November 23",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'Search',
                            prefix: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            fillColor: Colors.grey[800],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                borderSide:
                                    BorderSide(style: BorderStyle.none))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
