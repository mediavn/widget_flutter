import 'package:calculator_widget_flutter/todolist.dart';
import 'package:flutter/material.dart';

import 'calculator.dart';
import 'calculator_page.dart';
import 'demo_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: TodosListview(),
    );
  }
}

