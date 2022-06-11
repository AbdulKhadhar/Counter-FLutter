import 'package:flutter/cupertino.dart';
import 'package:sample_project_1/db/model/data_modal.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addNewStudent(StudentModel value){
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}
