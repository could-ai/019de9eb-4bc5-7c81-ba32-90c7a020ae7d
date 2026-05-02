import 'package:flutter/material.dart';

class AdmissionsScreen extends StatelessWidget {
  const AdmissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admissions'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSectionCard(
            context,
            title: 'Application Process',
            icon: Icons.app_registration,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildStep(context, '1', 'Submit online application form'),
                _buildStep(context, '2', 'Pay the application fee'),
                _buildStep(context, '3', 'Schedule entrance assessment'),
                _buildStep(context, '4', 'Attend family interview'),
                _buildStep(context, '5', 'Receive decision letter'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildSectionCard(
            context,
            title: 'Requirements & Documents',
            icon: Icons.folder_shared,
            content: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Birth Certificate or Passport'),
                Text('• Previous school records (last 2 years)'),
                Text('• Immunization records'),
                Text('• 2 Passport-sized photographs'),
                Text('• Teacher recommendation letter'),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildSectionCard(
            context,
            title: 'Age Limits',
            icon: Icons.child_care,
            content: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('• Preschool: 3-4 years old'),
                Text('• Kindergarten: 5 years old by Sep 1st'),
                Text('• Elementary: 6-11 years old'),
                Text('• Middle School: 12-14 years old'),
                Text('• High School: 15-18 years old'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(16),
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
            ),
            child: const Text('Apply Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required IconData icon, required Widget content}) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.secondary),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(height: 24),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildStep(BuildContext context, String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
