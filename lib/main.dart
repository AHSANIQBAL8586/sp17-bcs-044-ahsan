import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:io';
import 'login.dart';
import 'dart:ui';


void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) =>SignInScreen())));
  } //<- Creates an object that fetches an image.
  // var image = new Image(
  //     image: AssetImage(
  //         'asset/quiz.png'),
  //     height:300);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient:  LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.pink[400],
                Colors.pink[200],
                Colors.blue[100],
              ]
          ),
        ),

        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage(
                    'images/noteapp.png'),
                height:500),
            Text("Design by: ",style:TextStyle(fontSize:30,color: Colors.red)),
            SizedBox(height: 20,),
            Text("Ahsan iqbal ",style:TextStyle(fontSize:15 ,color: Colors.blue)),
            Text(" sp17-bcs-044",style:TextStyle(fontSize: 15,color: Colors.blue)),

          ],
        )
    );
  }
}
