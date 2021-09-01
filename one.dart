import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  var x, y, z, sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "1st value",
                ),
                onChanged: (value) {
                  setState(() {
                    x = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "2nd value"),
                onChanged: (value) {
                  setState(() {
                    y = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "3rd value"),
                onChanged: (value) {
                  setState(() {
                    z = value;
                  });
                },
              ),
              FlatButton(
                onPressed: () {
                  sum = int.parse(x) + int.parse(y);
                  Firestore.instance
                      .collection("IntValue")
                      .add({'value1': x, 'value2': y, 'value3': z, 'sum': sum});
                },
                child: Text("send"),
                color: Colors.blue,
              ),
              Divider(),
              StreamBuilder(
                  stream: Firestore.instance.collection("IntValue").snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Text("no data");
                    }else{
                      return Column(
                        children:
                        snapshot.data.documents.map((e) {
                          return Column(
                            children: [
                              Text("Value1: ${e["value1"]} + Value2: ${e["value2"]} = ${e["sum"]}"),
                              Text("Value3 was: ${e['value3']}"),
                              Divider(),
                            ],
                          );
                        }).toList()
                      );
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
