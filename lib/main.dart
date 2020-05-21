import 'package:flutter/material.dart';
import 'package:ui_challenges/src/food_app/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenges',
      home: _Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Challenges')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Food App'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => FoodApp()),
            ),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}