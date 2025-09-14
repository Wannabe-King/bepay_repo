import 'package:flutter/material.dart';

// This is a utility class to create a custom background for the BePay card
// In a real app, you would have an actual background image
class BepayCardBackground extends StatelessWidget {
  final Color color;

  const BepayCardBackground({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _BackgroundPainter(color: color),
      size: const Size(double.infinity, double.infinity),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  final Color color;

  _BackgroundPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    // Draw some decorative lines/circles
    for (int i = 0; i < 5; i++) {
      double offset = i * 20;
      canvas.drawCircle(
        Offset(size.width * 0.5, size.height * 0.5),
        60 + offset,
        paint,
      );
    }

    // Draw a pattern or logo-like shape
    final path = Path();
    path.moveTo(size.width * 0.3, size.height * 0.3);
    path.lineTo(size.width * 0.7, size.height * 0.3);
    path.lineTo(size.width * 0.7, size.height * 0.7);
    path.lineTo(size.width * 0.3, size.height * 0.7);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
