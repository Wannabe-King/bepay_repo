import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';

/// Header component for the web dashboard
class DashboardHeaderWeb extends StatelessWidget {
  const DashboardHeaderWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Dashboard Title
        Text(AppStrings.dashboardTitle, style: TextStyles.heading2),
        const SizedBox(width: Spacing.lg),

        // Search Box
        Expanded(
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: Spacing.md),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Icon(Icons.search, color: AppColors.textSecondary),
                const SizedBox(width: Spacing.sm),
                Text(
                  AppStrings.searchPlaceholder,
                  style: TextStyle(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: Spacing.lg),

        // Sandbox Toggle
        Row(
          children: [
            const Text(
              "Sandbox",
              style: TextStyle(color: AppColors.textPrimary),
            ),
            const SizedBox(width: Spacing.sm),
            Switch(
              value: true,
              onChanged: (_) {},
              activeColor: AppColors.textPrimary,
            ),
          ],
        ),
        const SizedBox(width: Spacing.lg),

        // Notification Icon
        Container(
          padding: const EdgeInsets.all(Spacing.sm),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade800),
          ),
          child: const Icon(
            Icons.notifications_outlined,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(width: Spacing.md),

        // Withdraw Button
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.upload_outlined, color: Colors.black),
          label: const Text(
            "Withdraw",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
