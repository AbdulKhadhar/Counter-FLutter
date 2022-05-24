import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_project_1/listview_sample.dart';

void main(List<String> args) {
  runApp(ListViewApp());
} 

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.lightBlue),
     home: ListViewSample(),
   ); 
  }
}