import 'package:flutter/material.dart';
import 'package:freelancer_website/widgets/header.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Row(
                  children: [Container()],
                ),
                Header()
              ])
            ],
          ),
        ),
      ),
    );
  }
}
