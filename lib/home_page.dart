import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              
              Text('You are now on HomeScreen'),
              SizedBox(height: 30,),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              SizedBox(width: 30,),
                  Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              ),
              SizedBox(width: 30,),
                  Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              )
                ],
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              )
            ],
          ),
        ),
      )
    );
  }
}