import 'dart:async';
import 'package:error/loginpage.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: AssetImage("assets/videoplayback.gif"),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),
    );
  }
}
