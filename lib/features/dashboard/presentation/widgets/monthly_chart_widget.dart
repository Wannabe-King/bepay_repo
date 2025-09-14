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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildChartBar("Jan", 0.3, true),
          _buildChartBar("Feb", 0.5, false),
          _buildChartBar("Mar", 0.7, false),
          _buildChartBar("Apr", 0.4, false),
          _buildChartBar("May", 0.6, false),
          _buildChartBar("Jun", 0.8, false),
          _buildChartBar("Jul", 0.9, false),
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
          height: 160 * height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: isSelected
                  ? [AppColors.primary, AppColors.primary.withOpacity(0.7)]
                  : [
                      AppColors.secondary.withOpacity(0.7),
                      AppColors.secondary.withOpacity(0.3),
                    ],
            ),
          ),
        ),
        const SizedBox(height: 8),
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
