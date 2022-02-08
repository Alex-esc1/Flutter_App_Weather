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
      children: <Widget>[
        _headerImage(),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[_weatherDescription(), _temperature()],
          ),
        )),
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
      image: NetworkImage(
          'https://image.freepik.com/free-vector/weather-pattern_1061-487.jpg'));
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    // ignore: prefer_const_literals_to_create_immutables
    children: <Widget>[
      Text('Вторник',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
      Divider(),
      Text(
        'Осадков не ожидается',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 15.0,
        ),
      )
    ],
  );
}

Row _temperature() {
  return Row(
    children: <Widget>[
      Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
    ],
  );
}
