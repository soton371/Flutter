import 'package:classapp/idcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[
                Colors.purple[900],
                Colors.purple[700],
                Colors.purple[500],
              ],
              begin: Alignment.topCenter,
          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 100,bottom: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                  Text('Happening now',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.purple[200],
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                )
                              ]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Colors.grey[300])
                                    )
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Username or Email",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18
                                      ),
                                    ),
                                  ),
                                ),
                                // Divider(
                                //   thickness: 1,
                                //   color: Colors.grey,
                                // ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Forgot Password?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 40,),
                        FlatButton(
                          color: Colors.purple[900],
                            height: 55,
                            padding: EdgeInsets.symmetric(horizontal: 110),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => IdCard()));
                            },
                            child: Text("Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),
                            ),
                        ),
                        SizedBox(height: 50,),
                        Text("Join Excelitai today.",
                          style: TextStyle(
                            color: Colors.purple[900],
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
