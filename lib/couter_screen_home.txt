import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DispalyText(couterText: _counter.toString()),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print(_counter);
            setState(() {
              _counter = _counter + 1;
            });
          }),
    );
  }
}

class DispalyText extends StatelessWidget {
  final String couterText;

  const DispalyText({Key? key, required this.couterText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(couterText);
  }
}