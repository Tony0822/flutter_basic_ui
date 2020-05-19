import 'package:flutter/material.dart';
import 'package:flutter_basic_ui/widgets/page_scaffold.dart';
import 'package:flutter_basic_ui/routes/context.dart';
import 'package:flutter_basic_ui/routes/state.dart';
import 'package:flutter_basic_ui/routes/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openPage(BuildContext context, PageInfo page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      if (!page.withScaffold){
        return page.builder(context);
      }
      return PageScaffold(title: page.title, body: page.builder(context), padding: page.padding,);
    }));
  }

  List<Widget> _generateItem(BuildContext context, List<PageInfo> children) {
    return children.map<Widget>((page) {
      return ListTile(
        title: Text(page.title),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => _openPage(context, page),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("测试"),),
      body: ListView(
        children: <Widget>[
          ExpansionTile(title: Text("基础组件"), children: _generateItem(context, [
            PageInfo(
                "Context测试", (ctx) => ContextRoute(), withScaffold: false),
            PageInfo("Widget 树中获取 State 对象", (ctx) => RetrieveStateRoute(),
                withScaffold: false),
            PageInfo("文本、字体样式", (ctx) => TextRoute()),

          ]),),
          ExpansionTile(title: Text("布局类组件"), children: <Widget>[],),
          ExpansionTile(title: Text("容器类组件"), children: <Widget>[],),
          ExpansionTile(title: Text("功能性组件"), children: <Widget>[],),
          ExpansionTile(title: Text("事件处理与通知"), children: <Widget>[],),
          ExpansionTile(title: Text("自定义组件"), children: <Widget>[],),
          ExpansionTile(title: Text("Flutter原理"), children: <Widget>[],),
          ExpansionTile(title: Text("动画"), children: <Widget>[],)

        ],
      ),
    );
  }

}