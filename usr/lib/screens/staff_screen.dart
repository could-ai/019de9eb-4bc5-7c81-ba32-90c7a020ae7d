import 'package:flutter/material.dart';

class StaffScreen extends StatelessWidget {
  const StaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About & Staff'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Our Leadership & Admin Team',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildStaffCard(
            context,
            name: 'Dr. Eleanor Vance',
            role: 'School Principal',
            description: 'Oversees all academic and administrative operations. 20+ years of experience in educational leadership.',
            icon: Icons.person,
          ),
          _buildStaffCard(
            context,
            name: 'Administration Office',
            role: 'General Inquiries & Records',
            description: 'Handles student records, general queries, and daily school operations.',
            icon: Icons.domain,
          ),
          _buildStaffCard(
            context,
            name: 'Finance Office',
            role: 'Billing & Payments',
            description: 'Manages tuition payments, financial aid, and vendor relations.',
            icon: Icons.account_balance_wallet,
          ),
          _buildStaffCard(
            context,
            name: 'Admissions Office',
            role: 'Enrollment & Tours',
            description: 'Guides prospective families through the application and enrollment process.',
            icon: Icons.how_to_reg,
          ),
          _buildStaffCard(
            context,
            name: 'Transport Coordinator',
            role: 'Bus Routes & Safety',
            description: 'Coordinates all school bus routes, schedules, and ensures student safety during transit.',
            icon: Icons.directions_bus,
          ),
        ],
      ),
    );
  }

  Widget _buildStaffCard(BuildContext context, {required String name, required String role, required String description, required IconData icon}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              foregroundColor: Theme.of(context).colorScheme.primary,
              child: Icon(icon, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(role, style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 8),
                  Text(description, style: const TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
