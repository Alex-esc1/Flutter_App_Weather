// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
            actions: [
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
            children: [
              _weatherDescription(),
              Divider(),
              _temperature(),
              Divider(),
              _temperatureForecast(),
              Divider(),
              _footerRating(),
            ],
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
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "15 градусов",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "Деревня Минск",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
      spacing: 10.0,
      children: List.generate(8, (int index) {
        return Chip(
          label: Text(
            '${index + 20}C',
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          avatar: Icon(
            Icons.wb_cloudy,
            color: Colors.white,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          side: BorderSide(color: Colors.green),
          backgroundColor: Colors.blue,
        );
      }));
}

Row _footerRating() {
  var star = Row(
    children: [
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.yellow,
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.grey,
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.grey,
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.grey,
      ),
      Icon(
        Icons.star,
        size: 15.0,
        color: Colors.grey,
      ),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        'Точность прогноза',
        style: TextStyle(fontSize: 15.0),
      ),
      star,
    ],
  );
}
