import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewSample extends StatelessWidget {
  const ListViewSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Sample Project'),
      ),
      body: SafeArea(
        child: ListView.separated(
            itemBuilder: ((context, index) {
              return ListTile(
                title: Text('PERSON $index'),
                subtitle: Text('Message $index'),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/panda.jpg'),
                ),
                trailing: Text('1$index:00 PM'),
                
              );
            }),
            separatorBuilder: (context, index){
              return Divider();
            },
            itemCount: 30),
      ),
    );
  }
}
