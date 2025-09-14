import 'package:flutter/material.dart';

class MobileChart extends StatelessWidget {
  const MobileChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Total Monthly Transactions",
            style: TextStyle(
              fontSize: 12,
              // fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "\$ 2,73,937",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),

          // Time period selector
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTimeSelector("Day", false),
              _buildTimeSelector("Week", false),
              _buildTimeSelector("Month", true),
              _buildTimeSelector("Year", false),
            ],
          ),
          const SizedBox(height: 24),

          // Chart
          SizedBox(
            height: 180,
            child: CustomPaint(
              size: const Size(double.infinity, 180),
              painter: LineChartPainter(),
            ),
          ),

          // X-axis months
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Jan", style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text("Feb", style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text("Mar", style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text("Apr", style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text(
                "May",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Jun", style: TextStyle(color: Colors.grey, fontSize: 12)),
              Text("Jul", style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSelector(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

class LineChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint linePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final Paint highlightPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final Paint dotPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Sample data points (x, y) normalized to the canvas size
    final points = [
      Offset(0, size.height * 0.6),
      Offset(size.width * 0.15, size.height * 0.75),
      Offset(size.width * 0.3, size.height * 0.4),
      Offset(size.width * 0.45, size.height * 0.55),
      Offset(size.width * 0.6, size.height * 0.2), // Highest point (May)
      Offset(size.width * 0.75, size.height * 0.45),
      Offset(size.width * 0.9, size.height * 0.65),
    ];

    // Draw the line
    final path = Path();
    path.moveTo(points.first.dx, points.first.dy);

    for (int i = 0; i < points.length - 1; i++) {
      // Use quadratic bezier curves for smoother lines
      final controlPoint = Offset(
        (points[i].dx + points[i + 1].dx) / 2,
        points[i].dy,
      );

      path.quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        points[i + 1].dx,
        points[i + 1].dy,
      );
    }

    canvas.drawPath(path, linePaint);

    // Draw the highlighted point (May)
    final highlightPoint = points[4];
    canvas.drawCircle(highlightPoint, 5, dotPaint);

    // Draw the value indicator above the highlighted point
    const TextSpan textSpan = TextSpan(
      text: '\$653.09',
      style: TextStyle(color: Colors.black, fontSize: 12),
    );

    final TextPainter textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(highlightPoint.dx - textPainter.width / 2, highlightPoint.dy - 20),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
