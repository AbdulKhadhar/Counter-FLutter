import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sample_project_1/db/model/data_modal.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

Future<void> addNewStudent(StudentModel value) async{
  
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  final _id = await studentDB.add(value);
  value.id = _id;
  studentListNotifier.value.add(value);

  studentListNotifier.notifyListeners();
}

Future<void> getAllStudents() async{
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  studentListNotifier.value.clear();
  studentListNotifier.value.addAll(studentDB.values);

  studentListNotifier.notifyListeners();
}

Future<void> deleteStudent(int id) async{
  final studentDB = await Hive.openBox<StudentModel>('student_db');
  await studentDB.delete(id);
  getAllStudents();
}