import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TagsRecommended extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recommended Tags"),
      ),

      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text(" "),
            new Text(" "),
            new Text(" "),
            new Text(" "),
            new Text(" "),
            new Text(" "),
            new Text(" "),
            new Text("Probable tags to get a quick response for your query are as follows:",
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                wordSpacing: 3.0,
              ),
            ),
            new Text(" "),
            new Text(" "),
            new Container(
              width: 350,
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.deepOrange,
                child: TextField(

                  decoration: InputDecoration(
                      hintText: "#tag1,#tag2,#tag3",
                      fillColor: Colors.white,
                      filled: true
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
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
