import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildCounterLabel(),
            _buildPlusButton(),
            _buildClearButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildCounterLabel() {
    return Text('$_counter');
  }

  Widget _buildPlusButton() {
    return RaisedButton(
      child: Text('+1'),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {
        setState(() {
          _counter++;
        });
      },
    );
  }

  Widget _buildClearButton() {
    return RaisedButton(
      child: Text('Clear'),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {
        setState(() {
          _counter = 0;
        });
      },
    );
  }
}
