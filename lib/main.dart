// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Погода",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            iconTheme: const IconThemeData(color: Colors.black),
            // ignore: deprecated_member_use
            brightness: Brightness.light,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.settings), onPressed: () {})
            ]),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[_headerImage()],
    ),
  );
}

Image _headerImage() {
  return Image(
      image: NetworkImage(
          'https://image.freepik.com/free-vector/weather-pattern_1061-487.jpg'));
}
