import 'package:flutter/material.dart';
import 'dashboard_header.dart';
import 'info_card_widget.dart';
import 'bepay_card_widget.dart';
import 'account_balance_widget.dart';
import 'monthly_chart_widget.dart';
import 'completion_widget.dart';
import 'loyalty_card_widget.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121212),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with search and actions
            const DashboardHeader(),
            const SizedBox(height: 24),

            // Main content area
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top cards - Payouts & Turnover
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
                          icon: Icons.attach_money,
                          color: Colors.amber,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        flex: 2,
                        child: InfoCardWidget(
                          title: "Turnover",
                          subtitle: "Current Payouts",
                          amount: "\$ 3,877.10",
                          icon: Icons.sync_alt,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Account Info Section
                  const Text(
                    "My Account Info",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Balance and Chart Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Account Balance Column
                      const Expanded(flex: 4, child: AccountBalanceWidget()),
                      const SizedBox(width: 16),

                      // Monthly Chart Column
                      Expanded(
                        flex: 6,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Total Monthly Turnover",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$ 2,73,937",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
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
                              SizedBox(height: 16),
                              MonthlyChartWidget(),
                              SizedBox(height: 16),
                              CompletionWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Loyalty Programs
                  const Text(
                    "Loyalty Programs",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Loyalty Cards Grid
                  const Row(
                    children: [
                      Expanded(
                        child: LoyaltyCardWidget(
                          imageUrl: "https://via.placeholder.com/150/6c5ce7",
                          color: Colors.indigo,
                          title: "Loyalty program coming soon",
                          subtitle: "for the merchants",
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: LoyaltyCardWidget(
                          imageUrl: "https://via.placeholder.com/150/00b894",
                          color: Colors.teal,
                          title: "Loyalty program coming soon",
                          subtitle: "for the merchants",
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: LoyaltyCardWidget(
                          imageUrl: "https://via.placeholder.com/150/d63031",
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
