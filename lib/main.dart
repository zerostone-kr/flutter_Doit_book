import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:collection';
import 'dart:math' as math;

void main() {
  // runApp(const MyApp());
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

// class MyApp extends StatelessWidget {
class _MyApp extends State<MyApp> {
  // const MyApp({Key? key}) : super(key: key);
  var switchValue = false;
  String test = 'hello';
  Color _color = Colors.blue;

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        darkTheme: ThemeData.light(),
        home: Scaffold(
            body: Center(
                child: ElevatedButton(
          child: Text('$test'),
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(_color)),
          onPressed: () {
            if (_color == Colors.blue) {
              setState(() {
                test = 'flutter';
                _color = Colors.amber;
              });
            } else {
              setState(() {
                test = 'hello';
                _color = Colors.blue;
              });
            }
          },
        )))
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        // home: Container(
        //     color: Colors.white,
        //     child: Center(
        //       child: Text('hello\nMy First Flutter APP',
        //           textAlign: TextAlign.center,
        //         style: TextStyle(color: Colors.blue, fontSize: 20),
        //       ),
        //     )
        // )
        );
  }
}
