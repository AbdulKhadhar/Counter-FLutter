import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({Key? key}) : super(key: key);

  final _droplist = const [
    'Google',
    'Yahoo !',
    'Twitter'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButtonFormField(
          decoration: InputDecoration(),
          hint: Text('Search Engines'),
          items: _droplist.map((e){
          return DropdownMenuItem(
            child: Text(e),
            value: e,
            );
          
        }).toList() , onChanged:(value){
          print(value);
        } ),
      ),
    );
    
  }
}