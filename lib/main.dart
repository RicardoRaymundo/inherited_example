import 'package:flutter/material.dart';

import 'inherited_model/page_inherited_model.dart';
import 'package:inherited_example/inherited_model/number/number_manager.dart';
import 'inherited_widget/page_inherited_widget.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class _MainPage extends StatefulWidget {
  _MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<_MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: NumberManager(updateMs: 1000, child: PageInheritedModel()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageInheritedWidget()),
          );
        },
      ),
    );
  }
}
