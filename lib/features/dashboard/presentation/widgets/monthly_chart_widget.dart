import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class MonthlyChartWidget extends StatelessWidget {
  const MonthlyChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This is a simple chart representation
    // In a real app, you would use a charting library like fl_chart
    return Container(
      height: 200,
      child: Stack(
        children: [
          // Chart bars
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ), // Add padding for the tooltip
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildChartBar("Jan", 0.3, false),
                _buildChartBar("Feb", 0.6, false),
                _buildChartBar("Mar", 0.45, false),
                _buildChartBar("Apr", 0.7, false),
                _buildChartBar("May", 0.9, true),
                _buildChartBar("Jun", 0.5, false),
                _buildChartBar("Jul", 0.65, false),
              ],
            ),
          ),

          // Value indicator for selected bar
          Positioned(
            right: 100, // Adjusted for better position
            top: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
                border: Border.all(
                  color: AppColors.primary.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "\$653.09",
                    style: TextStyles.subtitle2.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChartBar(String month, double height, bool isSelected) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 30,
          height: 140 * height, // Adjusted height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: isSelected
                  ? [
                      AppColors.primary,
                      AppColors.primary.withOpacity(0.7),
                      AppColors.primary.withOpacity(0.5),
                    ]
                  : [
                      AppColors.secondary.withOpacity(0.7),
                      AppColors.secondary.withOpacity(0.4),
                      AppColors.secondary.withOpacity(0.2),
                    ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          month,
          style: TextStyles.caption.copyWith(
            color: isSelected ? AppColors.primary : AppColors.textSecondary,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
