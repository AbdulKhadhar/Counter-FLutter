import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_project_1/add_student.dart';
import 'package:sample_project_1/list_student.dart';

class ListStudentsHome extends StatelessWidget {
  ListStudentsHome({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
             AddStudent(),
              Expanded(child: ListStudents())
            ],
        ),
      ),
    );
  }
}