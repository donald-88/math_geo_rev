import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math' as math;

class MultipleChoiceQs extends ChangeNotifier implements CustomPainter {
  List<String> alphabet = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  bool hitTest(Offset position) => true;

  @override
  void paint(Canvas canvas, Size size) {

    double centerX = size.width / 2;
    double centerY = size.height / 2;

  late List<Offset> qPoints1 = [
    Offset(centerX - 100,centerY - 100),
    Offset(centerX - 400,centerY - 100),
    Offset(centerX - 450,centerY - 200)
  ];

  late List<Offset> Option1 = [
    Offset(centerX + 100,centerY - 100),
    Offset(centerX + 400,centerY - 100),
    Offset(centerX + 50,centerY - 200)
  ];

  late List<Offset> Option2 = [
    Offset(centerX + 100,centerY + 100),
    Offset(centerX + 400,centerY + 100),
    Offset(centerX + 50,centerY + 200)
  ];

  late List<Offset> Option3 = [
    Offset(centerX - 100,centerY + 100),
    Offset(centerX - 400,centerY + 100),
    Offset(centerX - 450,centerY + 200)
  ];




    Paint strokePaint = Paint();
    strokePaint.color = Colors.teal;
    strokePaint.style = PaintingStyle.stroke;
    strokePaint.strokeWidth = 3;

    Paint pointPaint = Paint();
    pointPaint.strokeWidth = 10;
    pointPaint.color = Colors.teal;
    pointPaint.strokeCap = StrokeCap.round;

    Path path = Path();
    path.addPolygon(qPoints1, true);
    canvas.drawPath(path, strokePaint);

    Path option1Path = Path();
    path.addPolygon(Option1, true);
    canvas.drawPath(path, strokePaint);

    Path option2Path = Path();
    path.addPolygon(Option2, true);
    canvas.drawPath(path, strokePaint);

    Path option3Path = Path();
    path.addPolygon(Option3, true);
    canvas.drawPath(path, strokePaint);

    var counter = 0;
    for (var point in qPoints1) {
      //debug logging the getSides() method

      // displaying point value
      TextSpan span = TextSpan(
          style: TextStyle(color: Colors.orange[800]),
          text: '${alphabet[counter]}');
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1);
      tp.layout();
      tp.paint(canvas, Offset(point.dx, point.dy));
      ++counter;
    }
    counter = 0;
    for (var point in Option1) {
      //debug logging the getSides() method

      // displaying point value
      TextSpan span = TextSpan(
          style: TextStyle(color: Colors.orange[800]),
          text: '${alphabet[counter]}');
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1);
      tp.layout();
      tp.paint(canvas, Offset(point.dx, point.dy));
      ++counter;
    }

    counter = 0;
    for (var point in Option2) {
      //debug logging the getSides() method

      // displaying point value
      TextSpan span = TextSpan(
          style: TextStyle(color: Colors.orange[800]),
          text: '${alphabet[counter]}');
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1);
      tp.layout();
      tp.paint(canvas, Offset(point.dx, point.dy));
      ++counter;
    }

    counter = 0;
    for (var point in Option3) {
      //debug logging the getSides() method

      // displaying point value
      TextSpan span = TextSpan(
          style: TextStyle(color: Colors.orange[800]),
          text: '${alphabet[counter]}');
      TextPainter tp = TextPainter(
          text: span,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 1);
      tp.layout();
      tp.paint(canvas, Offset(point.dx, point.dy));
      ++counter;
    }

      TextSpan labelA = TextSpan(
          style: TextStyle(color: Colors.orange[800]),
          text: 'A');
      TextPainter aPainter = TextPainter(
          text: labelA,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 2);
      aPainter.layout();
      aPainter.paint(canvas, Offset(centerX + 10, centerY - 50));


      TextSpan labelB = TextSpan(
          style: TextStyle(color: Colors.orange[800]),
          text: 'B');
      TextPainter bPainter = TextPainter(
          text: labelB,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 2);
      bPainter.layout();
      bPainter.paint(canvas, Offset(centerX + 10, centerY + 25));


      TextSpan labelC = TextSpan(
          style: TextStyle(color: Colors.orange[800]),
          text: 'C');
      TextPainter cPainter = TextPainter(
          text: labelC,
          textAlign: TextAlign.left,
          textDirection: TextDirection.ltr,
          textScaleFactor: 2);
      cPainter.layout();
      cPainter.paint(canvas, Offset(centerX - 30, centerY + 25));


    // indexer
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;

  @override
  // TODO: implement semanticsBuilder
  SemanticsBuilderCallback? get semanticsBuilder => null;
}
