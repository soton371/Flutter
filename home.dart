
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 135, 134, 134),
        leading: Icon( Icons.arrow_back_ios_outlined ),
        title: Text("Soton Ahmed"),
        actions: [
          Icon(Icons.account_circle_outlined, color: Color.fromARGB(
              255, 255, 153, 102),),
          Container(
            width: 15,
          ),
          Icon(Icons.account_balance_wallet_outlined),
          Container(
            width: 15,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Soton Ahmed",
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            Container(
              height: 10,
            ),
            Image(image: AssetImage('images/me.jpg')),
          ],
        ),
      ),
    );
  }
}
