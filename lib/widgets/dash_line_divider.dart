import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  final Color color;
  final double thickness;
  final double dashWidth;
  final double dashSpace;
  final int dashes;

  DashLine({
    this.color = Colors.grey,
    this.thickness = 2.0,
    this.dashWidth = 10.0,
    this.dashSpace = 5.0,
    this.dashes = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: thickness,
      child: CustomPaint(
        painter: _CustomDividerPainter(color, thickness, dashWidth, dashSpace, dashes),
      ),
    );
  }
}

class _CustomDividerPainter extends CustomPainter {
  final Color color;
  final double thickness;
  final double dashWidth;
  final double dashSpace;
  final int dashes;

  _CustomDividerPainter(
      this.color,
      this.thickness,
      this.dashWidth,
      this.dashSpace,
      this.dashes,
      );

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    final double totalDashWidth = dashWidth + dashSpace;
    final double totalWidth = totalDashWidth * dashes;

    final double startX = (size.width - totalWidth) / 2;

    for (int i = 0; i < dashes; i++) {
      final double x = startX + (i * totalDashWidth);
      canvas.drawLine(Offset(x, size.height / 2), Offset(x + dashWidth, size.height / 2), paint);
    }
  }

  @override
  bool shouldRepaint(_CustomDividerPainter oldDelegate) => false;
}
