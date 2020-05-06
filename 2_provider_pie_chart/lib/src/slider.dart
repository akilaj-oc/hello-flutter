import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.5;

  void _onValuChanged(double value) {
    setState(() => _value = value);
  }

  @override
  Widget build(BuildContext context) {
    return Slider(value: _value, onChanged: _onValuChanged);
  }
}
