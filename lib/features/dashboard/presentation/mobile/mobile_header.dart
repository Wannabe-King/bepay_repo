import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Spacing.md,
        vertical: Spacing.sm,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hi, John!", style: TextStyles.heading2),
              const SizedBox(height: 4),
              Text(
                "Welcome back",
                style: TextStyles.body2.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primary.withOpacity(0.1),
            child: Text(
              "JD",
              style: TextStyles.subtitle1.copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
