import 'package:flutter/material.dart';
import '../Validate/ValidateEveryThing.dart';


  class SignInPage extends StatefulWidget {
    @override
    _SignInPageState createState()=>_SignInPageState();
  }
class _SignInPageState extends State<SignInPage> with ValidateEveryThing{

  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child:Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
            ),
            emailField(),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),


          ],
        ),
      ),
    );
  }
  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }
}

