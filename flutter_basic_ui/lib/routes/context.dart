import 'package:flutter/material.dart';

class ContextRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Context测试"),
      ),
      body: Container(
        child: Builder(builder: (context) {
          // 在 Widget 树中向上查找最近的父级 "Scaffold" widget
          Scaffold scaffold = context.ancestorWidgetOfExactType(Scaffold);
          // 直接返回 AppBar 的title ，此处实际上是Text（"Context测试"）
          return (scaffold.appBar as AppBar).title;
        }),
      ),
    );
  }
}