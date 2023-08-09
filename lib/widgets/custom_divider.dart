import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final Color color;
  final double thickness;
  final double dashWidth;
  final double dashSpace;

  CustomDivider({
    this.color = Colors.grey,
    this.thickness = 1.0,
    this.dashWidth = 10.0,
    this.dashSpace = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final dashes = (constraints.maxWidth / (dashWidth + dashSpace)).floor();
        final totalWidth = (dashes * dashWidth) + ((dashes - 1) * dashSpace);
        final startX = (constraints.maxWidth - totalWidth) / 2;

        return SizedBox(
          height: thickness,
          child: CustomPaint(
            painter: _CustomDividerPainter(color, thickness, dashWidth, dashSpace, dashes, startX),
          ),
        );
      },
    );
  }
}

class _CustomDividerPainter extends CustomPainter {
  final Color color;
  final double thickness;
  final double dashWidth;
  final double dashSpace;
  final int dashes;
  final double startX;

  _CustomDividerPainter(
      this.color,
      this.thickness,
      this.dashWidth,
      this.dashSpace,
      this.dashes,
      this.startX,
      );

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness;

    for (int i = 0; i < dashes; i++) {
      final double x = startX + (i * (dashWidth + dashSpace));
      canvas.drawLine(
        Offset(x, size.height / 2),
        Offset(x + dashWidth, size.height / 2),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_CustomDividerPainter oldDelegate) => false;
}
