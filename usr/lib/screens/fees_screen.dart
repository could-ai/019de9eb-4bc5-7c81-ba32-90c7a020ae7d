import 'package:flutter/material.dart';

class FeesScreen extends StatelessWidget {
  const FeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fees & Payments'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildFeeCategory(
            context,
            title: 'Tuition Fees (Annual)',
            items: [
              _FeeItem('Preschool & Kindergarten', '\$5,000'),
              _FeeItem('Elementary (Grades 1-5)', '\$6,500'),
              _FeeItem('Middle School (Grades 6-8)', '\$8,000'),
              _FeeItem('High School (Grades 9-12)', '\$10,000'),
            ],
          ),
          const SizedBox(height: 16),
          _buildFeeCategory(
            context,
            title: 'Other Mandatory Fees',
            items: [
              _FeeItem('Application Fee (One-time)', '\$100'),
              _FeeItem('Registration Fee (Annual)', '\$300'),
              _FeeItem('Technology Fee', '\$150'),
            ],
          ),
          const SizedBox(height: 16),
          _buildFeeCategory(
            context,
            title: 'Optional Services',
            items: [
              _FeeItem('School Transport (per term)', '\$400 - \$600'),
              _FeeItem('Meal Plan (Annual)', '\$800'),
              _FeeItem('Uniform Package', '\$150 - \$250'),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Payment Methods',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('We accept the following payment methods:'),
                  SizedBox(height: 8),
                  Text('• Online Bank Transfer (ACH)'),
                  Text('• Credit/Debit Card (Visa, MasterCard)'),
                  Text('• Cheque payable to "Springfield Academy"'),
                  SizedBox(height: 16),
                  Text(
                    'Installment plans (monthly or per term) are available upon request at the finance office.',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFeeCategory(BuildContext context, {required String title, required List<_FeeItem> items}) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: items.map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.name),
                    Text(item.amount, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _FeeItem {
  final String name;
  final String amount;
  _FeeItem(this.name, this.amount);
}
