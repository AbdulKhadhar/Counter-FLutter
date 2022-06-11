//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:sample_project_1/db/functions/db_functions.dart';

import 'db/model/data_modal.dart';
//import 'package:flutter/src/widgets/framework.dart';

class ListStudents extends StatelessWidget {
  const ListStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder: (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final data = studentList[index];
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(data.name),
              subtitle: Text(data.age),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: studentList.length,
        );
      },
    );
  }
}
