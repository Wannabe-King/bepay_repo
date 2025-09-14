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
      child: Text("fe"),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     // Top icon
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       decoration: BoxDecoration(
      //         color: AppColors.secondary,
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //       child: Icon(icon, color: color, size: 24),
      //     ),
      //     const SizedBox(height: Spacing.sm),

      //     // Title
      //     Text(title, style: TextStyles.heading3),
      //     const SizedBox(height: Spacing.sm),

      //     // Subtitle
      //     Text(
      //       subtitle,
      //       style: TextStyles.body2.copyWith(color: AppColors.textSecondary),
      //     ),
      //     const SizedBox(height: Spacing.md),

      //     // Amount
      //     Text(amount, style: TextStyles.heading2),
      //   ],
      // ),
    );
  }
}
