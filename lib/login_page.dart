import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Whats your username buddy ?',
                icon: Icon(Icons.man),
                labelText: 'Username'
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your password ?',
                icon: Icon(Icons.star),
                labelText: 'Password',
                
              ),
              obscureText: true,
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){}, child: Text('Login')),
            InkWell(
              child: new Text('Forgot Password?'),
              onTap: (){
                print('Clicked Forgot');
              },
            )
          ],
        ),
      )),
    );
  }
}
