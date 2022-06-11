import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_project_1/db/functions/db_functions.dart';
import 'package:sample_project_1/db/model/data_modal.dart';

class AddStudent extends StatelessWidget {
  AddStudent({Key? key}) : super(key: key);

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10.0),
    child: Column(children: [
      TextFormField(
        controller: _nameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Name'
        ),
      ),
      SizedBox(height: 10,),
      TextFormField(
        controller: _ageController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Age'
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ElevatedButton.icon(onPressed: (){
        onAddStudentButtonClicked();
      }, icon: Icon(Icons.add), label: Text('Add Student'))
    ]),
    );

  }

  Future<void> onAddStudentButtonClicked() async{
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();

    if (_name.isEmpty || _age.isEmpty) {
      return ;
    }
    final _student = StudentModel(name: _name, age: _age);
    //print('$_name $_age');
    addNewStudent(_student);
  }
}