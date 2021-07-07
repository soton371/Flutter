import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductsView extends StatefulWidget {
  var product_name;
  ProductsView({this.product_name});

  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product_name+"s"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            widget.product_name == "Audi"?StreamBuilder(
        stream: Firestore.instance.collection('Audi').snapshots(),
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
            if(!snapshot.hasData){
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            return Column(
                children: snapshot.data.documents.map((e) {
                  return Column(
                    children: [
                      Image.network(e["image"])??"NA",
                      Text(e["title"])??"NA",
                    ],
                  );
                }).toList()
            );
          }
      ):Text(""),
            widget.product_name == "BMW"?StreamBuilder(
                stream: Firestore.instance.collection('BMW').snapshots(),
                builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                  if(!snapshot.hasData){
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Column(
                    children: snapshot.data.documents.map((e) {
                      return Column(
                        children: [
                          Image.network(e["image"])??"NA",
                          Text(e["title"])??"NA",
                        ],
                      );
                    }).toList()
                  );
                }
            ):Text(""),
          ],
        ),
      )
    );
  }
}

