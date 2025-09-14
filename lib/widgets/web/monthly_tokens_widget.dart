import 'package:flutter/material.dart';

class TokenItem {
  final String name;
  final String addedTime;
  final String amount;
  final double value;
  final Widget icon;

  TokenItem({
    required this.name,
    required this.addedTime,
    required this.amount,
    required this.value,
    required this.icon,
  });
}

class MonthlyTokensWidget extends StatelessWidget {
  const MonthlyTokensWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tokenItems = [
      TokenItem(
        name: 'Litecoin',
        addedTime: 'Added 2 days ago',
        amount: '0.25',
        value: 1190,
        icon: ClipOval(
          child: Container(
            color: const Color(0xFF345D9D),
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.monetization_on,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
      TokenItem(
        name: 'Ethereum Classic',
        addedTime: 'Added 5 days ago',
        amount: '0.25',
        value: 1190,
        icon: ClipOval(
          child: Container(
            color: const Color(0xFF3AB03E),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.toll, color: Colors.white, size: 16),
          ),
        ),
      ),
      TokenItem(
        name: 'H0dlcoin',
        addedTime: 'Added 6 days ago',
        amount: '0.25',
        value: 1190,
        icon: ClipOval(
          child: Container(
            color: const Color(0xFFE4A029),
            padding: const EdgeInsets.all(8),
            child: const Icon(
              Icons.currency_bitcoin,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
    ];

    return Container(
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Total Monthly Tokens',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$ 2,73,937',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 30),

          // Donut chart
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: CustomPaint(painter: DonutChartPainter()),
                ),
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Total Tokens',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      '46',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Table header
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Coins',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Text(
                'Amount',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Divider(height: 24),

          // Token items
          ...tokenItems.map((token) => _buildTokenItem(token)).toList(),
        ],
      ),
    );
  }

  Widget _buildTokenItem(TokenItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          // Icon and name
          Expanded(
            child: Row(
              children: [
                item.icon,
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      item.addedTime,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Amount and value
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                item.amount,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '\$${item.value.toStringAsFixed(0)}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DonutChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );

    const startAngle = -1.5; // Start from top (- pi/2)

    // Define segments with colors and sizes
    final segments = [
      {'color': const Color(0xFF345D9D), 'percent': 0.35}, // Blue
      {'color': const Color(0xFFF9D02A), 'percent': 0.30}, // Yellow
      {'color': const Color(0xFFE4A029), 'percent': 0.20}, // Orange
      {'color': const Color(0xFF3AB03E), 'percent': 0.15}, // Green
    ];

    double currentAngle = startAngle;

    // Draw each segment
    for (var segment in segments) {
      final sweepAngle = 2 * 3.14159 * (segment['percent'] as double);

      final paint = Paint()
        ..color = segment['color'] as Color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 15
        ..strokeCap = StrokeCap.round;

      canvas.drawArc(rect, currentAngle, sweepAngle, false, paint);

      currentAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
