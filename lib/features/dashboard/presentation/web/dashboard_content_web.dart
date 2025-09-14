import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../widgets/info_card_widget.dart';
import '../../widgets/bepay_card_widget.dart';
import '../../widgets/account_balance_widget.dart';
import '../../widgets/monthly_chart_widget.dart';
import '../../widgets/completion_widget.dart';
import '../../widgets/loyalty_card_widget.dart';
import 'dashboard_header_web.dart';

/// Main content for the web dashboard
class DashboardContentWeb extends StatelessWidget {
  const DashboardContentWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with search and actions
            const DashboardHeaderWeb(),
            const SizedBox(height: Spacing.lg),

            // Main content area
            Container(
              padding: const EdgeInsets.all(Spacing.lg),
              decoration: Decorations.card,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top cards - Payouts & Turnover
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
        ),
      ),
    );
  }
}
