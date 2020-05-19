import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextRouteState();
  }
}

class _TextRouteState extends State<TextRoute> {
  GestureRecognizer _tapRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    _tapRecognizer = TapGestureRecognizer();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tapRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Text("Hello world", textAlign: TextAlign.center,),
          Text("Hello world! I love Flutter" * 4, maxLines: 1, overflow: TextOverflow.ellipsis,),
          Text("Hello world", textScaleFactor: 1.5,),
          Text("Hello world" * 4,textAlign: TextAlign.center,),
          Text("Hello world", style: TextStyle(
              color: Colors.blue, 
              fontSize: 18.0, 
              height: 1.2),
            
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(text: "百度"),
              TextSpan(
                  text: "https://www.baidu.com",
                  style: TextStyle(color: Colors.blue)
              )
            ]),
          ),
          DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0
              ), 
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("hello world"),
                  Text("I love Flutter"),
                  Text("当上CEO，迎娶白富美", style: TextStyle(inherit: false, color: Colors.yellow),)
                ],
              ))
        ],
      ),
    );
  }
}