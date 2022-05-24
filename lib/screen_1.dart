import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample_project_1/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Screen 1'),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) {
                //     return ScreenTwo();
                //   }),
                // );

                Navigator.of(context).pushNamed('screen_2');
              },
              child: Text('Screen Two'),
            )
          ],
        ),
      ),
    );
  }
}
