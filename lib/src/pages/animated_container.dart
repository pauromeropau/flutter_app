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
      floatingActionButton: Container(
        child: FloatingActionButton(
          child: Icon(Icons.shuffle,
              size: 40, color: Color.fromRGBO(255, 255, 255, 0.5)),
          onPressed: _cambiarForma,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
