
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class SignInPage extends StatelessWidget{


  BuildContext pageContext;

  SignInPage(this.pageContext);

  get defaultStyle => null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(



        body:SingleChildScrollView(


          child:Column(

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


                  child: Column(

                    children: <Widget>[


                    ],

                  ),

                ),

              ),

              FractionalTranslation(

                translation: Offset(0.0, -2.4),
                child: Container(


                  child: Column(
                    children: <Widget>[

                      Align(
                        alignment: Alignment.topLeft,
                        child:Image.asset("assets/logo.png",
                          height: 100,
                          width: 200,
                        ),
                      )

                    ],

                  ),
                ),

              ),


              FractionalTranslation(

                translation: Offset(0.0, -1.75),
                child: Container(
                  padding: const EdgeInsets.only(left: 100.0,right: 100.0,top: 10,bottom: 10),

                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/logo-1.png",
                        height: 100,
                        width: 200,
                      ),
                    ],

                  ),
                ),

              ),



              FractionalTranslation(

                  translation: Offset(0.0, -0.5),
                  child: Container(

                    padding: const EdgeInsets.only(left:20,right: 20),

                    child: Column(

                      children: <Widget>[

                        Column(

                          children: <Widget>[

                            Text(
                              "YSMD Account Login",

                              style:TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                            SizedBox(height:20.0),

                            TextField(

                              autofocus: true,

                              style:TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black
                              ),

                              decoration: InputDecoration(

                                  labelText: "Email",
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.email)

                              ),
                            ),

                            TextField(

                              autofocus: true,

                              style:TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black
                              ),

                              decoration: InputDecoration(

                                  labelText: "Password",
                                  hintText: "Password",
                                  prefixIcon: Icon(Icons.lock)

                              ),
                            ),

                            SizedBox(height: 15),

                            ButtonTheme(
                                minWidth: 500.0,
                                height: 50.0,

                                child:FlatButton(
                                  textColor: Colors.white,
                                  color:Colors.orange,
                                  splashColor: Colors.orangeAccent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                                  child: Text("Login"),
                                  onPressed: (){



                                  },
                                )
                            ),

                            SizedBox(height: 15),

                            RichText(

                              text: TextSpan(
                                style: defaultStyle,

                                children: <TextSpan>[

                                  TextSpan(

                                      text: 'Forgot Password ?',
                                      style:TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),

                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {

                                        }),


                                ],
                              ),
                            ),

                            SizedBox(height: 20),

                            Row(
                                children: <Widget>[
                                  Expanded(
                                      child: Divider(

                                        thickness: 3,
                                        indent: 10,
                                        endIndent: 10,

                                      )
                                  ),

                                  Text("OR",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color:Color.fromRGBO(112, 112, 112, 100),
                                    ),
                                  ),

                                  Expanded(
                                      child: Divider(

                                        thickness: 3,
                                        indent: 10,
                                        endIndent: 10,

                                      )
                                  ),
                                ]
                            ),


                            SizedBox(height: 20),

                            Text("Don't have an Account ?",
                              style: TextStyle(
                                fontSize: 16,
                                color:Color.fromRGBO(112, 112, 112, 100),
                              ),
                            ),

                            SizedBox(height: 10),

                            ButtonTheme(
                                minWidth: 500.0,
                                height: 50.0,

                                child:FlatButton(
                                  textColor: Colors.white,
                                  color:Colors.orange,
                                  splashColor: Colors.orangeAccent,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                                  child: Text("Sign Up"),
                                  onPressed: (){



                                  },
                                )
                            ),

                          ],

                        )

                      ],

                    ),


                  )
              ),
            ],

          ),

        )
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



