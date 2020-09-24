import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'ForgotPasswordPage.dart';
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




    return SingleChildScrollView(

      child: Column(

        children: <Widget>[

          ClipPath(

            clipper: MyClipper(),
            child:Container(

              decoration: BoxDecoration(

                gradient: LinearGradient(

                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.red, Colors.yellow]

                ),

              ),

              padding: const EdgeInsets.only(left: 300.0,right: 100.0,top: 225,bottom: 50),
            ),

          ),
          Container(

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

                  passwordField(),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),

                  forgotPassword(),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                  ),

                  submitButton(),

                ],
              ),
            ),
          )

        ],

      ),


    );


  }


  Widget loginImage(){

    return Image.asset("assets/logo-1.png",
      height: 100,
      width: 200,
    );

  }

  FocusNode myFocusNode = new FocusNode();

  Widget emailField() {
    return TextFormField(

      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(

          border: InputBorder.none,

          enabledBorder: OutlineInputBorder(

            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.black),

          ),

          focusedBorder: OutlineInputBorder(

            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.black),

          ),

          labelText: 'Email Address',
          //LabelText

          labelStyle: TextStyle(
              color: myFocusNode.hasFocus ? Colors.orange : Colors.black
          ),

          hintText: 'you@example.com',
          //HintText

          prefixIcon: Icon(Icons.email)
          //Icon


      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );

  }

  Widget passwordField() {
    return TextFormField(
      obscureText: false,
      decoration: InputDecoration(
        border: InputBorder.none,

        enabledBorder: OutlineInputBorder(

          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.black),

        ),

        focusedBorder: OutlineInputBorder(

          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: Colors.black),

        ),

        labelText: 'Password',
        //LabelText

        hintText: 'Abc1234',
        //HintText



        prefixIcon: Icon(Icons.lock)

      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget forgotPassword(){
    return RichText(

      text: TextSpan(

        children: <TextSpan>[

          TextSpan(

              text: 'Forgot Password ?',
              style:TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {

                  Navigator.push(context, new MaterialPageRoute(builder: (context)=>new  MyHomePage()));
                }
              ),

        ],
      ),
    );
  }

  Widget submitButton() {
    return ButtonTheme(

      minWidth: 500.0,
      height: 50.0,

        child: RaisedButton(

          textColor: Colors.white,
          color:Colors.orange,
          splashColor: Colors.orangeAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)
          ),
          child: Text('Sign In'),
          onPressed: () {
            if (formKey.currentState.validate()) {
              formKey.currentState.save();

              //take *both* email and password
              // and post them to some API
              print('Time to post $email and $password to my API');
            }
          },

        ),
    );
  }

}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path=new Path();
    path.lineTo(0, size.height / 1.75);
    var firstControlPoint = new Offset(size.width / 4, size.height / 1.75);
    var firstEndPoint = new Offset(size.width / 2, size.height / 1.75 - 60);
    var secondControlPoint =
    new Offset(size.width - (size.width / 4), size.height / 2.75 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 1.75 - 40);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}





