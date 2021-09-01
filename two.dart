import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
  
  TextEditingController a = TextEditingController();

  var cal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 50,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "enter birth year"
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "enter birth month"
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "enter birth day"
                ),
              ),
              TextFormField(
                controller: a,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "enter ur age"
                ),
                onChanged: (value){
                  setState(() {
                    cal = int.parse(a.text)*525600;
                  });
                },
              ),
              SizedBox(height: 20,),
              Text("Your age will be ${cal ?? ""} minutes")
            ],
          ),
        ),
      ),
    );
  }
}
