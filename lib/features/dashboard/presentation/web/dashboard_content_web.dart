import 'package:bepay/features/dashboard/presentation/widgets/account_balance_widget.dart';
import 'package:bepay/features/dashboard/presentation/widgets/bepay_card_widget.dart';
import 'package:bepay/features/dashboard/presentation/widgets/completion_widget.dart';
import 'package:bepay/features/dashboard/presentation/widgets/info_card_widget.dart';
import 'package:bepay/features/dashboard/presentation/widgets/loyalty_card_widget.dart';
import 'package:bepay/features/dashboard/presentation/widgets/monthly_chart_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
// import '../../../../core/theme/background_pattern.dart';
import 'dashboard_header_web.dart';

/// Main content for the web dashboard
class DashboardContentWeb extends StatelessWidget {
  const DashboardContentWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background with pattern
        // Positioned.fill(
        //   child: CustomPaint(
        //     painter: BackgroundPatternPainter(),
        //     child: Container(color: AppColors.background.withOpacity(0.9)),
        //   ),
        // ),
        
        // Main content
        SingleChildScrollView(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with search and actions
              const DashboardHeaderWeb(),
              const SizedBox(height: Spacing.lg),

              // Top cards row - BePay Card, Payouts & Turnover
              const Row(
                children: [
                  Expanded(flex: 3, child: BepayCardWidget()),
                  SizedBox(width: Spacing.md),
                  Expanded(
                    flex: 2,
                    child: InfoCardWidget(
                      title: "Payouts",
                      subtitle: "Current Payouts",
                      amount: "\$ 3,877.10",
                      icon: Icons.attach_money,
                      color: AppColors.warning,
                    ),
                  ),
                  SizedBox(width: Spacing.md),
                  Expanded(
                    flex: 2,
                    child: InfoCardWidget(
                      title: "Turnover",
                      subtitle: "Current Payouts",
                      amount: "\$ 3,877.10",
                      icon: Icons.sync_alt,
                      color: AppColors.info,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Spacing.lg),

              // Account Info Section
              Text("My Account Info", style: TextStyles.heading3),
              const SizedBox(height: Spacing.md),

              // Balance and Chart Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Account Balance Column
                  const Expanded(flex: 4, child: AccountBalanceWidget()),
                  const SizedBox(width: Spacing.md),

                  // Monthly Chart Column
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: const EdgeInsets.all(Spacing.md),
                      decoration: Decorations.card,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Total Monthly Turnover",
                                style: TextStyles.heading3,
                              ),
                              Spacer(),
                              Text(
                                "\$ 2,73,937",
                                style: TextStyles.heading2,
                              ),
                              SizedBox(width: Spacing.sm),
                              Text(
                                "+\$2,937",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.success,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Spacing.md),
                          MonthlyChartWidget(),
                          SizedBox(height: Spacing.md),
                          CompletionWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: Spacing.lg),

              // Loyalty Programs
              Text("Loyalty Programs", style: TextStyles.heading3),
              const SizedBox(height: Spacing.md),

              // Loyalty Cards Grid
              const Row(
                children: [
                  Expanded(
                    child: LoyaltyCardWidget(
                      imageUrl: "assets/loyality_1.png",
                      color: Colors.indigo,
                      title: "Loyalty program coming soon",
                      subtitle: "for the merchants",
                    ),
                  ),
                  SizedBox(width: Spacing.md),
                  Expanded(
                    child: LoyaltyCardWidget(
                      imageUrl: "assets/loyality_2.png",
                      color: Colors.teal,
                      title: "Loyalty program coming soon",
                      subtitle: "for the merchants",
                    ),
                  ),
                  SizedBox(width: Spacing.md),
                  Expanded(
                    child: LoyaltyCardWidget(
                      imageUrl: "assets/loyality_3.png",
                      color: Colors.deepOrange,
                      title: "Loyalty program coming soon",
                      subtitle: "for the merchants",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}