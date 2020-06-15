import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprovider/provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<providerClass>.value(
      value: providerClass(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: firstPage(),
      ),
    );
  }
}

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    providerClass provider = Provider.of<providerClass>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${provider.counter}"),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => secondPage(),
                  ),
                );
              },
              child: Text("Go to Second Page"),
            ),
          ],
        ),
      ),
    );
  }
}

class secondPage extends StatefulWidget {
  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {
  @override
  Widget build(BuildContext context) {
    providerClass provider = Provider.of<providerClass>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("${provider.counter}"),
            FlatButton(
              onPressed: () {
                provider.increment();
              },
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
