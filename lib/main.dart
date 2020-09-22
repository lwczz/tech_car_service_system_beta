import 'package:flutter/material.dart';

import 'Account/SignInPage.dart';

void main()=> runApp(new MyApp());



class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SignInPage(context) ,

      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),


    );
  }
}






