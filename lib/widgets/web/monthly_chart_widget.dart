import 'package:flutter/material.dart';

class MonthlyChartWidget extends StatelessWidget {
  const MonthlyChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Months to display on chart
    final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];
    // Sample data values (height percentages)
    final values = [0.4, 0.7, 0.3, 0.5, 0.8, 0.4, 0.6];

    return Column(
      children: [
        // Chart period tabs
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPeriodTab("Week", isSelected: false),
            _buildPeriodTab("Month", isSelected: true),
            _buildPeriodTab("Year", isSelected: false),
            _buildPeriodTab("Custom", isSelected: false),
          ],
        ),
        const SizedBox(height: 24),

        // Chart bars
        SizedBox(
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(months.length, (index) {
              final isHighlighted = index == 4; // May is highlighted
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Value indicator for May
                  if (isHighlighted)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      margin: const EdgeInsets.only(bottom: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        "\$653.09",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  // Bar
                  Container(
                    width: 24,
                    height: 100 * values[index],
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(isHighlighted ? 0.9 : 0.3),
                          Colors.grey.withOpacity(isHighlighted ? 0.6 : 0.1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Month label
                  Text(
                    months[index],
                    style: TextStyle(
                      color: isHighlighted ? Colors.white : Colors.grey,
                      fontSize: 12,
                      fontWeight: isHighlighted
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget _buildPeriodTab(String text, {required bool isSelected}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isSelected ? Colors.white : Colors.transparent,
            width: 2,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
