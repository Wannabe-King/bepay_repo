import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final IconData icon;
  final Color color;

  const InfoCardWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.md),
      decoration: Decorations.card,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(title, style: TextStyles.heading3),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: color, size: 24),
              ),
            ],
          ),
          const SizedBox(height: Spacing.sm),
          Text(
            subtitle,
            style: TextStyles.body2.copyWith(color: AppColors.textSecondary),
          ),
          const SizedBox(height: Spacing.md),
          Text(amount, style: TextStyles.heading1),
        ],
      ),
    );
  }
}
