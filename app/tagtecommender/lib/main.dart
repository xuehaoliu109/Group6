import 'package:flutter/material.dart';
import 'home.dart';
import 'tagsrecommended.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';




void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tag-Recommender Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new MyHomePage(title: '           Tag-Recommender Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(new Duration(seconds: 3),
    (){
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home(),
      ),
      );
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text(
              'Welcome to Tag-Recommender!',
              textAlign: TextAlign.center,
              style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 5.0,
                    )
              ),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text("  "),
            new Text('A way to lower your wait-time, to get answered',
              textAlign: TextAlign.center,
              style: new TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
                wordSpacing: 2.0),
            ),
          ],
        ),
      ),
    );
  }
}



//import 'dart:async';
//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//
//Future<Post> fetchPost() async {
//  final response =
//  await http.get('https://jsonplaceholder.typicode.com/posts/1');
//
//  if (response.statusCode == 200) {
//    // If the call to the server was successful, parse the JSON.
//    return Post.fromJson(json.decode(response.body));
//  } else {
//    // If that call was not successful, throw an error.
//    throw Exception('Failed to load post');
//  }
//}
//
//class Post {
//  final int userId;
//  final int id;
//  final String title;
//  final String body;
//
//  Post({this.userId, this.id, this.title, this.body});
//
//  factory Post.fromJson(Map<String, dynamic> json) {
//    return Post(
//      userId: json['userId'],
//      id: json['id'],
//      title: json['title'],
//      body: json['body'],
//    );
//  }
//}
//
//void main() => runApp(MyApp(post: fetchPost()));
//
//class MyApp extends StatelessWidget {
//  final Future<Post> post;
//
//  MyApp({Key key, this.post}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Fetch Data Example',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Fetch Data Example'),
//        ),
//        body: Center(
//          child: FutureBuilder<Post>(
//            future: post,
//            builder: (context, snapshot) {
//              if (snapshot.hasData) {
//                return Text(snapshot.data.title);
//              } else if (snapshot.hasError) {
//                return Text("${snapshot.error}");
//              }
//
//              // By default, show a loading spinner.
//              return CircularProgressIndicator();
//            },
//          ),
//        ),
//      ),
//    );
//  }
//}