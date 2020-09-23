import 'package:flutter/material.dart';

import 'Account/SignInPage.dart';

void main()=> runApp(new App());



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me In',
      home: Scaffold(
        body: SignInPage(),
      ),
    );
  }
}



