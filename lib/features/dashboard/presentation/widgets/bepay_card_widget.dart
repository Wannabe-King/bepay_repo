import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/theme/app_theme.dart';

class BepayCardWidget extends StatelessWidget {
  const BepayCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF242E60), Color(0xFF1F2D78)],
        ),
      ),
      child: Stack(
        children: [
          // Background pattern
          Positioned.fill(
            child: _buildBackgroundPattern(),
          ),
          
          // Card content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card Header
              Row(
                children: [
                  Text(
                    "BePay Account",
                    style: TextStyles.heading3.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      'assets/BepayLogo.svg',
                      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.md),

              // Card Number
              Text(
                "•••• •••• •••• 4242",
                style: TextStyles.heading2.copyWith(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: Spacing.lg),

              // Card Details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CARD HOLDER",
                        style: TextStyles.caption.copyWith(color: Colors.white70),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "John Doe",
                        style: TextStyles.subtitle1.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EXPIRES",
                        style: TextStyles.caption.copyWith(color: Colors.white70),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "12/25",
                        style: TextStyles.subtitle1.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    'assets/BepayLogo.svg',
                    height: 40,
                    width: 40,
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundPattern() {
    return CustomPaint(
      painter: _BackgroundPainter(),
      size: Size.infinite,
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.05)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    // Draw some decorative circles
    for (int i = 0; i < 3; i++) {
      double offset = i * 30;
      canvas.drawCircle(
        Offset(size.width * 0.8, size.height * 0.3),
        40 + offset,
        paint,
      );
    }
    
    // Draw some lines
    canvas.drawLine(
      Offset(size.width * 0.1, size.height * 0.8),
      Offset(size.width * 0.3, size.height * 0.8),
      paint,
    );
    
    canvas.drawLine(
      Offset(size.width * 0.4, size.height * 0.8),
      Offset(size.width * 0.6, size.height * 0.8),
      paint,
    );
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}