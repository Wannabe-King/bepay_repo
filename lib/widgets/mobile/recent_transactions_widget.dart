import 'package:flutter/material.dart';

class TransactionItem {
  final String name;
  final String abbreviation;
  final String amount;
  final String value;
  final String percentChange;
  final Color color;
  final bool isPositiveChange;

  TransactionItem({
    required this.name,
    required this.abbreviation,
    required this.amount,
    required this.value,
    required this.percentChange,
    required this.color,
    this.isPositiveChange = true,
  });
}

class RecentTransactionsWidget extends StatelessWidget {
  final List<TransactionItem> transactions = [
    TransactionItem(
      name: 'Bitcoin',
      abbreviation: 'BTC',
      amount: '0',
      value: '\$43,870',
      percentChange: '+0.06%',
      color: Colors.orange,
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'TRON',
      abbreviation: 'TRON',
      amount: '0.25',
      value: '\$28.62',
      percentChange: '+0.08%',
      color: Colors.red,
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'Tether USD',
      abbreviation: 'USDT (ERC-20)',
      amount: '0',
      value: '\$1.0094',
      percentChange: '+0.03%',
      color: Colors.green,
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'Ethereum',
      abbreviation: 'ETH',
      amount: '0',
      value: '\$2,567',
      percentChange: '-0.08%',
      color: Colors.grey,
      isPositiveChange: false,
    ),
    TransactionItem(
      name: 'Toncoin',
      abbreviation: 'TON',
      amount: '0.25',
      value: '\$7.86',
      percentChange: '+0.01%',
      color: Colors.blue,
      isPositiveChange: true,
    ),
    TransactionItem(
      name: 'XRP',
      abbreviation: 'XRP',
      amount: '0.25',
      value: '\$0.53',
      percentChange: '+0.09%',
      color: Colors.black,
      isPositiveChange: true,
    ),
  ];

  RecentTransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          // Header row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See more',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
            ],
          ),

          // Transaction list
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              final transaction = transactions[index];
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                decoration: BoxDecoration(
                  border: (index < transactions.length - 1)
                      ? Border(
                          bottom: BorderSide(
                            color: Colors.grey.shade800,
                            width: 0.5,
                          ),
                        )
                      : null,
                ),
                child: Row(
                  children: [
                    // Crypto icon
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: transaction.color.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          transaction.abbreviation.substring(0, 1),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: transaction.color,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    // Name and value
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transaction.abbreviation,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            transaction.value,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Amount and percent change
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          transaction.amount,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          transaction.percentChange,
                          style: TextStyle(
                            fontSize: 14,
                            color: transaction.isPositiveChange
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ],
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
