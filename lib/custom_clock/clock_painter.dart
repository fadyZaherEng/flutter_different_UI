import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ClockPainter extends CustomPainter {
  static double oneDegreeInRadian = 0.01745329252;

  final _secondsPointerColor = HexColor("#206080");
  final _otherPaintersColor = HexColor("#2060C0");

  Paint? _innerCircle;
  Paint? _innerCircle1;
  Paint? _outerArc;
  Paint? _outerArc1;

  // Paint? _hoursLine;
  // Paint? _minutesLine;
  Paint? _secondsLine;

  // Paint? _innerCenterCicle;
  // Paint? _outerCenterCicle;

  ClockPainter() {
    _innerCircle = Paint()
      ..color = HexColor("#2060C0")
      ..strokeWidth = 15
      ..style = PaintingStyle.fill;
    _innerCircle1 = Paint()
      ..color = HexColor("#2045C0")
      ..strokeWidth = 15
      ..style = PaintingStyle.fill;

    _outerArc = Paint()
      ..color = _otherPaintersColor
      ..strokeWidth = 50
      ..style = PaintingStyle.stroke;
    _outerArc1 = Paint()
      ..color = Colors.grey
      ..strokeWidth = 15
      ..style = PaintingStyle.stroke;

    _secondsLine = Paint()
      ..color = Colors.white
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // _minutesLine = Paint()
    //   ..color = _otherPaintersColor
    //   ..strokeWidth = 4
    //   ..style = PaintingStyle.stroke
    //   ..strokeCap = StrokeCap.round;
    //
    // _hoursLine = Paint()
    //   ..color = _otherPaintersColor
    //   ..strokeWidth = 4
    //   ..style = PaintingStyle.stroke
    //   ..strokeCap = StrokeCap.round;
    //
    // _innerCenterCicle = Paint()
    //   ..color = _secondsPointerColor
    //   ..style = PaintingStyle.fill
    //   ..strokeCap = StrokeCap.round;
    //
    // _outerCenterCicle = Paint()
    //   ..color = _otherPaintersColor
    //   ..style = PaintingStyle.fill
    //   ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final _centerX = size.width / 2;
    final _centerY = size.height / 2;
    final _center = Offset(_centerX, _centerY);
    final _radius = min(_centerX, _centerY);
    final _circleCircunferenceSize = pi * 2;

    final _now = DateTime.now();
    //
    // final _hourLineWidth = (_radius / 2);
    // final _hourRadians = degreeToRadian((360 / 12) * _now.hour);
    //
    // final _minuteLineWidth = (_radius / 1.25);
    // final _minuteRadians = degreeToRadian((360 / 60) * _now.minute);

    final _secondsLineWith = (_radius / 1.25);
    final _secondsRadians = degreeToRadian((360 / 60) * 15);

    canvas.drawArc(
      Rect.fromCenter(
        center: _center,
        width: size.width,
        height: size.height,
      ),
      0,
      _circleCircunferenceSize,
      false,
      _outerArc!,
    );

    canvas.drawArc(
      Rect.fromCenter(
        center: _center,
        width: size.width*1.5,
        height: size.height*1.5,
      ),
      0,
      _circleCircunferenceSize,
      false,
      _outerArc1!,
    );
    final _centerX2 = size.width ;
    final _centerY2 = size.height ;
    final _center2 = Offset(_centerX, _centerY);
    final _radius2 = min(_centerX, _centerY);
    final _circleCircunferenceSize2 = pi * 2;
    canvas.drawCircle(
      _center2,
      _radius2,
      _innerCircle1!,
    );


    // canvas.drawLine(
    //   Offset(
    //     _centerX + cos(_hourRadians) * _hourLineWidth,
    //     _centerX + sin(_hourRadians) * _hourLineWidth,
    //   ),
    //   _center,
    //   _hoursLine!,
    // );
    //
    // canvas.drawLine(
    //   Offset(
    //     _centerX + cos(_minuteRadians) * _minuteLineWidth,
    //     _centerX + sin(_minuteRadians) * _minuteLineWidth,
    //   ),
    //   _center,
    //   _minutesLine!,
    // );
    //
    // canvas.drawCircle(_center, 4, _outerCenterCicle!);
    // canvas.drawCircle(_center, 3, _innerCenterCicle!);

    canvas.drawLine(
      Offset(
        _centerX + cos(_secondsRadians) * _secondsLineWith*2,
        _centerX + sin(_secondsRadians) * _secondsLineWith*2,
      ),
      Offset(90,180),
      _secondsLine!,
    );
  }

  double degreeToRadian(double degree) => oneDegreeInRadian * degree;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}