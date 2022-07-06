import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: <Widget>[
              Tab(text: "朝"),
              Tab(text: "昼"),
              Tab(text: "夜"),
            ]),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                  child: Text('朝の挨拶 : ' 'good morning',
                      style: TextStyle(fontSize: 20, color: Colors.green))),
              Center(
                  child: Text('昼の挨拶 : ' 'hello',
                      style: TextStyle(fontSize: 20, color: Colors.red))),
              Center(
                  child: Text('夜の挨拶 : ' 'Good evening',
                      style: TextStyle(fontSize: 20, color: Colors.blue))),
            ],
          ),
        ),
      ),
    );
  }
}
