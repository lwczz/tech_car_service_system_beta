
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Text("Forgot Password"),
            ],
          ),

        ),
        body:Center(

          child: Container(
              padding: const EdgeInsets.all(50.0),

              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Text("Enter your email details",

                    style: TextStyle(
                        fontSize: 20.0,
                        color:Color.fromRGBO(112, 112, 112, 100),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono'
                    ),),

                  TextField(
                    autofocus: true,

                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                    ),

                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email)
                    ),

                  ),
                  SizedBox(height: 10),
                  ButtonTheme(

                    minWidth: 500.0,
                    height: 50.0,
                    child:FlatButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      splashColor: Colors.lightBlue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                      child: Text("Reset"),

                      onPressed: (){

                      },

                    ),
                  ),
                ],
              )
          ),
        )
    );
  }

}



