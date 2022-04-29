import 'dart:ui';

import 'package:flutter/material.dart';

class DottedDivider extends StatelessWidget {
  final Line line;
  final Paint paint;
   DottedDivider({Key? key,required this.paint,required this.line}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: LinePainter(line:line , paintDef: paint),

    );
  }
}

class SolidLine extends Line {}
abstract class Line {}

class DotLine extends Line {
  final double gapSize;

  DotLine({this.gapSize=4.0});
}

class LinePainter extends CustomPainter {
  final Line line;
  final Paint paintDef;

   LinePainter({required this.line, required this.paintDef});

  @override
  void paint(Canvas canvas, Size size) {
    if (size == null || paintDef == null || paintDef.strokeWidth < 0.0) return;

    double width = size.width; // always axis is horizontal here

    switch (line.runtimeType) {
      case SolidLine:
        {
          _drawSolidLine(canvas, width, paintDef);
          break;
        }
      case DotLine:
        {
          if (paintDef.strokeWidth <= 0.0) paintDef.strokeWidth = 1.0;
          if (paintDef.strokeWidth >= width)
            return _drawSolidLine(canvas, width, paintDef);

          double gapSize = (line as DotLine).gapSize;
          if (gapSize >= width) return;

          _drawDottedLine(canvas, width, paintDef, gapSize);
          break;
        }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  void _drawSolidLine(Canvas canvas, double width, Paint paintDef) {
    double strokeVerticalOverflow = paintDef.strokeWidth / 2;
    double strokeHorizontalOverflow =
    paintDef.strokeCap == StrokeCap.butt ? 0.0 : strokeVerticalOverflow;

    canvas.drawLine(
      Offset(strokeHorizontalOverflow, strokeVerticalOverflow),
      Offset(width - strokeHorizontalOverflow, strokeVerticalOverflow),
      paintDef,
    );
  }

  void _drawDottedLine(
      Canvas canvas,
      double width,
      Paint paintDef,
      double gapSize,
      ) {
    double pointSize = paintDef.strokeWidth;
    double strokeVerticalOverflow = pointSize / 2;

    double jointSize = pointSize + gapSize;
    double leapSize = (width + gapSize) % jointSize;

    double position = strokeVerticalOverflow + leapSize / 2;
    List<Offset> points = [];

    // position + pointSize <= width + pointSize
    do {
      points.add(Offset(position, strokeVerticalOverflow));
    } while ((position += jointSize) <= width);

    canvas.drawPoints(PointMode.points, points, paintDef);
  }
}