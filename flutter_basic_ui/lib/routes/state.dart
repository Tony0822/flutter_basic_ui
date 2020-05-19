import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RetrieveStateRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取 State 对象"),
      ),
      body: Center(
        child: Builder(builder: (context) {
          return RaisedButton(
            onPressed: () {
              ScaffoldState _state = Scaffold.of(context);
              _state.showSnackBar(
                  SnackBar(content: Text("我是 SnackBar"),
                  )
              );
            },
            child: Text("显示SnackBar"),
          );
        },),
      ),
    );
  }
}