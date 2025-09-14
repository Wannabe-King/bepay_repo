import 'package:bepay/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'dashboard_header.dart';
import 'info_card_widget.dart';
import 'bepay_card_widget.dart';
import 'account_balance_widget.dart';
import 'monthly_chart_widget.dart';
import 'completion_widget.dart';
import 'loyalty_card_widget.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Header with search and actions
            const DashboardHeader(),
            const SizedBox(height: 24),

            // Main content area
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Expanded(flex: 3, child: BepayCardWidget()),
                                SizedBox(width: 16),
                                Expanded(
                                  flex: 2,
                                  child: InfoCardWidget(
                                    title: "Payouts",
                                    subtitle: "Current Payouts",
                                    amount: "\$ 3,877.10",
                                    img: 'assets/payout_icon.png',
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  flex: 2,
                                  child: InfoCardWidget(
                                    title: "Turnover",
                                    subtitle: "Current Payouts",
                                    amount: "\$ 3,877.10",
                                    img: 'assets/turnover_icon.png',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            // Account Info Section
                            const Text(
                              "My Account Info",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                // Account Balance Column
                                const Expanded(
                                  flex: 4,
                                  child: AccountBalanceWidget(),
                                ),
                                const SizedBox(width: 16),
                              ],
                            ),
                            SizedBox(height: 40),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LoyaltyCardWidget(
                                  imageUrl: "assets/loyality_1.png",
                                  color: Colors.indigo,
                                  title: "Loyalty program coming soon",
                                  subtitle: "for the merchants",
                                ),
                                LoyaltyCardWidget(
                                  imageUrl: "assets/loyality_2.png",
                                  color: Colors.indigo,
                                  title: "Loyalty program coming soon",
                                  subtitle: "for the merchants",
                                ),
                                LoyaltyCardWidget(
                                  imageUrl: "assets/loyality_3.png",
                                  color: Colors.indigo,
                                  title: "Loyalty program coming soon",
                                  subtitle: "for the merchants",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            // Monthly Chart Column
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 54,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.secondary,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Column(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Monthly Turnover",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "\$ 2,73,937",
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        "+\$2,937",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(height: 30),
                                  MonthlyChartWidget(),
                                  SizedBox(height: 30),
                                  CompletionWidget(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
