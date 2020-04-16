import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.cyan;
  Color _backgroundColor = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambiarForma,
        backgroundColor: _backgroundColor,
        elevation: 0.0,
      ),
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        title: Text('Animated container'),
        elevation: 0.0,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 700),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 0.7);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
      _backgroundColor = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 0.7);
    });
  }
}
