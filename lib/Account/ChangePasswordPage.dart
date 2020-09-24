import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangePasswordPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ChangePasswordPage extends StatefulWidget {
  ChangePasswordPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),

        iconTheme: new IconThemeData(
          color: Colors.white,

        ),

        backgroundColor:Color.fromRGBO(255, 90, 30, 30),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Text("Forgot Password",

              style: TextStyle(

                  color: Colors.white

              ),

            ),

          ],
        ),
      ),
      body: SingleChildScrollView(

        child: Form(
          child: Container(

            margin: EdgeInsets.all(20.0),

            child: Column(

              children: <Widget>[



              ],
            ),
          ),

        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );


  }






}
