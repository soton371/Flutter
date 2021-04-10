

import 'dart:ui';

import 'package:classapp/activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.bars),
        title: Text("Soton Ahmed",
          style: TextStyle(
            fontWeight: FontWeight.w300
          ),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(const Radius.circular(8)),
                child: Image(
                  image: AssetImage("images/me3.jpg"),
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Soton Ahmed",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  /*border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(8))
                  ),*/
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  /*border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(8))
                  ),*/
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Activity()));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  child: Center(
                    child: Text("Sign In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(const Radius.circular(8)),
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Forgot password? Or Sign up for Activity",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
