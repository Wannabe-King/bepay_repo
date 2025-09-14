import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class BepayCardWidget extends StatelessWidget {
  const BepayCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: Decorations.card.copyWith(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF242E60), Color(0xFF1F2D78)],
        ),
      ),
      child: Column(
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
                child: const Icon(
                  Icons.credit_card,
                  color: Colors.white,
                  size: 24,
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
              Image.network(
                "https://via.placeholder.com/40/ffffff",
                height: 40,
                width: 40,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
