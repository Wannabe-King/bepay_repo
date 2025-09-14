import 'package:bepay/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class TransactionItem {
  final String token;
  final String symbol;
  final String price;
  final double change;
  final String marketCap;
  final Widget icon;

  TransactionItem({
    required this.token,
    required this.symbol,
    required this.price,
    required this.change,
    required this.marketCap,
    required this.icon,
  });
}

class PaymentsWidget extends StatelessWidget {
  const PaymentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionItem(
        token: 'BNB',
        symbol: 'BNB',
        price: '\$386.75',
        change: 2.45,
        marketCap: '\$59,326M',
        icon: Image.asset('assets/btc.png', width: 32, height: 32),
      ),
      TransactionItem(
        token: 'Ethereum',
        symbol: 'ETH',
        price: '\$2,312.35',
        change: 3.74,
        marketCap: '\$278,593M',
        icon: Image.asset('assets/eth.png', width: 32, height: 32),
      ),
      TransactionItem(
        token: 'Bitcoin',
        symbol: 'BTC',
        price: '\$41,263.00',
        change: 1.25,
        marketCap: '\$784,393M',
        icon: Image.asset('assets/xrp.png', width: 32, height: 32),
      ),
      TransactionItem(
        token: 'Terra',
        symbol: 'LUNA',
        price: '\$0.82',
        change: -5.74,
        marketCap: '\$345M',
        icon: Image.asset('assets/tron.png', width: 32, height: 32),
      ),
      TransactionItem(
        token: 'Cardano',
        symbol: 'ADA',
        price: '\$0.42',
        change: 4.32,
        marketCap: '\$14,824M',
        icon: Image.asset('assets/usdt.png', width: 32, height: 32),
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.secondary),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Payments',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Table header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Token',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Symbol',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Last Price',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
                Expanded(
                  child: Text(
                    '24H Change',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Market Cap',
                    style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Divider(height: 1),

          // Transaction items
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  children: [
                    // Token with icon
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          transaction.icon,
                          const SizedBox(width: 8),
                          Text(
                            transaction.token,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Symbol
                    Expanded(
                      child: Text(
                        transaction.symbol,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Price
                    Expanded(
                      child: Text(
                        transaction.price,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Change
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: transaction.change >= 0
                                  ? Colors.green.withOpacity(0.1)
                                  : Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  transaction.change >= 0
                                      ? Icons.arrow_upward
                                      : Icons.arrow_downward,
                                  color: transaction.change >= 0
                                      ? Colors.green
                                      : Colors.red,
                                  size: 12,
                                ),
                                Text(
                                  '${transaction.change.abs()}%',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: transaction.change >= 0
                                        ? Colors.green
                                        : Colors.red,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Market Cap
                    Expanded(
                      child: Text(
                        transaction.marketCap,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
