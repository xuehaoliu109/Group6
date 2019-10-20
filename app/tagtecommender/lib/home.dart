import 'package:flutter/material.dart';
import 'tagsrecommended.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
        title: Text("Query"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){

        }),
      ],
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
                    new Text("Enter your query",
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 5.0,
                          ),
                        ),
              new Text(" "),
              new Text(" "),
              new Container(
                width: 300,
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.deepOrange,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),

                ),
              ),
              ),
              new Text(" "),
              new RaisedButton(
                        child: new Text("Submit Query",
                                style: new TextStyle(
                                  color: Colors.white,
                                ),
                        ),
                        color: Color(0xff622F74),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TagsRecommended()),
                          );
                        })
        ],
      ),
    ),
    );
  }
}