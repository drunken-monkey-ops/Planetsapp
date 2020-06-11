import 'package:flutter/material.dart';
import 'package:planetapp/pages/bodyview.dart';
import 'package:planetapp/pages/Detail.dart';
import 'package:planetapp/services/Planets_details.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planets app',
       home: Home(),

    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text(
          'Planet app',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 28.0,
            fontWeight: FontWeight.w600

          ),

        ),
        centerTitle: true,
        flexibleSpace: Container(

          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [ Colors.indigo[300], Colors.cyan[500],],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 0.5],
                tileMode: TileMode.clamp
            )
          ),
        ),
      ),
      body: Column(
            children: <Widget>[
               Body(),

            ],
      ),
    );
  }
}
